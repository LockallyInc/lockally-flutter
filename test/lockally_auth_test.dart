import 'package:test/test.dart';
import 'package:lockally/src/auth/pkce.dart';
import 'package:lockally/src/auth/retry_policy.dart';
import 'package:lockally/src/auth/lockally_exception.dart';
import 'package:lockally/src/auth/token_provider.dart';
import 'package:lockally/src/auth/token_store.dart';
import 'package:lockally/src/auth/lockally_oauth.dart';
import 'package:lockally/src/auth/paginate.dart';

void main() {
  group('PKCE', () {
    test('challenge matches RFC 7636 Appendix B vector', () {
      expect(
        Pkce.challengeFor('dBjftJeZ4CVP-mB92K27uhbUJU1p1r_wW1gFWFOEjXk'),
        'E9Melhoa2OwvFrEMTJguCHaoeK1t8URWbuGJSstw-cM',
      );
    });
    test('generate produces a verifiable pair', () {
      final p = Pkce.generate();
      expect(p.verifier.length, greaterThanOrEqualTo(43));
      expect(p.method, 'S256');
      expect(p.challenge, Pkce.challengeFor(p.verifier));
      expect(RegExp(r'[+/=]').hasMatch(p.verifier), isFalse);
    });
  });

  group('RetryPolicy', () {
    const policy = RetryPolicy();
    test('retries on 429/5xx/network', () {
      expect(policy.shouldRetry(attempt: 1, statusCode: 429, isNetworkError: false), isTrue);
      expect(policy.shouldRetry(attempt: 1, statusCode: 503, isNetworkError: false), isTrue);
      expect(policy.shouldRetry(attempt: 1, isNetworkError: true), isTrue);
    });
    test('no retry on 4xx/2xx or past maxRetries', () {
      expect(policy.shouldRetry(attempt: 1, statusCode: 400, isNetworkError: false), isFalse);
      expect(policy.shouldRetry(attempt: 4, statusCode: 500, isNetworkError: false), isFalse);
    });
    test('backoff ceiling grows and caps', () {
      expect(policy.backoffCeiling(1).inMilliseconds, 200);
      expect(policy.backoffCeiling(2).inMilliseconds, 400);
      expect(policy.backoffCeiling(20).inMilliseconds, 20000);
    });
    test('full jitter bounds and Retry-After', () {
      expect(policy.delay(2, jitter: 0).inMilliseconds, 0);
      expect(policy.delay(2, jitter: 1).inMilliseconds, 400);
      expect(policy.delay(1, retryAfter: const Duration(seconds: 5), jitter: 0).inSeconds, 5);
    });
    test('parseRetryAfter', () {
      expect(RetryPolicy.parseRetryAfter('3'), const Duration(seconds: 3));
      expect(RetryPolicy.parseRetryAfter(null), isNull);
      expect(RetryPolicy.parseRetryAfter('not-a-number'), isNull);
    });
  });

  group('LockallyException', () {
    test('parses problem+json', () {
      final e = LockallyException.fromResponse(status: 403, body: {
        'detail': 'missing scope: messages:send',
        'code': 'insufficient_scope',
        'request_id': 'req_123',
      });
      expect(e.status, 403);
      expect(e.code, 'insufficient_scope');
      expect(e.message, 'missing scope: messages:send');
      expect(e.requestId, 'req_123');
      expect(e.isRetryable, isFalse);
    });
    test('falls back without body', () {
      final e = LockallyException.fromResponse(status: 500, requestId: 'req_x');
      expect(e.message, 'HTTP 500');
      expect(e.isRetryable, isTrue);
    });
  });

  group('BackendTokenProvider', () {
    test('parseGrant handles expires_at and expires_in', () {
      expect(BackendTokenProvider.parseGrant({'token': 't1', 'expires_at': '2099-01-01T00:00:00Z'}).token, 't1');
      final b = BackendTokenProvider.parseGrant({'token': 't2', 'expires_in': 300});
      expect(b.expiresAt.isAfter(DateTime.now()), isTrue);
    });
    test('caches until expiry', () async {
      var calls = 0;
      final p = BackendTokenProvider(() async {
        calls++;
        return Grant('tok_$calls', DateTime.now().add(const Duration(hours: 1)));
      });
      expect(await p.token(), await p.token());
      expect(calls, 1);
    });
    test('static warns nothing for test key', () async {
      expect(await StaticTokenProvider('lk_test_x').token(), 'lk_test_x');
    });
  });

  group('OAuth', () {
    test('authorizationUrl includes PKCE params', () {
      final p = OAuthPkceProvider(OAuthConfig(clientId: 'app_1', redirectUri: 'myapp://cb', scopes: ['inboxes:read']));
      final url = p.authorizationUrl('CHALLENGE', 'st');
      expect(url.queryParameters['response_type'], 'code');
      expect(url.queryParameters['client_id'], 'app_1');
      expect(url.queryParameters['code_challenge'], 'CHALLENGE');
      expect(url.queryParameters['code_challenge_method'], 'S256');
      expect(url.queryParameters['scope'], 'inboxes:read');
    });
    test('token without session throws', () {
      final p = OAuthPkceProvider(OAuthConfig(clientId: 'a', redirectUri: 'x://cb'), store: InMemoryTokenStore());
      expect(p.token(), throwsStateError);
    });
  });

  group('TokenStore + paginate', () {
    test('in-memory round trip', () async {
      final s = InMemoryTokenStore();
      expect(await s.read('k'), isNull);
      await s.write('k', 'v');
      expect(await s.read('k'), 'v');
      await s.delete('k');
      expect(await s.read('k'), isNull);
    });
    test('paginate walks all pages', () async {
      final pages = [
        Page([1, 2], 'c1'),
        Page([3, 4], 'c2'),
        Page([5], null),
      ];
      var i = 0;
      final all = await collect<int>((_) async => pages[i++]);
      expect(all, [1, 2, 3, 4, 5]);
    });
    test('paginate loop guard throws on unbounded unique cursors', () async {
      var n = 0;
      expect(
        collect<int>((_) async => Page([0], 'c${n++}'), maxPages: 3),
        throwsStateError,
      );
    });
  });
}

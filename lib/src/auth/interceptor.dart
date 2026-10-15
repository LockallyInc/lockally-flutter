import 'dart:math';

import 'package:dio/dio.dart';

import 'retry_policy.dart';
import 'token_provider.dart';

const _mutating = {'POST', 'PUT', 'PATCH', 'DELETE'};
const _attemptKey = 'lk_retry_attempt';

/// A single dio [Interceptor] that:
///  - injects `Authorization: Bearer` from a [TokenProvider] (refreshed per try),
///  - adds a stable `Idempotency-Key` on mutating requests, and
///  - retries network errors / `429` / `5xx` with backoff + jitter, honoring
///    `Retry-After`.
class LockallyInterceptor extends Interceptor {
  LockallyInterceptor(this._dio, this._provider, {RetryPolicy policy = const RetryPolicy()})
      : _policy = policy;

  final Dio _dio;
  final TokenProvider _provider;
  final RetryPolicy _policy;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      options.headers['Authorization'] = 'Bearer ${await _provider.token()}';
    } catch (e) {
      return handler.reject(DioException(requestOptions: options, error: e));
    }
    if (_mutating.contains(options.method.toUpperCase()) &&
        !options.headers.containsKey('Idempotency-Key')) {
      options.headers['Idempotency-Key'] = _uuidV4();
    }
    handler.next(options);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    final options = err.requestOptions;
    final attempt = ((options.extra[_attemptKey] as int?) ?? 0) + 1;
    final statusCode = err.response?.statusCode;
    final isNetworkError = err.response == null;

    if (!_policy.shouldRetry(attempt: attempt, statusCode: statusCode, isNetworkError: isNetworkError)) {
      return handler.next(err);
    }

    final retryAfter = RetryPolicy.parseRetryAfter(err.response?.headers.value('retry-after'));
    await Future<void>.delayed(_policy.delay(attempt, retryAfter: retryAfter));

    options.extra[_attemptKey] = attempt;
    try {
      final response = await _dio.fetch<dynamic>(options);
      return handler.resolve(response);
    } on DioException catch (e) {
      return handler.next(e);
    }
  }

}

/// Build a dio configured with the ergonomics interceptor and a token provider.
/// Pass it to the generated client: `Lockally(dio: lockallyDio(provider: ...))`.
Dio lockallyDio({
  required TokenProvider provider,
  String basePath = 'https://api.lockally.com',
  RetryPolicy policy = const RetryPolicy(),
}) {
  final dio = Dio(BaseOptions(baseUrl: basePath));
  dio.interceptors.add(LockallyInterceptor(dio, provider, policy: policy));
  return dio;
}

final _rand = Random.secure();

// Minimal RFC 4122 v4 UUID from the secure RNG (avoids an extra dependency).
String _uuidV4() {
  final bytes = List<int>.generate(16, (_) => _rand.nextInt(256));
  bytes[6] = (bytes[6] & 0x0f) | 0x40; // version 4
  bytes[8] = (bytes[8] & 0x3f) | 0x80; // variant 10
  String hex(int i) => bytes[i].toRadixString(16).padLeft(2, '0');
  final sb = StringBuffer();
  for (var i = 0; i < 16; i++) {
    if (i == 4 || i == 6 || i == 8 || i == 10) sb.write('-');
    sb.write(hex(i));
  }
  return sb.toString();
}

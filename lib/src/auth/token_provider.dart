import 'dart:async';

/// Supplies the bearer credential for each request. Async so it can refresh an
/// expiring token or fetch a short-lived one from your backend.
///
/// - Sending mail / OTP / verification / contacts → [BackendTokenProvider].
/// - A signed-in user reading their own mail → `OAuthPkceProvider`.
/// - Server-side / internal only → [StaticTokenProvider].
abstract class TokenProvider {
  Future<String> token();
}

bool _liveKeyWarned = false;

/// A fixed key. **Do not embed a `lk_live_*` key in a distributed app** — it is
/// extractable from the bundle. Fine for server-side/internal use and `lk_test_*`.
class StaticTokenProvider implements TokenProvider {
  StaticTokenProvider(this._value) {
    if (_value.startsWith('lk_live_') && !_liveKeyWarned) {
      _liveKeyWarned = true;
      // ignore: avoid_print
      print('[Lockally] A live API key was passed to StaticTokenProvider. If this '
          'runs inside a distributed app the key is extractable and can be abused. '
          'Use BackendTokenProvider or OAuthPkceProvider instead.');
    }
  }

  final String _value;

  @override
  Future<String> token() async => _value;
}

/// A short-lived token and when it expires.
class Grant {
  Grant(this.token, this.expiresAt);
  final String token;
  final DateTime expiresAt;
}

/// The recommended provider for send/OTP/verification/contacts. Calls **your**
/// backend for a short-lived, narrowly-scoped token; caches it until near
/// expiry. The `lk_live_` key stays on your server.
class BackendTokenProvider implements TokenProvider {
  BackendTokenProvider(this._fetchGrant, {Duration skew = const Duration(seconds: 30)})
      : _skew = skew;

  final Future<Grant> Function() _fetchGrant;
  final Duration _skew;
  Grant? _cached;
  Future<String>? _inflight;

  @override
  Future<String> token() {
    final c = _cached;
    if (c != null && c.expiresAt.difference(DateTime.now()) > _skew) {
      return Future.value(c.token);
    }
    // Collapse concurrent refreshes into one request.
    return _inflight ??= _fetchGrant().then((g) {
      _cached = g;
      return g.token;
    }).whenComplete(() => _inflight = null);
  }

  /// Parse `{ "token": ..., "expires_at"|"expires_in": ... }` from your backend.
  static Grant parseGrant(Map<String, dynamic> json) {
    final token = json['token'];
    if (token is! String) {
      throw ArgumentError("Backend token response missing 'token'");
    }
    final expiresAt = json['expires_at'];
    if (expiresAt is String) {
      final parsed = DateTime.tryParse(expiresAt);
      if (parsed != null) return Grant(token, parsed);
    }
    final expiresIn = json['expires_in'];
    if (expiresIn is num) {
      return Grant(token, DateTime.now().add(Duration(seconds: expiresIn.toInt())));
    }
    return Grant(token, DateTime.now().add(const Duration(seconds: 60)));
  }
}

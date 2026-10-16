/// Where OAuth refresh tokens are persisted between launches.
///
/// On Flutter, implement with `flutter_secure_storage` (Keychain / Keystore):
///
/// ```dart
/// class SecureTokenStore implements TokenStore {
///   final _s = const FlutterSecureStorage();
///   @override Future<String?> read(String k) => _s.read(key: k);
///   @override Future<void> write(String k, String v) => _s.write(key: k, value: v);
///   @override Future<void> delete(String k) => _s.delete(key: k);
/// }
/// ```
abstract class TokenStore {
  Future<String?> read(String key);
  Future<void> write(String key, String value);
  Future<void> delete(String key);
}

/// Non-persistent store — default for tests and for `BackendTokenProvider`.
class InMemoryTokenStore implements TokenStore {
  final Map<String, String> _map = {};

  @override
  Future<String?> read(String key) async => _map[key];

  @override
  Future<void> write(String key, String value) async => _map[key] = value;

  @override
  Future<void> delete(String key) async => _map.remove(key);
}

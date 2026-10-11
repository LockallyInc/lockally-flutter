import 'package:dio/dio.dart';

import 'lockally_exception.dart';
import 'token_provider.dart';
import 'token_store.dart';

/// OAuth 2.1 authorization-code + PKCE configuration.
class OAuthConfig {
  OAuthConfig({
    required this.clientId,
    required this.redirectUri,
    this.scopes = const ['inboxes:read', 'inboxes:write'],
    this.authorizationEndpoint = 'https://api.lockally.com/oauth/authorize',
    this.tokenEndpoint = 'https://api.lockally.com/oauth/token',
  });

  final String clientId;
  final String redirectUri;
  final List<String> scopes;
  final String authorizationEndpoint;
  final String tokenEndpoint;
}

/// OAuth PKCE for a signed-in *user*. Run the browser step with
/// `flutter_web_auth_2`, then pass the returned `code` to [exchange]. Token
/// exchange, refresh, and secure persistence live here.
///
/// The server issues user tokens only for the inbox/agent surface today
/// (`inboxes:read` / `inboxes:write`). For send/contacts use [BackendTokenProvider].
class OAuthPkceProvider implements TokenProvider {
  OAuthPkceProvider(this.config, {TokenStore? store, Dio? dio})
      : _store = store ?? InMemoryTokenStore(),
        _dio = dio ?? Dio();

  final OAuthConfig config;
  final TokenStore _store;
  final Dio _dio;
  String? _access;
  DateTime _accessExpiry = DateTime.fromMillisecondsSinceEpoch(0);

  String get _refreshKey => 'lockally.oauth.refresh.${config.clientId}';

  /// Build the `/oauth/authorize` URL for a PKCE challenge.
  Uri authorizationUrl(String challenge, String state) =>
      Uri.parse(config.authorizationEndpoint).replace(queryParameters: {
        'response_type': 'code',
        'client_id': config.clientId,
        'redirect_uri': config.redirectUri,
        'scope': config.scopes.join(' '),
        'state': state,
        'code_challenge': challenge,
        'code_challenge_method': 'S256',
      });

  /// Exchange an authorization code + verifier for tokens.
  Future<void> exchange(String code, String verifier) => _postToken({
        'grant_type': 'authorization_code',
        'code': code,
        'redirect_uri': config.redirectUri,
        'client_id': config.clientId,
        'code_verifier': verifier,
      });

  @override
  Future<String> token() async {
    final access = _access;
    if (access != null && _accessExpiry.difference(DateTime.now()) > const Duration(seconds: 30)) {
      return access;
    }
    final refresh = await _store.read(_refreshKey);
    if (refresh == null) {
      throw StateError('Not signed in — run the PKCE flow and call exchange() first.');
    }
    return _postToken({
      'grant_type': 'refresh_token',
      'refresh_token': refresh,
      'client_id': config.clientId,
    });
  }

  Future<void> signOut() async {
    _access = null;
    _accessExpiry = DateTime.fromMillisecondsSinceEpoch(0);
    await _store.delete(_refreshKey);
  }

  Future<String> _postToken(Map<String, String> fields) async {
    final Response<dynamic> resp;
    try {
      resp = await _dio.post<dynamic>(
        config.tokenEndpoint,
        data: fields,
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
          validateStatus: (_) => true,
        ),
      );
    } on DioException catch (e) {
      throw LockallyException(status: -1, message: 'Token request failed: ${e.message}');
    }
    final data = resp.data;
    if (resp.statusCode == null || resp.statusCode! < 200 || resp.statusCode! >= 300) {
      throw LockallyException.fromResponse(status: resp.statusCode ?? -1, body: data);
    }
    if (data is! Map || data['access_token'] is! String) {
      throw LockallyException(status: resp.statusCode!, message: "Token response missing 'access_token'");
    }
    final access = data['access_token'] as String;
    final ttl = data['expires_in'] is num ? (data['expires_in'] as num).toInt() : 3600;
    _access = access;
    _accessExpiry = DateTime.now().add(Duration(seconds: ttl));
    final refresh = data['refresh_token'];
    if (refresh is String) await _store.write(_refreshKey, refresh);
    return access;
  }
}

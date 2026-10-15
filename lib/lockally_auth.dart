/// Secure auth + ergonomics layer for the Lockally Flutter SDK.
///
/// Pair with the generated `package:lockally/lockally.dart` client:
///
/// ```dart
/// import 'package:lockally/lockally.dart';
/// import 'package:lockally/lockally_auth.dart';
///
/// final client = Lockally(dio: lockallyDio(
///   provider: BackendTokenProvider(() async =>
///     BackendTokenProvider.parseGrant(await myBackend.fetchToken())),
/// ));
/// ```
library lockally_auth;

export 'src/auth/interceptor.dart';
export 'src/auth/lockally_exception.dart';
export 'src/auth/lockally_oauth.dart';
export 'src/auth/paginate.dart';
export 'src/auth/pkce.dart';
export 'src/auth/retry_policy.dart';
export 'src/auth/token_provider.dart';
export 'src/auth/token_store.dart';

import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';

/// RFC 7636 Proof Key for Code Exchange (S256).
///
/// Mobile apps are public OAuth clients (no secret), so PKCE is mandatory. The
/// [verifier] stays on-device; the [challenge] is sent to `/oauth/authorize`.
class Pkce {
  Pkce._(this.verifier, this.challenge);

  final String verifier;
  final String challenge;
  String get method => 'S256';

  /// Build a pair from an existing verifier (used by tests with RFC vectors).
  factory Pkce.fromVerifier(String verifier) => Pkce._(verifier, challengeFor(verifier));

  /// Generate a fresh, verifiable verifier + S256 challenge.
  factory Pkce.generate() {
    final rng = Random.secure();
    final bytes = List<int>.generate(32, (_) => rng.nextInt(256));
    return Pkce.fromVerifier(_base64Url(bytes));
  }

  /// `BASE64URL(SHA256(ASCII(verifier)))`, no padding.
  static String challengeFor(String verifier) =>
      _base64Url(sha256.convert(ascii.encode(verifier)).bytes);

  static String _base64Url(List<int> bytes) =>
      base64Url.encode(bytes).replaceAll('=', '');
}

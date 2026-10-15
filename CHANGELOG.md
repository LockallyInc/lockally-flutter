# Changelog

## 0.2.0

- `reply_to` and `reply_to_name` on the send request. `reply_to_name` sets the
  display name recipients see, so a reply is addressed to a team rather than to
  a bare address, and accents, commas and quotes in the name are encoded for
  you.
- `reply_to` has worked over REST since September but had never reached the
  OpenAPI spec, so no generated client could set it. It can now.
- Regenerated from the current spec. Additive only: code written against 0.1.0
  keeps working.

## 0.1.0

Initial release of the official Lockally SDK for Flutter.

- Typed API client generated from the Lockally OpenAPI spec — transactional
  email, contacts, and agent inboxes.
- Secure-by-default auth (`package:lockally/lockally_auth.dart`): a `TokenProvider`
  abstraction with `BackendTokenProvider` (short-lived, backend-minted tokens —
  the recommended path for sending mail / OTP / verification / contacts),
  `OAuthPkceProvider` (OAuth 2.1 + PKCE for user/inbox flows), and a guarded
  `StaticTokenProvider`.
- Ergonomics: automatic retries with exponential backoff + jitter (honoring
  `Retry-After`), a stable `Idempotency-Key` on mutating requests, cursor
  pagination, and typed `LockallyException` errors from `problem+json`.

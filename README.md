<!-- lockally-brand-header -->
<p align="center">
  <a href="https://lockally.com">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/LockallyInc/community/main/brand/lockup-dark.png">
      <img alt="Lockally" src="https://raw.githubusercontent.com/LockallyInc/community/main/brand/lockup-light.png" width="260">
    </picture>
  </a>
</p>
<!-- /lockally-brand-header -->

# Lockally for Flutter

Official Flutter/Dart SDK for the [Lockally](https://lockally.com) API —
transactional email, contacts, and agent inboxes. A generated dio client plus a
secure auth + ergonomics layer (`package:lockally/lockally_auth.dart`):
`TokenProvider`, OAuth 2.1 PKCE, automatic retries, idempotency keys, and
`Stream` pagination.

## Install

```yaml
dependencies:
  lockally: ^0.1.0
  # For the OAuth/secure-storage helpers:
  flutter_secure_storage: ^9.0.0
  flutter_web_auth_2: ^3.0.0
```

---

## 🔐 Security: never ship a live API key

A Flutter app binary is distributed — an embedded `lk_live_…` key can be
extracted. A leaked send-scoped key is an open spam relay billed to you.

- **Sending mail (OTP, verification) + contact sync** → `BackendTokenProvider`.
  Keep the `lk_live_` key on **your** server; the app gets short-lived scoped tokens.
- **A signed-in user reading their own mail** → `OAuthPkceProvider`.
- **`StaticTokenProvider`** is for server-side/internal use (warns on `lk_live_`).

---

## Quick start

```dart
import 'package:lockally/lockally.dart';
import 'package:lockally/lockally_auth.dart';

final client = Lockally(dio: lockallyDio(
  provider: BackendTokenProvider(() async =>
    BackendTokenProvider.parseGrant(await myBackend.fetchLockallyToken())),
));
```

`lockallyDio(...)` returns a dio with retries, idempotency, and auth wired in.

## Cookbook

### OTP email / user verification
Trigger from the app with a backend-minted `messages:send` token. A stable
`Idempotency-Key` is attached automatically, so a retry never double-sends:

```dart
await client.getSendApi().v1SendPost(v1SendPostRequest:
  V1SendPostRequest((b) => b
    ..from = 'no-reply@yourapp.com'
    ..to = ListBuilder([email])
    ..templateId = 'otp-code'));
```

### Contact syncing
```dart
final contacts = client.getContactsApi();
await for (final c in paginate((cursor) async {
  final r = await contacts.v1ContactsGet(cursor: cursor);
  return Page(r.data?.data.toList() ?? [], r.data?.nextCursor);
})) {
  syncLocally(c);
}
```

### Push + email workflows
Register the device push token (FCM/APNs) with your backend; it decides per event
whether to push, email (via Lockally), or both. The SDK drives the email leg.

### Inbox / agent (OAuth PKCE — user tokens)
The one interactive user-token flow the API issues today (`inboxes:read/write`).
Run the browser step with `flutter_web_auth_2`:

```dart
final oauth = OAuthPkceProvider(
  OAuthConfig(clientId: 'your-client-id', redirectUri: 'yourapp://oauth'),
  store: mySecureStore, // wrap flutter_secure_storage (see TokenStore docs)
);
final pkce = Pkce.generate();
final result = await FlutterWebAuth2.authenticate(
  url: oauth.authorizationUrl(pkce.challenge, state).toString(),
  callbackUrlScheme: 'yourapp',
);
final code = Uri.parse(result).queryParameters['code']!;
await oauth.exchange(code, pkce.verifier);
final client = Lockally(dio: lockallyDio(provider: oauth));
```

## Errors

Non-2xx responses can be mapped to `LockallyException` (`status` / `code` /
`message` / `requestId`) parsed from the API's `problem+json`.

## License

MIT — see [LICENSE](./LICENSE).

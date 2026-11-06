# lockally.model.APIKey

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**tenantId** | **String** |  | 
**prefix** | **String** | 8-char public prefix; safe to store and display. | 
**scopes** | **BuiltList&lt;String&gt;** |  | 
**label** | **String** |  | 
**lastUsedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**revokedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**test** | **bool** | True for an lk_test_* key: the whole request path runs but a send never reaches the mail server and nothing counts against the account. | [optional] 
**expiresAt** | [**DateTime**](DateTime.md) | When the key stops authenticating. Null means it does not expire, which is how every key behaved before expiry existed. Enforced at authentication, so the key fails the first request after this moment rather than whenever a sweep runs.  | [optional] 
**rotatedTo** | **String** | The successor issued by `POST /v1/api-keys/{id}/rotate`. Set on the PREDECESSOR, so you can see which key replaced this one while both still work through the overlap window.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



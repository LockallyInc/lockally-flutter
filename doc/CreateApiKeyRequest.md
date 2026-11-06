# lockally.model.CreateApiKeyRequest

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | Free-text identifier shown in the dashboard. | 
**scopes** | **BuiltList&lt;String&gt;** | Allowed scopes on this key. | 
**test** | **bool** | Issue a test key (`lk_test_` prefix). A test key accepts sends, records them and fires a simulated delivery webhook without sending mail, and counts against no limit or allowance.  | [optional] [default to false]
**expiresAt** | [**DateTime**](DateTime.md) | Optional. When the key stops authenticating. Omit it for a key that does not expire. Must be in the future: an expiry already past would mint a key that fails its first request.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



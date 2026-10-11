# lockally.model.V1ApiKeysPostRequest

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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



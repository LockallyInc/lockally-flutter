# lockally.model.CreateApiKey201Response

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
**secret** | **String** | The full `lk_live_<prefix>_<secret>` token. Shown ONCE. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



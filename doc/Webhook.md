# lockally.model.Webhook

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**tenantId** | **String** |  | 
**url** | **String** |  | 
**events** | **BuiltList&lt;String&gt;** |  | 
**paused** | **bool** |  | 
**pausedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**lastSuccessAt** | [**DateTime**](DateTime.md) |  | [optional] 
**lastFailureAt** | [**DateTime**](DateTime.md) |  | [optional] 
**consecutiveFailures** | **int** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**signingSecret** | **String** | Hex-encoded HMAC-SHA256 key. Present ONLY on POST response. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



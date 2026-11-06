# lockally.model.Message

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**tenantId** | **String** |  | 
**messageId** | **String** | RFC 5322 Message-ID header, including angle brackets. | 
**sender** | **String** |  | 
**recipients** | **BuiltList&lt;String&gt;** |  | 
**subject** | **String** |  | [optional] 
**status** | **String** |  | 
**queuedAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 
**bounceReason** | **String** |  | [optional] 
**sizeBytes** | **int** |  | [optional] 
**metadata** | **BuiltMap&lt;String, String&gt;** | The sender's own key/value from the send request. Always present; `{}` when none was set. | [optional] 
**tags** | **BuiltList&lt;String&gt;** | Grouping labels, lowercased and deduplicated. Always present; `[]` when none were set. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# lockally.model.BatchResult

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **int** |  | [optional] 
**id** | **String** |  | [optional] 
**messageId** | **String** |  | [optional] 
**status** | **String** | \"suppressed\" means every recipient of that slot was on your suppression list, and it carries no id or message_id. \"delivered\" only appears on a test key: the send was simulated, not transmitted. | [optional] 
**error** | **String** | Present when this message failed; the others are then absent. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



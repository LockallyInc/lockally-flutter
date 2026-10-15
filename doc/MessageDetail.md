# lockally.model.MessageDetail

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
**from** | **String** |  | [optional] 
**to** | **BuiltList&lt;String&gt;** |  | [optional] 
**cc** | **BuiltList&lt;String&gt;** |  | [optional] 
**bcc** | **BuiltList&lt;String&gt;** |  | [optional] 
**text** | **String** |  | [optional] 
**html** | **String** |  | [optional] 
**headers** | **BuiltMap&lt;String, String&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



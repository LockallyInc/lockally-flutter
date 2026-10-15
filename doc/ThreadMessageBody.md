# lockally.model.ThreadMessageBody

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**direction** | **String** |  | 
**rfcMessageId** | **String** | The Internet Message-ID | 
**inReplyTo** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**from** | **String** |  | 
**to** | **BuiltList&lt;String&gt;** |  | 
**snippet** | **String** |  | [optional] 
**hasAttachments** | **bool** |  | 
**attachments** | [**BuiltList&lt;Attachment&gt;**](Attachment.md) |  | [optional] 
**annotations** | [**Annotations**](Annotations.md) |  | [optional] 
**receivedAt** | [**DateTime**](DateTime.md) |  | 
**body** | [**ThreadMessageBodyAllOfBody**](ThreadMessageBodyAllOfBody.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



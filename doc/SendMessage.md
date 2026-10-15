# lockally.model.SendMessage

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** |  | 
**to** | **BuiltList&lt;String&gt;** |  | 
**cc** | **BuiltList&lt;String&gt;** |  | [optional] 
**bcc** | **BuiltList&lt;String&gt;** |  | [optional] 
**subject** | **String** |  | [optional] 
**text** | **String** |  | [optional] 
**html** | **String** |  | [optional] 
**headers** | **BuiltMap&lt;String, String&gt;** |  | [optional] 
**replyTo** | **String** | Where replies go. Required when `from` has no mailbox behind it. The named form `Acme Support <a@b.com>` is also accepted. | [optional] 
**replyToName** | **String** | Display name shown on `Reply-To`. Ignored without `reply_to`. | [optional] 
**unsubscribe** | **bool** |  | [optional] 
**templateId** | **String** |  | [optional] 
**variables** | **BuiltMap&lt;String, String&gt;** |  | [optional] 
**sendAt** | [**DateTime**](DateTime.md) |  | [optional] 
**attachments** | [**BuiltList&lt;SendEmailRequestAttachmentsInner&gt;**](SendEmailRequestAttachmentsInner.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



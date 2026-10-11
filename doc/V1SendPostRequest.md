# lockally.model.V1SendPostRequest

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
**text** | **String** | Plain-text body. Required if `html` is absent. | [optional] 
**html** | **String** | HTML body. Required if `text` is absent. | [optional] 
**headers** | **BuiltMap&lt;String, String&gt;** |  | [optional] 
**replyTo** | **String** | Where replies go. REQUIRED when `from` has no mailbox behind it, since a reply there would be delivered nowhere. A `Reply-To` entry in `headers` satisfies the same rule. The named form `Acme Support <a@b.com>` is also accepted. | [optional] 
**replyToName** | **String** | Display name shown on `Reply-To`, e.g. `Acme Support`. Ignored without `reply_to`. Encoded and quoted for you, so accents, commas and quotes are all safe. | [optional] 
**unsubscribe** | **bool** | Mark as opt-in/broadcast: skips suppressed recipients and adds a managed one-click List-Unsubscribe header. | [optional] 
**templateId** | **String** | Render subject/text/html from a stored template (GET /v1/templates). Mutually exclusive with inline subject/text/html. | [optional] 
**variables** | **BuiltMap&lt;String, String&gt;** | Values substituted into the template's {{variable}} placeholders. | [optional] 
**sendAt** | [**DateTime**](DateTime.md) | Schedule delivery for a future RFC3339 time (≤ 30 days out). Omit or past = send now. Cancel with DELETE /v1/messages/{id} while scheduled. | [optional] 
**attachments** | [**BuiltList&lt;V1SendPostRequestAttachmentsInner&gt;**](V1SendPostRequestAttachmentsInner.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# lockally.model.SendEmailBatchRequest

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messages** | [**BuiltList&lt;SendMessage&gt;**](SendMessage.md) |  | 
**variables** | **BuiltMap&lt;String, String&gt;** | Template variables every message in the batch inherits. Each message's own `variables` override these key by key, so shared values are written once and per-recipient ones stay per-recipient.  Without this, a 500-message batch repeats every shared variable 500 times: most of the payload, and 500 places for one of them to differ by a typo.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



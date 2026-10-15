# lockally.model.SendEmail202Response

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Lockally identifier; use with GET /v1/messages/{id}. | 
**messageId** | **String** | RFC 5322 Message-ID (with angle brackets). | 
**status** | **String** | \"scheduled\" when send_at is in the future. | 
**warning** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



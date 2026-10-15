# lockally.model.SendEmail200Response

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Present on a test-mode send; absent when suppressed. | [optional] 
**messageId** | **String** | RFC 5322 Message-ID. On a test send the domain is test.lockally.com. Absent when suppressed. | [optional] 
**status** | **String** |  | 
**warning** | **String** | On a suppressed send, explains that nothing was sent. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



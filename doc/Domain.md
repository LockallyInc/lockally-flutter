# lockally.model.Domain

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**tenantId** | **String** |  | 
**domain** | **String** |  | 
**verificationToken** | **String** |  | 
**verified** | **bool** |  | 
**verifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**dkimSelector** | **String** |  | 
**dkimPublicRecord** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**records** | [**BuiltList&lt;DNSRecord&gt;**](DNSRecord.md) | DNS records the tenant must publish under their own DNS. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



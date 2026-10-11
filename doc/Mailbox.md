# lockally.model.Mailbox

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**tenantId** | **String** |  | 
**domainId** | **String** |  | 
**email** | **String** |  | 
**quotaBytes** | **int** |  | 
**disabled** | **bool** |  | 
**disabledAt** | [**DateTime**](DateTime.md) |  | [optional] 
**softDeletedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**hardDeleteAfter** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**password** | **String** | ONLY present on POST response when lockally generated the password. Shown once. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# lockally.model.AdminFull

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**tenantId** | **String** |  | 
**email** | **String** |  | 
**displayName** | **String** |  | [optional] 
**role** | **String** |  | 
**lastLoginAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**disabled** | **bool** |  | 
**disabledAt** | [**DateTime**](DateTime.md) |  | [optional] 
**password** | **String** | Present ONLY on POST response when lockally generated the password. Shown once. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



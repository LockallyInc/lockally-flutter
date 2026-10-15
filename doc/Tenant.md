# lockally.model.Tenant

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**slug** | **String** |  | 
**displayName** | **String** |  | 
**status** | **String** |  | 
**plan** | **String** |  | 
**rateCapPerMin** | **int** | Per-tenant share of the per-VPS 5/min outbound cap (L6). | 
**dailyMsgQuota** | **int** |  | 
**adminEmail** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**suspendedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**closedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**hardDeleteAfter** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



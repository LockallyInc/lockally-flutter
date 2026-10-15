# lockally.model.GetUserInsights200Response

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recentlyAdded** | [**BuiltList&lt;UserEvent&gt;**](UserEvent.md) |  | [optional] 
**recentlySuspended** | [**BuiltList&lt;UserEvent&gt;**](UserEvent.md) |  | [optional] 
**inactive30d** | [**BuiltList&lt;UserEvent&gt;**](UserEvent.md) |  | [optional] 
**seatsUsed** | **int** |  | [optional] 
**seatsAlloc** | **int** |  | [optional] 
**seatsCapped** | **bool** | True only on tiers with a hard seat cap (Free, Founder). On unlimited/per-seat tiers seats_alloc merely tracks the live mailbox count, so seats_used == seats_alloc is normal and must not be read as 'at capacity'. | [optional] 
**generatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



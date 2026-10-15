# lockally.model.GetCalendarOverview200Response

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalCalendars** | **int** |  | [optional] 
**activeCalendars** | **int** | Calendars with an event created, edited or held in the last 30 days. | [optional] 
**sharedCalendars** | **int** | Calendars visible to the whole organization. | [optional] 
**eventsThisMonth** | **int** | Events on every calendar, in the account's own timezone. | [optional] 
**upcomingOrgEvents** | **int** | Future events on organization-visible calendars. | [optional] 
**bookableResources** | **int** | Resources that are not disabled. | [optional] 
**accessGranted** | **int** | People who own a calendar or are named on one. | [optional] 
**accessOrgWide** | **int** | Everyone who can see an organization calendar; 0 when none exists. | [optional] 
**activity** | [**BuiltList&lt;GetCalendarOverview200ResponseActivityInner&gt;**](GetCalendarOverview200ResponseActivityInner.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



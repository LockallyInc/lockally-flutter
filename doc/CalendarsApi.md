# lockally.api.CalendarsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCalendarMember**](CalendarsApi.md#addcalendarmember) | **POST** /v1/calendars/{id}/members | Add a member to a calendar
[**createCalendar**](CalendarsApi.md#createcalendar) | **POST** /v1/calendars | Create a calendar
[**createCalendarEvent**](CalendarsApi.md#createcalendarevent) | **POST** /v1/calendars/{id}/events | Create an event in a calendar
[**createCalendarIntegration**](CalendarsApi.md#createcalendarintegration) | **POST** /v1/calendar-integrations | Create a calendar integration
[**deleteCalendar**](CalendarsApi.md#deletecalendar) | **DELETE** /v1/calendars/{id} | Delete a calendar
[**deleteCalendarEvent**](CalendarsApi.md#deletecalendarevent) | **DELETE** /v1/calendars/{id}/events/{eventId} | Delete a calendar event
[**deleteCalendarIntegration**](CalendarsApi.md#deletecalendarintegration) | **DELETE** /v1/calendar-integrations/{id} | Delete a calendar integration
[**getCalendar**](CalendarsApi.md#getcalendar) | **GET** /v1/calendars/{id} | Get a calendar
[**getCalendarOverview**](CalendarsApi.md#getcalendaroverview) | **GET** /v1/calendar-overview | Administrative overview of the organization&#39;s calendar system
[**getCalendarPolicies**](CalendarsApi.md#getcalendarpolicies) | **GET** /v1/calendar-policies | Get calendar policies
[**getCalendarSecurity**](CalendarsApi.md#getcalendarsecurity) | **GET** /v1/calendar-security | Get calendar security overview
[**listCalendarEvents**](CalendarsApi.md#listcalendarevents) | **GET** /v1/calendars/{id}/events | List events in a calendar
[**listCalendarIntegrations**](CalendarsApi.md#listcalendarintegrations) | **GET** /v1/calendar-integrations | List calendar integrations
[**listCalendarMembers**](CalendarsApi.md#listcalendarmembers) | **GET** /v1/calendars/{id}/members | List calendar members
[**listCalendars**](CalendarsApi.md#listcalendars) | **GET** /v1/calendars | List calendars
[**removeCalendarMember**](CalendarsApi.md#removecalendarmember) | **DELETE** /v1/calendars/{id}/members/{memberId} | Remove a member from a calendar
[**syncCalendarIntegration**](CalendarsApi.md#synccalendarintegration) | **POST** /v1/calendar-integrations/{id}/sync | Trigger sync for a calendar integration
[**updateCalendar**](CalendarsApi.md#updatecalendar) | **PATCH** /v1/calendars/{id} | Update a calendar
[**updateCalendarEvent**](CalendarsApi.md#updatecalendarevent) | **PATCH** /v1/calendars/{id}/events/{eventId} | Update a calendar event
[**updateCalendarIntegration**](CalendarsApi.md#updatecalendarintegration) | **PATCH** /v1/calendar-integrations/{id} | Update a calendar integration
[**updateCalendarMember**](CalendarsApi.md#updatecalendarmember) | **PATCH** /v1/calendars/{id}/members/{memberId} | Update a calendar member&#39;s role
[**updateCalendarPolicies**](CalendarsApi.md#updatecalendarpolicies) | **PATCH** /v1/calendar-policies | Update calendar policies


# **addCalendarMember**
> CalendarMember addCalendarMember(id, addCalendarMemberRequest)

Add a member to a calendar

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final AddCalendarMemberRequest addCalendarMemberRequest = ; // AddCalendarMemberRequest | 

try {
    final response = api.addCalendarMember(id, addCalendarMemberRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->addCalendarMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **addCalendarMemberRequest** | [**AddCalendarMemberRequest**](AddCalendarMemberRequest.md)|  | 

### Return type

[**CalendarMember**](CalendarMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCalendar**
> Calendar createCalendar(createCalendarRequest)

Create a calendar

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final CreateCalendarRequest createCalendarRequest = ; // CreateCalendarRequest | 

try {
    final response = api.createCalendar(createCalendarRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->createCalendar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCalendarRequest** | [**CreateCalendarRequest**](CreateCalendarRequest.md)|  | 

### Return type

[**Calendar**](Calendar.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCalendarEvent**
> CalendarEvent createCalendarEvent(id, createCalendarEventRequest)

Create an event in a calendar

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final CreateCalendarEventRequest createCalendarEventRequest = ; // CreateCalendarEventRequest | 

try {
    final response = api.createCalendarEvent(id, createCalendarEventRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->createCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createCalendarEventRequest** | [**CreateCalendarEventRequest**](CreateCalendarEventRequest.md)|  | 

### Return type

[**CalendarEvent**](CalendarEvent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCalendarIntegration**
> CalendarIntegration createCalendarIntegration(createCalendarIntegrationRequest)

Create a calendar integration

Not implemented. Calendar integrations do not sync with any provider yet, so this always answers 501. Listing and deleting still work, for entries created before the feature was withdrawn. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final CreateCalendarIntegrationRequest createCalendarIntegrationRequest = ; // CreateCalendarIntegrationRequest | 

try {
    final response = api.createCalendarIntegration(createCalendarIntegrationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->createCalendarIntegration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCalendarIntegrationRequest** | [**CreateCalendarIntegrationRequest**](CreateCalendarIntegrationRequest.md)|  | 

### Return type

[**CalendarIntegration**](CalendarIntegration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCalendar**
> deleteCalendar(id)

Delete a calendar

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteCalendar(id);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->deleteCalendar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCalendarEvent**
> deleteCalendarEvent(id, eventId)

Delete a calendar event

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String eventId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteCalendarEvent(id, eventId);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->deleteCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **eventId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCalendarIntegration**
> deleteCalendarIntegration(id)

Delete a calendar integration

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteCalendarIntegration(id);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->deleteCalendarIntegration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendar**
> Calendar getCalendar(id)

Get a calendar

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getCalendar(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->getCalendar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Calendar**](Calendar.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarOverview**
> GetCalendarOverview200Response getCalendarOverview()

Administrative overview of the organization's calendar system

Counts across the whole account, plus the recent calendar entries from the audit trail. Not scoped to the caller's own calendar. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();

try {
    final response = api.getCalendarOverview();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->getCalendarOverview: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetCalendarOverview200Response**](GetCalendarOverview200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarPolicies**
> CalendarPolicies getCalendarPolicies()

Get calendar policies

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();

try {
    final response = api.getCalendarPolicies();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->getCalendarPolicies: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CalendarPolicies**](CalendarPolicies.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarSecurity**
> GetCalendarSecurity200Response getCalendarSecurity()

Get calendar security overview

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();

try {
    final response = api.getCalendarSecurity();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->getCalendarSecurity: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetCalendarSecurity200Response**](GetCalendarSecurity200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCalendarEvents**
> ListCalendarEvents200Response listCalendarEvents(id, from, to)

List events in a calendar

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.listCalendarEvents(id, from, to);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->listCalendarEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 

### Return type

[**ListCalendarEvents200Response**](ListCalendarEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCalendarIntegrations**
> ListCalendarIntegrations200Response listCalendarIntegrations()

List calendar integrations

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();

try {
    final response = api.listCalendarIntegrations();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->listCalendarIntegrations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListCalendarIntegrations200Response**](ListCalendarIntegrations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCalendarMembers**
> ListCalendarMembers200Response listCalendarMembers(id)

List calendar members

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.listCalendarMembers(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->listCalendarMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ListCalendarMembers200Response**](ListCalendarMembers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCalendars**
> ListCalendars200Response listCalendars()

List calendars

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();

try {
    final response = api.listCalendars();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->listCalendars: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListCalendars200Response**](ListCalendars200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeCalendarMember**
> removeCalendarMember(id, memberId)

Remove a member from a calendar

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String memberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.removeCalendarMember(id, memberId);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->removeCalendarMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **memberId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncCalendarIntegration**
> CalendarIntegration syncCalendarIntegration(id)

Trigger sync for a calendar integration

Not implemented. Calendar integrations do not sync with any provider yet, so this always answers 501. Listing and deleting still work, for entries created before the feature was withdrawn. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.syncCalendarIntegration(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->syncCalendarIntegration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CalendarIntegration**](CalendarIntegration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCalendar**
> Calendar updateCalendar(id, updateCalendarRequest)

Update a calendar

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCalendarRequest updateCalendarRequest = ; // UpdateCalendarRequest | 

try {
    final response = api.updateCalendar(id, updateCalendarRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->updateCalendar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateCalendarRequest** | [**UpdateCalendarRequest**](UpdateCalendarRequest.md)|  | 

### Return type

[**Calendar**](Calendar.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCalendarEvent**
> CalendarEvent updateCalendarEvent(id, eventId, updateCalendarEventRequest)

Update a calendar event

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String eventId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCalendarEventRequest updateCalendarEventRequest = ; // UpdateCalendarEventRequest | 

try {
    final response = api.updateCalendarEvent(id, eventId, updateCalendarEventRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->updateCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **eventId** | **String**|  | 
 **updateCalendarEventRequest** | [**UpdateCalendarEventRequest**](UpdateCalendarEventRequest.md)|  | 

### Return type

[**CalendarEvent**](CalendarEvent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCalendarIntegration**
> CalendarIntegration updateCalendarIntegration(id, updateCalendarIntegrationRequest)

Update a calendar integration

Not implemented. Calendar integrations do not sync with any provider yet, so this always answers 501. Listing and deleting still work, for entries created before the feature was withdrawn. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCalendarIntegrationRequest updateCalendarIntegrationRequest = ; // UpdateCalendarIntegrationRequest | 

try {
    final response = api.updateCalendarIntegration(id, updateCalendarIntegrationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->updateCalendarIntegration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateCalendarIntegrationRequest** | [**UpdateCalendarIntegrationRequest**](UpdateCalendarIntegrationRequest.md)|  | 

### Return type

[**CalendarIntegration**](CalendarIntegration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCalendarMember**
> CalendarMember updateCalendarMember(id, memberId, updateCalendarMemberRequest)

Update a calendar member's role

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String memberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCalendarMemberRequest updateCalendarMemberRequest = ; // UpdateCalendarMemberRequest | 

try {
    final response = api.updateCalendarMember(id, memberId, updateCalendarMemberRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->updateCalendarMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **memberId** | **String**|  | 
 **updateCalendarMemberRequest** | [**UpdateCalendarMemberRequest**](UpdateCalendarMemberRequest.md)|  | 

### Return type

[**CalendarMember**](CalendarMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCalendarPolicies**
> CalendarPolicies updateCalendarPolicies(updateCalendarPoliciesRequest)

Update calendar policies

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getCalendarsApi();
final UpdateCalendarPoliciesRequest updateCalendarPoliciesRequest = ; // UpdateCalendarPoliciesRequest | 

try {
    final response = api.updateCalendarPolicies(updateCalendarPoliciesRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarsApi->updateCalendarPolicies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateCalendarPoliciesRequest** | [**UpdateCalendarPoliciesRequest**](UpdateCalendarPoliciesRequest.md)|  | 

### Return type

[**CalendarPolicies**](CalendarPolicies.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


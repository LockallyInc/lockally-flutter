# lockally.api.ContactListsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addContactListMember**](ContactListsApi.md#addcontactlistmember) | **POST** /v1/contact-lists/{id}/members | Add a member to a contact list
[**createContactList**](ContactListsApi.md#createcontactlist) | **POST** /v1/contact-lists | Create a contact list
[**deleteContactList**](ContactListsApi.md#deletecontactlist) | **DELETE** /v1/contact-lists/{id} | Delete a contact list
[**getContactList**](ContactListsApi.md#getcontactlist) | **GET** /v1/contact-lists/{id} | Get a contact list with members
[**listContactLists**](ContactListsApi.md#listcontactlists) | **GET** /v1/contact-lists | List contact lists
[**removeContactListMember**](ContactListsApi.md#removecontactlistmember) | **DELETE** /v1/contact-lists/{id}/members/{contactId} | Remove a member from a contact list
[**updateContactList**](ContactListsApi.md#updatecontactlist) | **PATCH** /v1/contact-lists/{id} | Update a contact list


# **addContactListMember**
> addContactListMember(id, addContactListMemberRequest)

Add a member to a contact list

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactListsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final AddContactListMemberRequest addContactListMemberRequest = ; // AddContactListMemberRequest | 

try {
    api.addContactListMember(id, addContactListMemberRequest);
} on DioException catch (e) {
    print('Exception when calling ContactListsApi->addContactListMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **addContactListMemberRequest** | [**AddContactListMemberRequest**](AddContactListMemberRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContactList**
> ContactList createContactList(createContactListRequest)

Create a contact list

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactListsApi();
final CreateContactListRequest createContactListRequest = ; // CreateContactListRequest | 

try {
    final response = api.createContactList(createContactListRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactListsApi->createContactList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createContactListRequest** | [**CreateContactListRequest**](CreateContactListRequest.md)|  | 

### Return type

[**ContactList**](ContactList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContactList**
> deleteContactList(id)

Delete a contact list

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactListsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteContactList(id);
} on DioException catch (e) {
    print('Exception when calling ContactListsApi->deleteContactList: $e\n');
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

# **getContactList**
> GetContactList200Response getContactList(id)

Get a contact list with members

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactListsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getContactList(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactListsApi->getContactList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GetContactList200Response**](GetContactList200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactLists**
> ListContactLists200Response listContactLists()

List contact lists

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactListsApi();

try {
    final response = api.listContactLists();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactListsApi->listContactLists: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListContactLists200Response**](ListContactLists200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeContactListMember**
> removeContactListMember(id, contactId)

Remove a member from a contact list

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactListsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String contactId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.removeContactListMember(id, contactId);
} on DioException catch (e) {
    print('Exception when calling ContactListsApi->removeContactListMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **contactId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateContactList**
> ContactList updateContactList(id, updateContactListRequest)

Update a contact list

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactListsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateContactListRequest updateContactListRequest = ; // UpdateContactListRequest | 

try {
    final response = api.updateContactList(id, updateContactListRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactListsApi->updateContactList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateContactListRequest** | [**UpdateContactListRequest**](UpdateContactListRequest.md)|  | 

### Return type

[**ContactList**](ContactList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


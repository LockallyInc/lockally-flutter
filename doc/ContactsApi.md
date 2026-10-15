# lockally.api.ContactsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContact**](ContactsApi.md#createcontact) | **POST** /v1/contacts | Create a contact
[**deleteContact**](ContactsApi.md#deletecontact) | **DELETE** /v1/contacts/{id} | Delete a contact
[**getContact**](ContactsApi.md#getcontact) | **GET** /v1/contacts/{id} | Get a contact
[**getContactLists**](ContactsApi.md#getcontactlists) | **GET** /v1/contacts/{id}/lists | Get lists a contact belongs to
[**listContacts**](ContactsApi.md#listcontacts) | **GET** /v1/contacts | List contacts
[**updateContact**](ContactsApi.md#updatecontact) | **PATCH** /v1/contacts/{id} | Update a contact


# **createContact**
> Contact createContact(createContactRequest)

Create a contact

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactsApi();
final CreateContactRequest createContactRequest = ; // CreateContactRequest | 

try {
    final response = api.createContact(createContactRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactsApi->createContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createContactRequest** | [**CreateContactRequest**](CreateContactRequest.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContact**
> deleteContact(id)

Delete a contact

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteContact(id);
} on DioException catch (e) {
    print('Exception when calling ContactsApi->deleteContact: $e\n');
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

# **getContact**
> Contact getContact(id)

Get a contact

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getContact(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactsApi->getContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContactLists**
> GetContactLists200Response getContactLists(id)

Get lists a contact belongs to

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getContactLists(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactsApi->getContactLists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GetContactLists200Response**](GetContactLists200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContacts**
> ListContacts200Response listContacts(q, type, department, status, source_)

List contacts

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactsApi();
final String q = q_example; // String | Free-text search across name, email, company
final String type = type_example; // String | Filter by contact_type
final String department = department_example; // String | Filter by department
final String status = status_example; // String | Filter by status
final String source_ = source__example; // String | Filter by source

try {
    final response = api.listContacts(q, type, department, status, source_);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactsApi->listContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Free-text search across name, email, company | [optional] 
 **type** | **String**| Filter by contact_type | [optional] 
 **department** | **String**| Filter by department | [optional] 
 **status** | **String**| Filter by status | [optional] 
 **source_** | **String**| Filter by source | [optional] 

### Return type

[**ListContacts200Response**](ListContacts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateContact**
> Contact updateContact(id, updateContactRequest)

Update a contact

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateContactRequest updateContactRequest = ; // UpdateContactRequest | 

try {
    final response = api.updateContact(id, updateContactRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactsApi->updateContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateContactRequest** | [**UpdateContactRequest**](UpdateContactRequest.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


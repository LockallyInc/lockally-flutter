# lockally.api.ContactsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkUpsertExternalContacts**](ContactsApi.md#bulkupsertexternalcontacts) | **PUT** /v1/contacts/external/{system} | Create or update up to 500 contacts by their ids in another system
[**createContact**](ContactsApi.md#createcontact) | **POST** /v1/contacts | Create a contact
[**deleteContact**](ContactsApi.md#deletecontact) | **DELETE** /v1/contacts/{id} | Delete a contact
[**deleteExternalContact**](ContactsApi.md#deleteexternalcontact) | **DELETE** /v1/contacts/external/{system}/{external_id} | Delete a contact by its id in another system
[**getContact**](ContactsApi.md#getcontact) | **GET** /v1/contacts/{id} | Get a contact
[**getContactLists**](ContactsApi.md#getcontactlists) | **GET** /v1/contacts/{id}/lists | Get lists a contact belongs to
[**getExternalContact**](ContactsApi.md#getexternalcontact) | **GET** /v1/contacts/external/{system}/{external_id} | Get a contact by its id in another system
[**listContacts**](ContactsApi.md#listcontacts) | **GET** /v1/contacts | List contacts
[**updateContact**](ContactsApi.md#updatecontact) | **PATCH** /v1/contacts/{id} | Update a contact
[**upsertExternalContact**](ContactsApi.md#upsertexternalcontact) | **PUT** /v1/contacts/external/{system}/{external_id} | Create or update a contact by its id in another system


# **bulkUpsertExternalContacts**
> BulkUpsertExternalContacts200Response bulkUpsertExternalContacts(system, bulkUpsertExternalContactsRequest)

Create or update up to 500 contacts by their ids in another system

For a sync. Each row stands alone: a bad row is reported in `results` with its index and the rest are stored, so the response is 200 whenever the request itself is well formed. Read `failed` and `results`. Two rows with the same `external_id` in one request are refused (the later one), because which is current cannot be known. Rerunning the same payload updates rather than duplicates.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactsApi();
final String system = system_example; // String | 
final BulkUpsertExternalContactsRequest bulkUpsertExternalContactsRequest = ; // BulkUpsertExternalContactsRequest | 

try {
    final response = api.bulkUpsertExternalContacts(system, bulkUpsertExternalContactsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactsApi->bulkUpsertExternalContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **String**|  | 
 **bulkUpsertExternalContactsRequest** | [**BulkUpsertExternalContactsRequest**](BulkUpsertExternalContactsRequest.md)|  | 

### Return type

[**BulkUpsertExternalContacts200Response**](BulkUpsertExternalContacts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **deleteExternalContact**
> deleteExternalContact(system, externalId)

Delete a contact by its id in another system

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactsApi();
final String system = system_example; // String | Your label for the system the record comes from, for example `salesforce`, `hubspot` or `odoo`. 1 to 64 characters: lowercase letters, digits, dot, underscore or hyphen (upper case is folded).
final String externalId = externalId_example; // String | The record's id in that system, kept exactly as given (case matters). 1 to 255 characters, no spaces. URL-encode it.

try {
    api.deleteExternalContact(system, externalId);
} on DioException catch (e) {
    print('Exception when calling ContactsApi->deleteExternalContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **String**| Your label for the system the record comes from, for example `salesforce`, `hubspot` or `odoo`. 1 to 64 characters: lowercase letters, digits, dot, underscore or hyphen (upper case is folded). | 
 **externalId** | **String**| The record's id in that system, kept exactly as given (case matters). 1 to 255 characters, no spaces. URL-encode it. | 

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

# **getExternalContact**
> Contact getExternalContact(system, externalId)

Get a contact by its id in another system

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactsApi();
final String system = system_example; // String | Your label for the system the record comes from, for example `salesforce`, `hubspot` or `odoo`. 1 to 64 characters: lowercase letters, digits, dot, underscore or hyphen (upper case is folded).
final String externalId = externalId_example; // String | The record's id in that system, kept exactly as given (case matters). 1 to 255 characters, no spaces. URL-encode it.

try {
    final response = api.getExternalContact(system, externalId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactsApi->getExternalContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **String**| Your label for the system the record comes from, for example `salesforce`, `hubspot` or `odoo`. 1 to 64 characters: lowercase letters, digits, dot, underscore or hyphen (upper case is folded). | 
 **externalId** | **String**| The record's id in that system, kept exactly as given (case matters). 1 to 255 characters, no spaces. URL-encode it. | 

### Return type

[**Contact**](Contact.md)

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

# **upsertExternalContact**
> Contact upsertExternalContact(system, externalId, externalContactInput)

Create or update a contact by its id in another system

Idempotent: the path is the identity, so sending the same request twice cannot create a second contact, and you never need to store our id. Returns 201 when the contact was created and 200 when it already existed. The body is the full representation: a field you leave out is cleared. Email is an ordinary attribute, not a key, so changing it updates the same contact. `mailboxes:write` is also accepted.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getContactsApi();
final String system = system_example; // String | Your label for the system the record comes from, for example `salesforce`, `hubspot` or `odoo`. 1 to 64 characters: lowercase letters, digits, dot, underscore or hyphen (upper case is folded).
final String externalId = externalId_example; // String | The record's id in that system, kept exactly as given (case matters). 1 to 255 characters, no spaces. URL-encode it.
final ExternalContactInput externalContactInput = ; // ExternalContactInput | 

try {
    final response = api.upsertExternalContact(system, externalId, externalContactInput);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ContactsApi->upsertExternalContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **String**| Your label for the system the record comes from, for example `salesforce`, `hubspot` or `odoo`. 1 to 64 characters: lowercase letters, digits, dot, underscore or hyphen (upper case is folded). | 
 **externalId** | **String**| The record's id in that system, kept exactly as given (case matters). 1 to 255 characters, no spaces. URL-encode it. | 
 **externalContactInput** | [**ExternalContactInput**](ExternalContactInput.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


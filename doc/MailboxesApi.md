# lockally.api.MailboxesApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSharedMember**](MailboxesApi.md#addsharedmember) | **POST** /v1/mailboxes/{email}/members | Add a shared mailbox member
[**createMailbox**](MailboxesApi.md#createmailbox) | **POST** /v1/mailboxes | Create a mailbox
[**deleteMailbox**](MailboxesApi.md#deletemailbox) | **DELETE** /v1/mailboxes/{email} | Soft-delete a mailbox
[**deleteVacationResponder**](MailboxesApi.md#deletevacationresponder) | **DELETE** /v1/mailboxes/{email}/vacation | Remove the vacation responder
[**downloadMailboxExport**](MailboxesApi.md#downloadmailboxexport) | **GET** /v1/mailboxes/{email}/export/download | Download a previously-issued mailbox export
[**exportMailbox**](MailboxesApi.md#exportmailbox) | **POST** /v1/mailboxes/{email}/export | Request a mailbox export
[**getMailbox**](MailboxesApi.md#getmailbox) | **GET** /v1/mailboxes/{email} | Get a mailbox
[**getVacationResponder**](MailboxesApi.md#getvacationresponder) | **GET** /v1/mailboxes/{email}/vacation | Get the vacation responder
[**listMailboxes**](MailboxesApi.md#listmailboxes) | **GET** /v1/mailboxes | List mailboxes
[**listSharedMembers**](MailboxesApi.md#listsharedmembers) | **GET** /v1/mailboxes/{email}/members | List shared mailbox members
[**listVacationResponders**](MailboxesApi.md#listvacationresponders) | **GET** /v1/vacation | List all vacation responders
[**removeSharedMember**](MailboxesApi.md#removesharedmember) | **DELETE** /v1/mailboxes/{email}/members/{memberEmail} | Remove a shared mailbox member
[**setVacationResponder**](MailboxesApi.md#setvacationresponder) | **PUT** /v1/mailboxes/{email}/vacation | Set the vacation responder
[**updateMailbox**](MailboxesApi.md#updatemailbox) | **PATCH** /v1/mailboxes/{email} | Update a mailbox


# **addSharedMember**
> SharedMember addSharedMember(email, addSharedMemberRequest)

Add a shared mailbox member

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 
final AddSharedMemberRequest addSharedMemberRequest = ; // AddSharedMemberRequest | 

try {
    final response = api.addSharedMember(email, addSharedMemberRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->addSharedMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **addSharedMemberRequest** | [**AddSharedMemberRequest**](AddSharedMemberRequest.md)|  | 

### Return type

[**SharedMember**](SharedMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMailbox**
> Mailbox createMailbox(createMailboxRequest)

Create a mailbox

Creates a mailbox on a tenant-verified domain. If `password` is omitted, lockally generates a 16-char password and returns it in the response, shown once.  **Gate.** The mailbox's domain must already be registered AND verified for this tenant (via `/v1/domains` + `/v1/domains/{domain}/verify`).  **Idempotent.** Re-posting the same email returns the existing mailbox UNTOUCHED, password is NOT regenerated. To change a password, use PATCH instead. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final CreateMailboxRequest createMailboxRequest = ; // CreateMailboxRequest | 

try {
    final response = api.createMailbox(createMailboxRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->createMailbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMailboxRequest** | [**CreateMailboxRequest**](CreateMailboxRequest.md)|  | 

### Return type

[**Mailbox**](Mailbox.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMailbox**
> deleteMailbox(email)

Soft-delete a mailbox

Sets `soft_deleted_at = now()` and `hard_delete_after = now() + 90d` per design D25. A background sweep (planned) will hard-delete after the window. The mailbox is also disabled immediately. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    api.deleteMailbox(email);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->deleteMailbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVacationResponder**
> deleteVacationResponder(email)

Remove the vacation responder

Idempotent, 204 whether or not a row existed.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    api.deleteVacationResponder(email);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->deleteVacationResponder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadMailboxExport**
> Uint8List downloadMailboxExport(email, token)

Download a previously-issued mailbox export

Public endpoint (no Authorization header). Validates the one-shot token from the URL, marks it used, and streams an mbox file. Second GET with the same token returns 404, tokens are single-use. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 
final String token = token_example; // String | 

try {
    final response = api.downloadMailboxExport(email, token);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->downloadMailboxExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **token** | **String**|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/mbox, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportMailbox**
> ExportMailbox201Response exportMailbox(email)

Request a mailbox export

Issues a one-shot \"presigned\" download URL for the mailbox's content in mbox format. The URL works without an Authorization header, the token in the query string is the authz. TTL is 5 minutes; the token is consumed on first GET.  **v1 caveat:** the synthesized mbox only contains outbound mail (sent mail only). A later version will cover received mail for full inbox + folder structure + flags. The endpoint contract stays unchanged.  **Scope changed:** this used to accept `mailboxes:read`. It takes any mailbox in the tenant and returns that mailbox's mail, so it now requires `tenant:admin`, matching `POST /v1/ediscovery/export`. A key scoped `mailboxes:read` gets 403 and has to be reissued; admin console sessions are unaffected. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    final response = api.exportMailbox(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->exportMailbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**ExportMailbox201Response**](ExportMailbox201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailbox**
> Mailbox getMailbox(email)

Get a mailbox

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    final response = api.getMailbox(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->getMailbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**Mailbox**](Mailbox.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVacationResponder**
> VacationResponder getVacationResponder(email)

Get the vacation responder

Returns the stored vacation rule or 404 if none is set.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    final response = api.getVacationResponder(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->getVacationResponder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**VacationResponder**](VacationResponder.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMailboxes**
> ListMailboxes200Response listMailboxes(limit)

List mailboxes

Returns mailboxes under the calling tenant, active and soft-deleted. `?limit=N` between 1 and 200 (default 50). 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final int limit = 56; // int | 

try {
    final response = api.listMailboxes(limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->listMailboxes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**ListMailboxes200Response**](ListMailboxes200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSharedMembers**
> ListSharedMembers200Response listSharedMembers(email)

List shared mailbox members

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    final response = api.listSharedMembers(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->listSharedMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**ListSharedMembers200Response**](ListSharedMembers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVacationResponders**
> ListVacationResponders200Response listVacationResponders()

List all vacation responders

Returns every vacation responder for the calling tenant.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();

try {
    final response = api.listVacationResponders();
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->listVacationResponders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListVacationResponders200Response**](ListVacationResponders200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeSharedMember**
> removeSharedMember(email, memberEmail)

Remove a shared mailbox member

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 
final String memberEmail = memberEmail_example; // String | 

try {
    api.removeSharedMember(email, memberEmail);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->removeSharedMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **memberEmail** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setVacationResponder**
> VacationResponder setVacationResponder(email, setVacationResponderRequest)

Set the vacation responder

Upsert, same endpoint creates or replaces the rule. Clears `synced_at`; the rule is staged until a later sync pushes it to the mail server. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 
final SetVacationResponderRequest setVacationResponderRequest = ; // SetVacationResponderRequest | 

try {
    final response = api.setVacationResponder(email, setVacationResponderRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->setVacationResponder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **setVacationResponderRequest** | [**SetVacationResponderRequest**](SetVacationResponderRequest.md)|  | 

### Return type

[**VacationResponder**](VacationResponder.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMailbox**
> Mailbox updateMailbox(email, updateMailboxRequest)

Update a mailbox

Supply at least one of `password`, `quota_bytes`, `disabled`. Returns the updated mailbox. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 
final UpdateMailboxRequest updateMailboxRequest = ; // UpdateMailboxRequest | 

try {
    final response = api.updateMailbox(email, updateMailboxRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->updateMailbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **updateMailboxRequest** | [**UpdateMailboxRequest**](UpdateMailboxRequest.md)|  | 

### Return type

[**Mailbox**](Mailbox.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


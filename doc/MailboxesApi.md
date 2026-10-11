# lockally.api.MailboxesApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSharedMember**](MailboxesApi.md#addsharedmember) | **POST** /v1/mailboxes/{email}/members | Add a shared mailbox member
[**listSharedMembers**](MailboxesApi.md#listsharedmembers) | **GET** /v1/mailboxes/{email}/members | List shared mailbox members
[**removeSharedMember**](MailboxesApi.md#removesharedmember) | **DELETE** /v1/mailboxes/{email}/members/{memberEmail} | Remove a shared mailbox member
[**v1MailboxesEmailDelete**](MailboxesApi.md#v1mailboxesemaildelete) | **DELETE** /v1/mailboxes/{email} | Soft-delete a mailbox
[**v1MailboxesEmailExportDownloadGet**](MailboxesApi.md#v1mailboxesemailexportdownloadget) | **GET** /v1/mailboxes/{email}/export/download | Download a previously-issued mailbox export
[**v1MailboxesEmailExportPost**](MailboxesApi.md#v1mailboxesemailexportpost) | **POST** /v1/mailboxes/{email}/export | Request a mailbox export
[**v1MailboxesEmailGet**](MailboxesApi.md#v1mailboxesemailget) | **GET** /v1/mailboxes/{email} | Get a mailbox
[**v1MailboxesEmailPatch**](MailboxesApi.md#v1mailboxesemailpatch) | **PATCH** /v1/mailboxes/{email} | Update a mailbox
[**v1MailboxesEmailVacationDelete**](MailboxesApi.md#v1mailboxesemailvacationdelete) | **DELETE** /v1/mailboxes/{email}/vacation | Remove the vacation responder
[**v1MailboxesEmailVacationGet**](MailboxesApi.md#v1mailboxesemailvacationget) | **GET** /v1/mailboxes/{email}/vacation | Get the vacation responder
[**v1MailboxesEmailVacationPut**](MailboxesApi.md#v1mailboxesemailvacationput) | **PUT** /v1/mailboxes/{email}/vacation | Set the vacation responder
[**v1MailboxesGet**](MailboxesApi.md#v1mailboxesget) | **GET** /v1/mailboxes | List mailboxes
[**v1MailboxesPost**](MailboxesApi.md#v1mailboxespost) | **POST** /v1/mailboxes | Create a mailbox
[**v1VacationGet**](MailboxesApi.md#v1vacationget) | **GET** /v1/vacation | List all vacation responders


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

# **v1MailboxesEmailDelete**
> v1MailboxesEmailDelete(email)

Soft-delete a mailbox

Sets `soft_deleted_at = now()` and `hard_delete_after = now() + 90d` per design D25. A background sweep (planned) will hard-delete after the window. The mailbox is also disabled immediately. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    api.v1MailboxesEmailDelete(email);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1MailboxesEmailDelete: $e\n');
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

# **v1MailboxesEmailExportDownloadGet**
> Uint8List v1MailboxesEmailExportDownloadGet(email, token)

Download a previously-issued mailbox export

Public endpoint (no Authorization header). Validates the one-shot token from the URL, marks it used, and streams an mbox file. Second GET with the same token returns 404 — tokens are single-use. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 
final String token = token_example; // String | 

try {
    final response = api.v1MailboxesEmailExportDownloadGet(email, token);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1MailboxesEmailExportDownloadGet: $e\n');
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

# **v1MailboxesEmailExportPost**
> V1MailboxesEmailExportPost201Response v1MailboxesEmailExportPost(email)

Request a mailbox export

Issues a one-shot \"presigned\" download URL for the mailbox's content in mbox format. The URL works without an Authorization header — the token in the query string is the authz. TTL is 5 minutes; the token is consumed on first GET.  **v1 caveat:** the synthesized mbox only contains outbound mail (from `lockally.messages`). v2 swaps in Stalwart's export primitive for full inbox + folder structure + flags. The endpoint contract stays unchanged.  **Scope changed:** this used to accept `mailboxes:read`. It takes any mailbox in the tenant and returns that mailbox's mail, so it now requires `tenant:admin`, matching `POST /v1/ediscovery/export`. A key scoped `mailboxes:read` gets 403 and has to be reissued; admin console sessions are unaffected. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    final response = api.v1MailboxesEmailExportPost(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1MailboxesEmailExportPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**V1MailboxesEmailExportPost201Response**](V1MailboxesEmailExportPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MailboxesEmailGet**
> Mailbox v1MailboxesEmailGet(email)

Get a mailbox

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    final response = api.v1MailboxesEmailGet(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1MailboxesEmailGet: $e\n');
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

# **v1MailboxesEmailPatch**
> Mailbox v1MailboxesEmailPatch(email, v1MailboxesEmailPatchRequest)

Update a mailbox

Supply at least one of `password`, `quota_bytes`, `disabled`. Returns the updated mailbox. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 
final V1MailboxesEmailPatchRequest v1MailboxesEmailPatchRequest = ; // V1MailboxesEmailPatchRequest | 

try {
    final response = api.v1MailboxesEmailPatch(email, v1MailboxesEmailPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1MailboxesEmailPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **v1MailboxesEmailPatchRequest** | [**V1MailboxesEmailPatchRequest**](V1MailboxesEmailPatchRequest.md)|  | 

### Return type

[**Mailbox**](Mailbox.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MailboxesEmailVacationDelete**
> v1MailboxesEmailVacationDelete(email)

Remove the vacation responder

Idempotent — 204 whether or not a row existed.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    api.v1MailboxesEmailVacationDelete(email);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1MailboxesEmailVacationDelete: $e\n');
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

# **v1MailboxesEmailVacationGet**
> VacationResponder v1MailboxesEmailVacationGet(email)

Get the vacation responder

Returns the stored vacation rule or 404 if none is set.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 

try {
    final response = api.v1MailboxesEmailVacationGet(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1MailboxesEmailVacationGet: $e\n');
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

# **v1MailboxesEmailVacationPut**
> VacationResponder v1MailboxesEmailVacationPut(email, v1MailboxesEmailVacationPutRequest)

Set the vacation responder

Upsert — same endpoint creates or replaces the rule. Clears `synced_at`; the rule is staged on lockally until a sync worker pushes it to the mail server. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final String email = email_example; // String | 
final V1MailboxesEmailVacationPutRequest v1MailboxesEmailVacationPutRequest = ; // V1MailboxesEmailVacationPutRequest | 

try {
    final response = api.v1MailboxesEmailVacationPut(email, v1MailboxesEmailVacationPutRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1MailboxesEmailVacationPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **v1MailboxesEmailVacationPutRequest** | [**V1MailboxesEmailVacationPutRequest**](V1MailboxesEmailVacationPutRequest.md)|  | 

### Return type

[**VacationResponder**](VacationResponder.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MailboxesGet**
> V1MailboxesGet200Response v1MailboxesGet(limit)

List mailboxes

Returns mailboxes under the calling tenant — active and soft-deleted. `?limit=N` between 1 and 200 (default 50). 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final int limit = 56; // int | 

try {
    final response = api.v1MailboxesGet(limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1MailboxesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**V1MailboxesGet200Response**](V1MailboxesGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MailboxesPost**
> Mailbox v1MailboxesPost(v1MailboxesPostRequest)

Create a mailbox

Creates a mailbox on a tenant-verified domain. If `password` is omitted, lockally generates a 16-char password and returns it in the response — shown once.  **Gate.** The mailbox's domain must already be registered AND verified for this tenant (via `/v1/domains` + `/v1/domains/{domain}/verify`).  **Idempotent.** Re-posting the same email returns the existing mailbox UNTOUCHED — password is NOT regenerated. To change a password, use PATCH instead. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();
final V1MailboxesPostRequest v1MailboxesPostRequest = ; // V1MailboxesPostRequest | 

try {
    final response = api.v1MailboxesPost(v1MailboxesPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1MailboxesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1MailboxesPostRequest** | [**V1MailboxesPostRequest**](V1MailboxesPostRequest.md)|  | 

### Return type

[**Mailbox**](Mailbox.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1VacationGet**
> V1VacationGet200Response v1VacationGet()

List all vacation responders

Returns every vacation responder for the calling tenant.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMailboxesApi();

try {
    final response = api.v1VacationGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailboxesApi->v1VacationGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1VacationGet200Response**](V1VacationGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


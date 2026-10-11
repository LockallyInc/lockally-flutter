# lockally.api.DraftsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1DraftsDraftIDApprovePost**](DraftsApi.md#v1draftsdraftidapprovepost) | **POST** /v1/drafts/{draftID}/approve | Approve a pending draft (human)
[**v1DraftsDraftIDCancelPost**](DraftsApi.md#v1draftsdraftidcancelpost) | **POST** /v1/drafts/{draftID}/cancel | Withdraw a pending draft
[**v1DraftsDraftIDGet**](DraftsApi.md#v1draftsdraftidget) | **GET** /v1/drafts/{draftID} | Get a draft
[**v1DraftsDraftIDRejectPost**](DraftsApi.md#v1draftsdraftidrejectpost) | **POST** /v1/drafts/{draftID}/reject | Reject a pending draft (human)
[**v1DraftsGet**](DraftsApi.md#v1draftsget) | **GET** /v1/drafts | List drafts
[**v1InboxesMailboxDraftsPost**](DraftsApi.md#v1inboxesmailboxdraftspost) | **POST** /v1/inboxes/{mailbox}/drafts | Propose a new conversation as a draft
[**v1ThreadsThreadIDDraftsPost**](DraftsApi.md#v1threadsthreadiddraftspost) | **POST** /v1/threads/{threadID}/drafts | Propose a reply as a draft


# **v1DraftsDraftIDApprovePost**
> JsonObject v1DraftsDraftIDApprovePost(draftID)

Approve a pending draft (human)

Sends the draft exactly as reviewed, through the agent stream (loop detector included). Fires draft.approved.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String draftID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1DraftsDraftIDApprovePost(draftID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->v1DraftsDraftIDApprovePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draftID** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DraftsDraftIDCancelPost**
> JsonObject v1DraftsDraftIDCancelPost(draftID)

Withdraw a pending draft

Only the API key that created the draft may cancel it.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String draftID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1DraftsDraftIDCancelPost(draftID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->v1DraftsDraftIDCancelPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draftID** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DraftsDraftIDGet**
> JsonObject v1DraftsDraftIDGet(draftID)

Get a draft

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String draftID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1DraftsDraftIDGet(draftID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->v1DraftsDraftIDGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draftID** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DraftsDraftIDRejectPost**
> JsonObject v1DraftsDraftIDRejectPost(draftID)

Reject a pending draft (human)

Body: {\"reason\": \"...\"} (optional). Fires draft.rejected.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String draftID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1DraftsDraftIDRejectPost(draftID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->v1DraftsDraftIDRejectPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draftID** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DraftsGet**
> JsonObject v1DraftsGet(status, limit)

List drafts

Filter with ?status=pending_approval|sent|rejected|cancelled. Keys see drafts of granted mailboxes; admin sessions see all.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String status = status_example; // String | 
final int limit = 56; // int | 

try {
    final response = api.v1DraftsGet(status, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->v1DraftsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1InboxesMailboxDraftsPost**
> JsonObject v1InboxesMailboxDraftsPost(mailbox, idempotencyKey)

Propose a new conversation as a draft

New-conversation drafts ALWAYS require human approval (policy flag new_thread). Idempotency-Key required.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String mailbox = mailbox_example; // String | 
final String idempotencyKey = idempotencyKey_example; // String | 

try {
    final response = api.v1InboxesMailboxDraftsPost(mailbox, idempotencyKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->v1InboxesMailboxDraftsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mailbox** | **String**|  | 
 **idempotencyKey** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ThreadsThreadIDDraftsPost**
> JsonObject v1ThreadsThreadIDDraftsPost(threadID, idempotencyKey)

Propose a reply as a draft

The safe default over /reply: the deterministic policy engine auto-sends clean in-thread replies and holds anything risky (PII, new recipients, injection-flagged threads, always-approve mailboxes) for human approval. Fires draft.pending_approval when held. Idempotency-Key required.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String idempotencyKey = idempotencyKey_example; // String | 

try {
    final response = api.v1ThreadsThreadIDDraftsPost(threadID, idempotencyKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->v1ThreadsThreadIDDraftsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 
 **idempotencyKey** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


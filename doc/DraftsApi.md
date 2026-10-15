# lockally.api.DraftsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approveDraft**](DraftsApi.md#approvedraft) | **POST** /v1/drafts/{draftID}/approve | Approve a pending draft (human)
[**cancelDraft**](DraftsApi.md#canceldraft) | **POST** /v1/drafts/{draftID}/cancel | Withdraw a pending draft
[**createConversationDraft**](DraftsApi.md#createconversationdraft) | **POST** /v1/inboxes/{mailbox}/drafts | Propose a new conversation as a draft
[**createReplyDraft**](DraftsApi.md#createreplydraft) | **POST** /v1/threads/{threadID}/drafts | Propose a reply as a draft
[**getDraft**](DraftsApi.md#getdraft) | **GET** /v1/drafts/{draftID} | Get a draft
[**listDrafts**](DraftsApi.md#listdrafts) | **GET** /v1/drafts | List drafts
[**rejectDraft**](DraftsApi.md#rejectdraft) | **POST** /v1/drafts/{draftID}/reject | Reject a pending draft (human)


# **approveDraft**
> DraftResult approveDraft(draftID)

Approve a pending draft (human)

Sends the draft exactly as reviewed, through the agent stream (loop detector included). Fires draft.approved.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String draftID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.approveDraft(draftID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->approveDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draftID** | **String**|  | 

### Return type

[**DraftResult**](DraftResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelDraft**
> Draft cancelDraft(draftID)

Withdraw a pending draft

Only the API key that created the draft may cancel it.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String draftID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.cancelDraft(draftID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->cancelDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draftID** | **String**|  | 

### Return type

[**Draft**](Draft.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createConversationDraft**
> DraftResult createConversationDraft(mailbox, idempotencyKey)

Propose a new conversation as a draft

New-conversation drafts ALWAYS require human approval (policy flag new_thread). Idempotency-Key required.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String mailbox = mailbox_example; // String | 
final String idempotencyKey = idempotencyKey_example; // String | 

try {
    final response = api.createConversationDraft(mailbox, idempotencyKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->createConversationDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mailbox** | **String**|  | 
 **idempotencyKey** | **String**|  | 

### Return type

[**DraftResult**](DraftResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createReplyDraft**
> DraftResult createReplyDraft(threadID, idempotencyKey)

Propose a reply as a draft

The safe default over /reply: the deterministic policy engine auto-sends clean in-thread replies and holds anything risky (PII, new recipients, injection-flagged threads, always-approve mailboxes) for human approval. Fires draft.pending_approval when held. Idempotency-Key required.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String idempotencyKey = idempotencyKey_example; // String | 

try {
    final response = api.createReplyDraft(threadID, idempotencyKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->createReplyDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 
 **idempotencyKey** | **String**|  | 

### Return type

[**DraftResult**](DraftResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDraft**
> Draft getDraft(draftID)

Get a draft

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String draftID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getDraft(draftID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->getDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draftID** | **String**|  | 

### Return type

[**Draft**](Draft.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDrafts**
> DraftList listDrafts(status, limit)

List drafts

Filter with ?status=pending_approval|sent|rejected|cancelled. Keys see drafts of granted mailboxes; admin sessions see all.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String status = status_example; // String | 
final int limit = 56; // int | 

try {
    final response = api.listDrafts(status, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->listDrafts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**DraftList**](DraftList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectDraft**
> Draft rejectDraft(draftID)

Reject a pending draft (human)

Body: {\"reason\": \"...\"} (optional). Fires draft.rejected.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDraftsApi();
final String draftID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.rejectDraft(draftID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DraftsApi->rejectDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draftID** | **String**|  | 

### Return type

[**Draft**](Draft.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


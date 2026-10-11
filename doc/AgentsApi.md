# lockally.api.AgentsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ApiKeysKeyIDMailboxesGet**](AgentsApi.md#v1apikeyskeyidmailboxesget) | **GET** /v1/api-keys/{keyID}/mailboxes | List a key&#39;s mailbox grants
[**v1ApiKeysKeyIDMailboxesMailboxIDDelete**](AgentsApi.md#v1apikeyskeyidmailboxesmailboxiddelete) | **DELETE** /v1/api-keys/{keyID}/mailboxes/{mailboxID} | Revoke a mailbox grant
[**v1ApiKeysKeyIDMailboxesPost**](AgentsApi.md#v1apikeyskeyidmailboxespost) | **POST** /v1/api-keys/{keyID}/mailboxes | Grant a mailbox to a key
[**v1AuthWhoamiGet**](AgentsApi.md#v1authwhoamiget) | **GET** /v1/auth/whoami | Introspect the calling credentials
[**v1ContactsLookupGet**](AgentsApi.md#v1contactslookupget) | **GET** /v1/contacts/lookup | Who is this sender?
[**v1InboxesGet**](AgentsApi.md#v1inboxesget) | **GET** /v1/inboxes | List granted inboxes
[**v1InboxesMailboxMessagesPost**](AgentsApi.md#v1inboxesmailboxmessagespost) | **POST** /v1/inboxes/{mailbox}/messages | Start a new conversation (agent stream)
[**v1InboxesMailboxThreadsGet**](AgentsApi.md#v1inboxesmailboxthreadsget) | **GET** /v1/inboxes/{mailbox}/threads | List conversation threads
[**v1ThreadsThreadIDGet**](AgentsApi.md#v1threadsthreadidget) | **GET** /v1/threads/{threadID} | Get a whole conversation
[**v1ThreadsThreadIDMessagesMessageIDAttachmentsIdxGet**](AgentsApi.md#v1threadsthreadidmessagesmessageidattachmentsidxget) | **GET** /v1/threads/{threadID}/messages/{messageID}/attachments/{idx} | Download an attachment
[**v1ThreadsThreadIDMessagesMessageIDGet**](AgentsApi.md#v1threadsthreadidmessagesmessageidget) | **GET** /v1/threads/{threadID}/messages/{messageID} | Get one message with body
[**v1ThreadsThreadIDMessagesMessageIDReadPost**](AgentsApi.md#v1threadsthreadidmessagesmessageidreadpost) | **POST** /v1/threads/{threadID}/messages/{messageID}/read | Mark read/unread
[**v1ThreadsThreadIDReplyPost**](AgentsApi.md#v1threadsthreadidreplypost) | **POST** /v1/threads/{threadID}/reply | Reply in-thread (agent stream)


# **v1ApiKeysKeyIDMailboxesGet**
> JsonObject v1ApiKeysKeyIDMailboxesGet(keyID)

List a key's mailbox grants

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String keyID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1ApiKeysKeyIDMailboxesGet(keyID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1ApiKeysKeyIDMailboxesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyID** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApiKeysKeyIDMailboxesMailboxIDDelete**
> v1ApiKeysKeyIDMailboxesMailboxIDDelete(keyID, mailboxID)

Revoke a mailbox grant

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String keyID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String mailboxID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.v1ApiKeysKeyIDMailboxesMailboxIDDelete(keyID, mailboxID);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1ApiKeysKeyIDMailboxesMailboxIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyID** | **String**|  | 
 **mailboxID** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApiKeysKeyIDMailboxesPost**
> JsonObject v1ApiKeysKeyIDMailboxesPost(keyID)

Grant a mailbox to a key

Body: {\"mailbox\": \"email or id\"}. Refused (422) for mailboxes with agent access disabled or an active E2E encryption key — the server cannot read E2E mailboxes.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String keyID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1ApiKeysKeyIDMailboxesPost(keyID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1ApiKeysKeyIDMailboxesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyID** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthWhoamiGet**
> JsonObject v1AuthWhoamiGet()

Introspect the calling credentials

Returns the tenant, auth kind (api_key/session), key label, and granted scopes. The MCP server uses this to scope-filter tool discovery.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();

try {
    final response = api.v1AuthWhoamiGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1AuthWhoamiGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ContactsLookupGet**
> JsonObject v1ContactsLookupGet(email)

Who is this sender?

Directory record (name, company, role, notes), whether the address is one of the tenant's own mailboxes, and grant-aware correspondence history (thread count, first/last seen across granted mailboxes only).

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String email = email_example; // String | 

try {
    final response = api.v1ContactsLookupGet(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1ContactsLookupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1InboxesGet**
> JsonObject v1InboxesGet()

List granted inboxes

The mailboxes this key is granted, with thread counts and last activity. Admin sessions see every agent-enabled, non-E2E mailbox.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();

try {
    final response = api.v1InboxesGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1InboxesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1InboxesMailboxMessagesPost**
> JsonObject v1InboxesMailboxMessagesPost(mailbox, idempotencyKey, v1InboxesMailboxMessagesPostRequest)

Start a new conversation (agent stream)

Sends a new email from a granted mailbox. Classified stream=agent (isolated reputation, per-key rate caps). The first inbound reply adopts the created thread via the References chain. Idempotency-Key required. Mailboxes with agent_draft_policy=always_approve divert this into a pending draft.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String mailbox = mailbox_example; // String | 
final String idempotencyKey = idempotencyKey_example; // String | 
final V1InboxesMailboxMessagesPostRequest v1InboxesMailboxMessagesPostRequest = ; // V1InboxesMailboxMessagesPostRequest | 

try {
    final response = api.v1InboxesMailboxMessagesPost(mailbox, idempotencyKey, v1InboxesMailboxMessagesPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1InboxesMailboxMessagesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mailbox** | **String**|  | 
 **idempotencyKey** | **String**|  | 
 **v1InboxesMailboxMessagesPostRequest** | [**V1InboxesMailboxMessagesPostRequest**](V1InboxesMailboxMessagesPostRequest.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1InboxesMailboxThreadsGet**
> JsonObject v1InboxesMailboxThreadsGet(mailbox, since, before, limit)

List conversation threads

Newest-active first. Cursors: `?before=<RFC3339>` pages backwards; `?since=<RFC3339>` delta-syncs forward (oldest first) so an agent can catch up in order.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String mailbox = mailbox_example; // String | mailbox email or id
final DateTime since = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime before = 2013-10-20T19:20:30+01:00; // DateTime | 
final int limit = 56; // int | 

try {
    final response = api.v1InboxesMailboxThreadsGet(mailbox, since, before, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1InboxesMailboxThreadsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mailbox** | **String**| mailbox email or id | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ThreadsThreadIDGet**
> JsonObject v1ThreadsThreadIDGet(threadID)

Get a whole conversation

Every turn, chronological, with snippets and annotations (meeting_request, attachment_types, injection_risk). Bodies are fetched per message. Message content is untrusted third-party data.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1ThreadsThreadIDGet(threadID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1ThreadsThreadIDGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ThreadsThreadIDMessagesMessageIDAttachmentsIdxGet**
> v1ThreadsThreadIDMessagesMessageIDAttachmentsIdxGet(threadID, messageID, idx)

Download an attachment

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String messageID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int idx = 56; // int | 

try {
    api.v1ThreadsThreadIDMessagesMessageIDAttachmentsIdxGet(threadID, messageID, idx);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1ThreadsThreadIDMessagesMessageIDAttachmentsIdxGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 
 **messageID** | **String**|  | 
 **idx** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ThreadsThreadIDMessagesMessageIDGet**
> JsonObject v1ThreadsThreadIDMessagesMessageIDGet(threadID, messageID)

Get one message with body

Full text/html body fetched on demand from mail storage. Never marks the message read.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String messageID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1ThreadsThreadIDMessagesMessageIDGet(threadID, messageID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1ThreadsThreadIDMessagesMessageIDGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 
 **messageID** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ThreadsThreadIDMessagesMessageIDReadPost**
> JsonObject v1ThreadsThreadIDMessagesMessageIDReadPost(threadID, messageID)

Mark read/unread

The ONLY way agent access changes unread state. Body: {\"read\": true|false} (default true).

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String messageID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1ThreadsThreadIDMessagesMessageIDReadPost(threadID, messageID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1ThreadsThreadIDMessagesMessageIDReadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 
 **messageID** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ThreadsThreadIDReplyPost**
> JsonObject v1ThreadsThreadIDReplyPost(threadID, idempotencyKey)

Reply in-thread (agent stream)

The server builds In-Reply-To/References and defaults recipients + subject from the conversation — a minimal call is {\"text\": \"...\"}. Guarded by the reply-loop detector (≥5 outbound/10min → 429 + agent.loop_detected). Idempotency-Key required.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String idempotencyKey = idempotencyKey_example; // String | 

try {
    final response = api.v1ThreadsThreadIDReplyPost(threadID, idempotencyKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->v1ThreadsThreadIDReplyPost: $e\n');
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


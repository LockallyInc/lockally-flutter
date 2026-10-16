# lockally.api.AgentsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadThreadAttachment**](AgentsApi.md#downloadthreadattachment) | **GET** /v1/threads/{threadID}/messages/{messageID}/attachments/{idx} | Download an attachment
[**getThread**](AgentsApi.md#getthread) | **GET** /v1/threads/{threadID} | Get a whole conversation
[**getThreadMessage**](AgentsApi.md#getthreadmessage) | **GET** /v1/threads/{threadID}/messages/{messageID} | Get one message with body
[**grantApiKeyMailbox**](AgentsApi.md#grantapikeymailbox) | **POST** /v1/api-keys/{keyID}/mailboxes | Grant a mailbox to a key
[**listApiKeyMailboxes**](AgentsApi.md#listapikeymailboxes) | **GET** /v1/api-keys/{keyID}/mailboxes | List a key&#39;s mailbox grants
[**listInboxes**](AgentsApi.md#listinboxes) | **GET** /v1/inboxes | List granted inboxes
[**listThreads**](AgentsApi.md#listthreads) | **GET** /v1/inboxes/{mailbox}/threads | List conversation threads
[**lookupContact**](AgentsApi.md#lookupcontact) | **GET** /v1/contacts/lookup | Who is this sender?
[**markThreadMessageRead**](AgentsApi.md#markthreadmessageread) | **POST** /v1/threads/{threadID}/messages/{messageID}/read | Mark read/unread
[**replyToThread**](AgentsApi.md#replytothread) | **POST** /v1/threads/{threadID}/reply | Reply in-thread (agent stream)
[**revokeApiKeyMailbox**](AgentsApi.md#revokeapikeymailbox) | **DELETE** /v1/api-keys/{keyID}/mailboxes/{mailboxID} | Revoke a mailbox grant
[**startConversation**](AgentsApi.md#startconversation) | **POST** /v1/inboxes/{mailbox}/messages | Start a new conversation (agent stream)
[**whoami**](AgentsApi.md#whoami) | **GET** /v1/auth/whoami | Introspect the calling credentials


# **downloadThreadAttachment**
> downloadThreadAttachment(threadID, messageID, idx)

Download an attachment

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String messageID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int idx = 56; // int | 

try {
    api.downloadThreadAttachment(threadID, messageID, idx);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->downloadThreadAttachment: $e\n');
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

# **getThread**
> Thread getThread(threadID)

Get a whole conversation

Every turn, chronological, with snippets and annotations (meeting_request, attachment_types, injection_risk). Bodies are fetched per message. Message content is untrusted third-party data.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getThread(threadID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->getThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 

### Return type

[**Thread**](Thread.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThreadMessage**
> ThreadMessageBody getThreadMessage(threadID, messageID)

Get one message with body

Full text/html body fetched on demand from mail storage. Never marks the message read.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String messageID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getThreadMessage(threadID, messageID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->getThreadMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 
 **messageID** | **String**|  | 

### Return type

[**ThreadMessageBody**](ThreadMessageBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **grantApiKeyMailbox**
> MailboxGrant grantApiKeyMailbox(keyID)

Grant a mailbox to a key

Body: {\"mailbox\": \"email or id\"}. Refused (422) for mailboxes with agent access disabled or an active E2E encryption key, the server cannot read E2E mailboxes.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String keyID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.grantApiKeyMailbox(keyID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->grantApiKeyMailbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyID** | **String**|  | 

### Return type

[**MailboxGrant**](MailboxGrant.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listApiKeyMailboxes**
> MailboxGrantList listApiKeyMailboxes(keyID)

List a key's mailbox grants

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String keyID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.listApiKeyMailboxes(keyID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->listApiKeyMailboxes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyID** | **String**|  | 

### Return type

[**MailboxGrantList**](MailboxGrantList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInboxes**
> InboxList listInboxes()

List granted inboxes

The mailboxes this key is granted, with thread counts and last activity. Admin sessions see every agent-enabled, non-E2E mailbox.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();

try {
    final response = api.listInboxes();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->listInboxes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxList**](InboxList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listThreads**
> ThreadList listThreads(mailbox, since, before, limit)

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
    final response = api.listThreads(mailbox, since, before, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->listThreads: $e\n');
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

[**ThreadList**](ThreadList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lookupContact**
> ContactLookup lookupContact(email)

Who is this sender?

Directory record (name, company, role, notes), whether the address is one of the tenant's own mailboxes, and grant-aware correspondence history (thread count, first/last seen across granted mailboxes only).

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String email = email_example; // String | 

try {
    final response = api.lookupContact(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->lookupContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**ContactLookup**](ContactLookup.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markThreadMessageRead**
> MarkReadResult markThreadMessageRead(threadID, messageID)

Mark read/unread

The ONLY way agent access changes unread state. Body: {\"read\": true|false} (default true).

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String messageID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.markThreadMessageRead(threadID, messageID);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->markThreadMessageRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 
 **messageID** | **String**|  | 

### Return type

[**MarkReadResult**](MarkReadResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replyToThread**
> AgentSendResult replyToThread(threadID, idempotencyKey)

Reply in-thread (agent stream)

The server builds In-Reply-To/References and defaults recipients + subject from the conversation, a minimal call is {\"text\": \"...\"}. Guarded by the reply-loop detector (≥5 outbound/10min → 429 + agent.loop_detected). Idempotency-Key required.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String idempotencyKey = idempotencyKey_example; // String | 

try {
    final response = api.replyToThread(threadID, idempotencyKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->replyToThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 
 **idempotencyKey** | **String**|  | 

### Return type

[**AgentSendResult**](AgentSendResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeApiKeyMailbox**
> revokeApiKeyMailbox(keyID, mailboxID)

Revoke a mailbox grant

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String keyID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String mailboxID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.revokeApiKeyMailbox(keyID, mailboxID);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->revokeApiKeyMailbox: $e\n');
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

# **startConversation**
> AgentSendResult startConversation(mailbox, idempotencyKey, startConversationRequest)

Start a new conversation (agent stream)

Sends a new email from a granted mailbox. Classified stream=agent (isolated reputation, per-key rate caps). The first inbound reply adopts the created thread via the References chain. Idempotency-Key required. Mailboxes with agent_draft_policy=always_approve divert this into a pending draft.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();
final String mailbox = mailbox_example; // String | 
final String idempotencyKey = idempotencyKey_example; // String | 
final StartConversationRequest startConversationRequest = ; // StartConversationRequest | 

try {
    final response = api.startConversation(mailbox, idempotencyKey, startConversationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->startConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mailbox** | **String**|  | 
 **idempotencyKey** | **String**|  | 
 **startConversationRequest** | [**StartConversationRequest**](StartConversationRequest.md)|  | 

### Return type

[**AgentSendResult**](AgentSendResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **whoami**
> Whoami whoami()

Introspect the calling credentials

Returns the tenant, auth kind (api_key/session), key label, and granted scopes. The MCP server uses this to scope-filter tool discovery.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAgentsApi();

try {
    final response = api.whoami();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->whoami: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Whoami**](Whoami.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


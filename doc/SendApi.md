# lockally.api.SendApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1MessagesGet**](SendApi.md#v1messagesget) | **GET** /v1/messages | List outbound messages
[**v1MessagesIdDelete**](SendApi.md#v1messagesiddelete) | **DELETE** /v1/messages/{id} | Cancel a scheduled send
[**v1MessagesIdGet**](SendApi.md#v1messagesidget) | **GET** /v1/messages/{id} | Get message status
[**v1MessagesStatsGet**](SendApi.md#v1messagesstatsget) | **GET** /v1/messages/stats | Aggregate delivery stats
[**v1SendBatchPost**](SendApi.md#v1sendbatchpost) | **POST** /v1/send/batch | Send a batch of emails
[**v1SendPost**](SendApi.md#v1sendpost) | **POST** /v1/send | Send an email


# **v1MessagesGet**
> V1MessagesGet200Response v1MessagesGet(status, sender, q, since, cursor, limit)

List outbound messages

Returns recent outbound messages for the calling tenant, sorted newest first. Backs the send-status pill in the SvelteKit /sends view and the outbound search box. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSendApi();
final String status = status_example; // String | 
final String sender = sender_example; // String | Exact match against the `from` mailbox.
final String q = q_example; // String | Free-text search across subject + sender.
final DateTime since = 2013-10-20T19:20:30+01:00; // DateTime | Only messages queued at or after this RFC 3339 instant.
final String cursor = cursor_example; // String | queued_at of the prior page boundary. Pass back the `next_cursor` returned by the previous call.
final int limit = 56; // int | 

try {
    final response = api.v1MessagesGet(status, sender, q, since, cursor, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SendApi->v1MessagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | [optional] 
 **sender** | **String**| Exact match against the `from` mailbox. | [optional] 
 **q** | **String**| Free-text search across subject + sender. | [optional] 
 **since** | **DateTime**| Only messages queued at or after this RFC 3339 instant. | [optional] 
 **cursor** | **String**| queued_at of the prior page boundary. Pass back the `next_cursor` returned by the previous call. | [optional] 
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**V1MessagesGet200Response**](V1MessagesGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MessagesIdDelete**
> v1MessagesIdDelete(id)

Cancel a scheduled send

Cancels a still-scheduled message (future queued_at). Already sending/sent → 409.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSendApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.v1MessagesIdDelete(id);
} on DioException catch (e) {
    print('Exception when calling SendApi->v1MessagesIdDelete: $e\n');
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

# **v1MessagesIdGet**
> MessageDetail v1MessagesIdGet(id)

Get message status

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSendApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1MessagesIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SendApi->v1MessagesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MessageDetail**](MessageDetail.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MessagesStatsGet**
> MessageStats v1MessagesStatsGet(from, to, domain)

Aggregate delivery stats

Counts by delivery outcome (delivered/bounced/deferred/complaint) plus rates over a window, from the delivery-event store. Privacy-first: this reflects what receiving servers reported, NOT whether a human opened the mail — Lockally does no open/click tracking. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSendApi();
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | Window start (default 7 days ago).
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | Window end (default now).
final String domain = domain_example; // String | Filter by sender domain.

try {
    final response = api.v1MessagesStatsGet(from, to, domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SendApi->v1MessagesStatsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**| Window start (default 7 days ago). | [optional] 
 **to** | **DateTime**| Window end (default now). | [optional] 
 **domain** | **String**| Filter by sender domain. | [optional] 

### Return type

[**MessageStats**](MessageStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SendBatchPost**
> V1SendBatchPost200Response v1SendBatchPost(idempotencyKey, v1SendBatchPostRequest)

Send a batch of emails

Sends up to 500 messages in one call. Each is validated and enqueued independently — a bad message fails only its own slot (partial success, HTTP 200). One `Idempotency-Key` header covers the batch; per-message keys are derived as `<key>:<index>`. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSendApi();
final String idempotencyKey = idempotencyKey_example; // String | 
final V1SendBatchPostRequest v1SendBatchPostRequest = ; // V1SendBatchPostRequest | 

try {
    final response = api.v1SendBatchPost(idempotencyKey, v1SendBatchPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SendApi->v1SendBatchPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotencyKey** | **String**|  | 
 **v1SendBatchPostRequest** | [**V1SendBatchPostRequest**](V1SendBatchPostRequest.md)|  | 

### Return type

[**V1SendBatchPost200Response**](V1SendBatchPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SendPost**
> V1SendPost200Response v1SendPost(idempotencyKey, v1SendPostRequest)

Send an email

Submits an email for delivery via lockally. Returns 202 immediately once the message is accepted into lockally's queue; the actual SMTP submission to the recipient is async. Track delivery via `GET /v1/messages/{id}` or webhook subscriptions for `delivery.delivered` / `delivery.bounced` / `delivery.complaint`.  **Idempotency-Key required.** Per design L7 — any unique string per send, 24-hour dedupe window. Repeated calls with the same key return byte-exact the original response and do NOT create a duplicate message.  **Sender authorisation.** `from` must be a non-disabled mailbox owned by the calling tenant on a verified domain. Sending from aliases is not yet supported.  **Rate cap.** Per-tenant `rate_cap_per_min` (returned on `/v1/tenant`) is enforced — 429 with `Retry-After: 60` once tripped.  **Recipient warning.** Over 25 total recipients (To+Cc+Bcc) sets a `warning` field in the response — large fan-outs queue noticeably at scale. Hard cap is 100/send.  **Not every success is a 202.** Check the status code, not just the body. A `200` means nothing was queued: either every recipient was already suppressed, or the call used a test key and the send was simulated. Both are successes, and neither produces a real delivery. See the `200` response below.  **Warm-up headers.** While the platform is in its outbound warm-up ramp, accepted sends carry `X-Warmup-Day`, `X-Warmup-Daily-Cap` and `X-Warmup-Used-Today`. They describe a platform-wide cap shared by every tenant, not your own allowance, and they disappear once the ramp finishes. Hitting the cap returns 429. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSendApi();
final String idempotencyKey = idempotencyKey_example; // String | 
final V1SendPostRequest v1SendPostRequest = ; // V1SendPostRequest | 

try {
    final response = api.v1SendPost(idempotencyKey, v1SendPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SendApi->v1SendPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotencyKey** | **String**|  | 
 **v1SendPostRequest** | [**V1SendPostRequest**](V1SendPostRequest.md)|  | 

### Return type

[**V1SendPost200Response**](V1SendPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


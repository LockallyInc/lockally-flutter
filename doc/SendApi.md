# lockally.api.SendApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelMessage**](SendApi.md#cancelmessage) | **DELETE** /v1/messages/{id} | Cancel a scheduled send
[**getMessage**](SendApi.md#getmessage) | **GET** /v1/messages/{id} | Get message status
[**getMessageStats**](SendApi.md#getmessagestats) | **GET** /v1/messages/stats | Aggregate delivery stats
[**listMessages**](SendApi.md#listmessages) | **GET** /v1/messages | List outbound messages
[**sendEmail**](SendApi.md#sendemail) | **POST** /v1/send | Send an email
[**sendEmailBatch**](SendApi.md#sendemailbatch) | **POST** /v1/send/batch | Send a batch of emails


# **cancelMessage**
> cancelMessage(id)

Cancel a scheduled send

Cancels a still-scheduled message (future queued_at). Already sending/sent → 409.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSendApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.cancelMessage(id);
} on DioException catch (e) {
    print('Exception when calling SendApi->cancelMessage: $e\n');
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

# **getMessage**
> MessageDetail getMessage(id)

Get message status

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSendApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getMessage(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SendApi->getMessage: $e\n');
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

# **getMessageStats**
> MessageStats getMessageStats(from, to, domain)

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
    final response = api.getMessageStats(from, to, domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SendApi->getMessageStats: $e\n');
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

# **listMessages**
> ListMessages200Response listMessages(status, sender, q, since, cursor, limit)

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
    final response = api.listMessages(status, sender, q, since, cursor, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SendApi->listMessages: $e\n');
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

[**ListMessages200Response**](ListMessages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmail**
> SendEmail200Response sendEmail(idempotencyKey, sendEmailRequest)

Send an email

Submits an email for delivery via lockally. Returns 202 immediately once the message is accepted into lockally's queue; the actual SMTP submission to the recipient is async. Track delivery via `GET /v1/messages/{id}` or webhook subscriptions for `delivery.delivered` / `delivery.bounced` / `delivery.complaint`.  **Idempotency-Key required.** Per design L7 — any unique string per send, 24-hour dedupe window. Repeated calls with the same key return byte-exact the original response and do NOT create a duplicate message.  **Sender authorisation.** `from` must be an address the calling tenant owns on a verified domain. A mailbox always qualifies. On business and combined accounts an **alias** qualifies too, so a send-only address such as `no-reply@` need not be a billed seat. An alias on an unverified domain, or one belonging to another account, is refused with `403`. A catch-all creates no aliases and so grants no sending rights.  **Rate cap.** Per-tenant `rate_cap_per_min` (returned on `/v1/tenant`) is enforced — 429 with `Retry-After: 60` once tripped.  **Recipient warning.** Over 25 total recipients (To+Cc+Bcc) sets a `warning` field in the response — large fan-outs queue noticeably at scale. Hard cap is 100/send.  **Not every success is a 202.** Check the status code, not just the body. A `200` means nothing was queued: either every recipient was already suppressed, or the call used a test key and the send was simulated. Both are successes, and neither produces a real delivery. See the `200` response below.  **Warm-up headers.** While the platform is in its outbound warm-up ramp, accepted sends carry `X-Warmup-Day`, `X-Warmup-Daily-Cap` and `X-Warmup-Used-Today`. They describe a platform-wide cap shared by every tenant, not your own allowance, and they disappear once the ramp finishes. Hitting the cap returns 429. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSendApi();
final String idempotencyKey = idempotencyKey_example; // String | 
final SendEmailRequest sendEmailRequest = ; // SendEmailRequest | 

try {
    final response = api.sendEmail(idempotencyKey, sendEmailRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SendApi->sendEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotencyKey** | **String**|  | 
 **sendEmailRequest** | [**SendEmailRequest**](SendEmailRequest.md)|  | 

### Return type

[**SendEmail200Response**](SendEmail200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmailBatch**
> SendEmailBatch200Response sendEmailBatch(idempotencyKey, sendEmailBatchRequest)

Send a batch of emails

Sends up to 500 messages in one call. Each is validated and enqueued independently — a bad message fails only its own slot (partial success, HTTP 200). One `Idempotency-Key` header covers the batch; per-message keys are derived as `<key>:<index>`. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSendApi();
final String idempotencyKey = idempotencyKey_example; // String | 
final SendEmailBatchRequest sendEmailBatchRequest = ; // SendEmailBatchRequest | 

try {
    final response = api.sendEmailBatch(idempotencyKey, sendEmailBatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SendApi->sendEmailBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotencyKey** | **String**|  | 
 **sendEmailBatchRequest** | [**SendEmailBatchRequest**](SendEmailBatchRequest.md)|  | 

### Return type

[**SendEmailBatch200Response**](SendEmailBatch200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


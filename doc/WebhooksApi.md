# lockally.api.WebhooksApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1WebhooksGet**](WebhooksApi.md#v1webhooksget) | **GET** /v1/webhooks | List webhooks
[**v1WebhooksIdDelete**](WebhooksApi.md#v1webhooksiddelete) | **DELETE** /v1/webhooks/{id} | Delete a webhook
[**v1WebhooksIdPatch**](WebhooksApi.md#v1webhooksidpatch) | **PATCH** /v1/webhooks/{id} | Update a webhook
[**v1WebhooksPost**](WebhooksApi.md#v1webhookspost) | **POST** /v1/webhooks | Create a webhook


# **v1WebhooksGet**
> V1WebhooksGet200Response v1WebhooksGet()

List webhooks

Returns the calling tenant's webhook subscriptions. Never returns the signing secret — only metadata. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getWebhooksApi();

try {
    final response = api.v1WebhooksGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling WebhooksApi->v1WebhooksGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1WebhooksGet200Response**](V1WebhooksGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1WebhooksIdDelete**
> v1WebhooksIdDelete(id)

Delete a webhook

Hard-delete; cascades to `webhook_deliveries` history.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getWebhooksApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.v1WebhooksIdDelete(id);
} on DioException catch (e) {
    print('Exception when calling WebhooksApi->v1WebhooksIdDelete: $e\n');
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

# **v1WebhooksIdPatch**
> Webhook v1WebhooksIdPatch(id, v1WebhooksIdPatchRequest)

Update a webhook

Supply at least one of `url`, `events`, `paused`. Setting `paused` to `false` ALSO resets `consecutive_failures` to 0 — re-arms the 50-failure auto-pause counter. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getWebhooksApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final V1WebhooksIdPatchRequest v1WebhooksIdPatchRequest = ; // V1WebhooksIdPatchRequest | 

try {
    final response = api.v1WebhooksIdPatch(id, v1WebhooksIdPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WebhooksApi->v1WebhooksIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **v1WebhooksIdPatchRequest** | [**V1WebhooksIdPatchRequest**](V1WebhooksIdPatchRequest.md)|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1WebhooksPost**
> Webhook v1WebhooksPost(v1WebhooksPostRequest)

Create a webhook

Subscribes a URL to one or more event types. Returns the `signing_secret` ONCE in the response — store it immediately. The dispatcher signs every outbound POST per design L3:      X-Lockally-Signature: t=<unix>,v1=<hex(hmac_sha256(secret, t + \".\" + body))>  Verify on your end using HMAC-SHA256 with a 5-minute timestamp window (replay protection). A reference verifier ships in [internal/webhook](https://github.com/ucheigwedinma/lockally/blob/main/internal/webhook/sign.go).  Event names: see the [event catalogue](https://github.com/ucheigwedinma/lockally/blob/main/docs/v1-design.md#64-webhook-event-catalogue-v1). 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getWebhooksApi();
final V1WebhooksPostRequest v1WebhooksPostRequest = ; // V1WebhooksPostRequest | 

try {
    final response = api.v1WebhooksPost(v1WebhooksPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WebhooksApi->v1WebhooksPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1WebhooksPostRequest** | [**V1WebhooksPostRequest**](V1WebhooksPostRequest.md)|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# lockally.api.WebhooksApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](WebhooksApi.md#createwebhook) | **POST** /v1/webhooks | Create a webhook
[**deleteWebhook**](WebhooksApi.md#deletewebhook) | **DELETE** /v1/webhooks/{id} | Delete a webhook
[**listWebhooks**](WebhooksApi.md#listwebhooks) | **GET** /v1/webhooks | List webhooks
[**updateWebhook**](WebhooksApi.md#updatewebhook) | **PATCH** /v1/webhooks/{id} | Update a webhook


# **createWebhook**
> Webhook createWebhook(createWebhookRequest)

Create a webhook

Subscribes a URL to one or more event types. Returns the `signing_secret` ONCE in the response — store it immediately. The dispatcher signs every outbound POST per design L3:      X-Lockally-Signature: t=<unix>,v1=<hex(hmac_sha256(secret, t + \".\" + body))>  Verify on your end using HMAC-SHA256 with a 5-minute timestamp window (replay protection). A reference verifier ships in [internal/webhook](https://github.com/ucheigwedinma/lockally/blob/main/internal/webhook/sign.go).  Event names: see the [event catalogue](https://github.com/ucheigwedinma/lockally/blob/main/docs/v1-design.md#64-webhook-event-catalogue-v1). 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getWebhooksApi();
final CreateWebhookRequest createWebhookRequest = ; // CreateWebhookRequest | 

try {
    final response = api.createWebhook(createWebhookRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WebhooksApi->createWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWebhookRequest** | [**CreateWebhookRequest**](CreateWebhookRequest.md)|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhook**
> deleteWebhook(id)

Delete a webhook

Hard-delete; cascades to `webhook_deliveries` history.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getWebhooksApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteWebhook(id);
} on DioException catch (e) {
    print('Exception when calling WebhooksApi->deleteWebhook: $e\n');
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

# **listWebhooks**
> ListWebhooks200Response listWebhooks()

List webhooks

Returns the calling tenant's webhook subscriptions. Never returns the signing secret — only metadata. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getWebhooksApi();

try {
    final response = api.listWebhooks();
    print(response);
} on DioException catch (e) {
    print('Exception when calling WebhooksApi->listWebhooks: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListWebhooks200Response**](ListWebhooks200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWebhook**
> Webhook updateWebhook(id, updateWebhookRequest)

Update a webhook

Supply at least one of `url`, `events`, `paused`. Setting `paused` to `false` ALSO resets `consecutive_failures` to 0 — re-arms the 50-failure auto-pause counter. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getWebhooksApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateWebhookRequest updateWebhookRequest = ; // UpdateWebhookRequest | 

try {
    final response = api.updateWebhook(id, updateWebhookRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WebhooksApi->updateWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateWebhookRequest** | [**UpdateWebhookRequest**](UpdateWebhookRequest.md)|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


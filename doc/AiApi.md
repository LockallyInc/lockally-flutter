# lockally.api.AiApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classifyThread**](AiApi.md#classifythread) | **POST** /v1/threads/{threadID}/classify | LLM-classify a thread
[**createAiUnitsCheckout**](AiApi.md#createaiunitscheckout) | **POST** /v1/billing/ai-units/checkout | Buy prepaid AI units
[**getAiConfig**](AiApi.md#getaiconfig) | **GET** /v1/ai-config | Read the tenant&#39;s AI configuration
[**updateAiConfig**](AiApi.md#updateaiconfig) | **PUT** /v1/ai-config | Configure the AI tier


# **classifyThread**
> ThreadClassification classifyThread(threadID, refresh)

LLM-classify a thread

Returns {intent, urgency, summary, suggested_action} via the tenant's AI tier (BYOK or prepaid units — see /v1/ai-config). Cached per thread state: unchanged threads return the cache free; ?refresh=true forces a re-run. A failed model call charges nothing. 402 when the AI tier is off.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAiApi();
final String threadID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final bool refresh = true; // bool | 

try {
    final response = api.classifyThread(threadID, refresh);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiApi->classifyThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadID** | **String**|  | 
 **refresh** | **bool**|  | [optional] 

### Return type

[**ThreadClassification**](ThreadClassification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAiUnitsCheckout**
> CreateAiUnitsCheckout200Response createAiUnitsCheckout()

Buy prepaid AI units

Body: {\"bundle\": \"100|500|2000\"}. One classification = one unit; bundles expire after 6 months. Admin session required. 503 until Paystack billing is configured.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAiApi();

try {
    final response = api.createAiUnitsCheckout();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiApi->createAiUnitsCheckout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CreateAiUnitsCheckout200Response**](CreateAiUnitsCheckout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAiConfig**
> AiConfig getAiConfig()

Read the tenant's AI configuration

Mode (off/byok/units), model, masked key hint, AI-unit balance, whether the units tier is available on this deployment.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAiApi();

try {
    final response = api.getAiConfig();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiApi->getAiConfig: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiConfig**](AiConfig.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAiConfig**
> AiConfigUpdate updateAiConfig()

Configure the AI tier

Body: {\"mode\": \"off|byok|units\", \"model\": \"...\", \"anthropic_key\": \"sk-ant-...\"}. BYOK keys are stored AES-256-GCM encrypted; the cleartext is never returned. Omit anthropic_key to keep the stored one.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAiApi();

try {
    final response = api.updateAiConfig();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiApi->updateAiConfig: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiConfigUpdate**](AiConfigUpdate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


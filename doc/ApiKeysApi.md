# lockally.api.ApiKeysApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApiKey**](ApiKeysApi.md#createapikey) | **POST** /v1/api-keys | Create an API key
[**listApiKeys**](ApiKeysApi.md#listapikeys) | **GET** /v1/api-keys | List API keys
[**revokeApiKey**](ApiKeysApi.md#revokeapikey) | **DELETE** /v1/api-keys/{id} | Revoke an API key


# **createApiKey**
> CreateApiKey201Response createApiKey(createApiKeyRequest)

Create an API key

Provisions a fresh API key for the calling tenant.  **The full `secret` is included in this response ONLY** — store it immediately. The cleartext secret is not recoverable from the argon2id hash kept server-side; rotate by creating a new key and revoking the old one. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getApiKeysApi();
final CreateApiKeyRequest createApiKeyRequest = ; // CreateApiKeyRequest | 

try {
    final response = api.createApiKey(createApiKeyRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeysApi->createApiKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createApiKeyRequest** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md)|  | 

### Return type

[**CreateApiKey201Response**](CreateApiKey201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listApiKeys**
> ListApiKeys200Response listApiKeys()

List API keys

Returns all API keys (active and revoked) belonging to the calling tenant. The `secret` is **never** returned — only prefix + metadata. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getApiKeysApi();

try {
    final response = api.listApiKeys();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeysApi->listApiKeys: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListApiKeys200Response**](ListApiKeys200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeApiKey**
> revokeApiKey(id)

Revoke an API key

Soft-deletes (sets `revoked_at`) on the named key. The row stays for audit purposes; the key no longer authenticates.  You **cannot revoke the key currently being used** to make this call — that would lock you out. Use a different `tenant:admin` key. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getApiKeysApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.revokeApiKey(id);
} on DioException catch (e) {
    print('Exception when calling ApiKeysApi->revokeApiKey: $e\n');
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


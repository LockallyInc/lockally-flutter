# lockally.api.ApiKeysApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ApiKeysGet**](ApiKeysApi.md#v1apikeysget) | **GET** /v1/api-keys | List API keys
[**v1ApiKeysIdDelete**](ApiKeysApi.md#v1apikeysiddelete) | **DELETE** /v1/api-keys/{id} | Revoke an API key
[**v1ApiKeysPost**](ApiKeysApi.md#v1apikeyspost) | **POST** /v1/api-keys | Create an API key


# **v1ApiKeysGet**
> V1ApiKeysGet200Response v1ApiKeysGet()

List API keys

Returns all API keys (active and revoked) belonging to the calling tenant. The `secret` is **never** returned — only prefix + metadata. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getApiKeysApi();

try {
    final response = api.v1ApiKeysGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeysApi->v1ApiKeysGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1ApiKeysGet200Response**](V1ApiKeysGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApiKeysIdDelete**
> v1ApiKeysIdDelete(id)

Revoke an API key

Soft-deletes (sets `revoked_at`) on the named key. The row stays for audit purposes; the key no longer authenticates.  You **cannot revoke the key currently being used** to make this call — that would lock you out. Use a different `tenant:admin` key. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getApiKeysApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.v1ApiKeysIdDelete(id);
} on DioException catch (e) {
    print('Exception when calling ApiKeysApi->v1ApiKeysIdDelete: $e\n');
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

# **v1ApiKeysPost**
> V1ApiKeysPost201Response v1ApiKeysPost(v1ApiKeysPostRequest)

Create an API key

Provisions a fresh API key for the calling tenant.  **The full `secret` is included in this response ONLY** — store it immediately. The cleartext secret is not recoverable from the argon2id hash kept server-side; rotate by creating a new key and revoking the old one. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getApiKeysApi();
final V1ApiKeysPostRequest v1ApiKeysPostRequest = ; // V1ApiKeysPostRequest | 

try {
    final response = api.v1ApiKeysPost(v1ApiKeysPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeysApi->v1ApiKeysPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1ApiKeysPostRequest** | [**V1ApiKeysPostRequest**](V1ApiKeysPostRequest.md)|  | 

### Return type

[**V1ApiKeysPost201Response**](V1ApiKeysPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


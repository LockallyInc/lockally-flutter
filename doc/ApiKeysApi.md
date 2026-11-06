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
[**rotateApiKey**](ApiKeysApi.md#rotateapikey) | **POST** /v1/api-keys/{id}/rotate | Rotate an API key
[**updateApiKey**](ApiKeysApi.md#updateapikey) | **PATCH** /v1/api-keys/{id} | Update an API key


# **createApiKey**
> CreateApiKey201Response createApiKey(createApiKeyRequest)

Create an API key

Provisions a fresh API key for the calling tenant.  **The full `secret` is included in this response ONLY**, store it immediately. The cleartext secret is not recoverable from the argon2id hash kept server-side; rotate by creating a new key and revoking the old one. 

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
> ListApiKeys200Response listApiKeys(sort, order)

List API keys

Returns all API keys (active and revoked) belonging to the calling tenant. The `secret` is **never** returned, only prefix + metadata. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getApiKeysApi();
final String sort = sort_example; // String | Field to order by. This list holds tens of rows per account, so every column is offered and none needs an index.
final String order = order_example; // String | Defaults to desc for the default field and asc for any other. Always tie-broken on id, so the order is total.

try {
    final response = api.listApiKeys(sort, order);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeysApi->listApiKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**| Field to order by. This list holds tens of rows per account, so every column is offered and none needs an index. | [optional] [default to 'created_at']
 **order** | **String**| Defaults to desc for the default field and asc for any other. Always tie-broken on id, so the order is total. | [optional] 

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

Soft-deletes (sets `revoked_at`) on the named key. The row stays for audit purposes; the key no longer authenticates.  You **cannot revoke the key currently being used** to make this call, that would lock you out. Use a different `tenant:admin` key. 

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

# **rotateApiKey**
> CreateApiKey201Response rotateApiKey(id, rotateApiKeyRequest)

Rotate an API key

Issues a successor key and puts a short expiry on this one, so **both work until the overlap ends**. That window is the point: without it, rotation is revocation with extra steps and every caller has to swap credentials in the same instant.  The successor inherits this key's scopes, its label (the label names the integration, and the integration has not changed) and its test flag. Its full `secret` is in this response and nowhere else.  The response's `expires_at` is the **predecessor's** deadline, so you can see from the rotation itself how long you have to cut over.  A key that has already been rotated cannot be rotated again: chaining overlaps would leave several live keys for one integration, which is the opposite of the intent. Rotate the successor instead. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getApiKeysApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final RotateApiKeyRequest rotateApiKeyRequest = ; // RotateApiKeyRequest | 

try {
    final response = api.rotateApiKey(id, rotateApiKeyRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeysApi->rotateApiKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **rotateApiKeyRequest** | [**RotateApiKeyRequest**](RotateApiKeyRequest.md)|  | [optional] 

### Return type

[**CreateApiKey201Response**](CreateApiKey201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApiKey**
> APIKey updateApiKey(id, updateApiKeyRequest)

Update an API key

Changes a key's label, scopes or expiry in place, without reissuing the secret.  **Every field is optional and absent means unchanged.** Renaming a key does not clear its expiry. For `expires_at` there are three distinct requests: omit the field to leave the expiry alone, send a timestamp to set one, and send an explicit `null` to remove one.  Scopes are replaced wholesale, not merged. This endpoint does not restrict which scopes you may grant, because `POST /v1/api-keys` never has either: a key with `tenant:admin` can already mint a key with any scope, so `tenant:admin` is root-equivalent for key management.  A revoked key cannot be updated. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getApiKeysApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateApiKeyRequest updateApiKeyRequest = ; // UpdateApiKeyRequest | 

try {
    final response = api.updateApiKey(id, updateApiKeyRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeysApi->updateApiKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateApiKeyRequest** | [**UpdateApiKeyRequest**](UpdateApiKeyRequest.md)|  | 

### Return type

[**APIKey**](APIKey.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


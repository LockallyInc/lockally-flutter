# lockally.api.AliasesApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AliasesAddressDelete**](AliasesApi.md#v1aliasesaddressdelete) | **DELETE** /v1/aliases/{address} | Delete an alias
[**v1AliasesGet**](AliasesApi.md#v1aliasesget) | **GET** /v1/aliases | List aliases
[**v1AliasesPost**](AliasesApi.md#v1aliasespost) | **POST** /v1/aliases | Create an alias


# **v1AliasesAddressDelete**
> v1AliasesAddressDelete(address)

Delete an alias

Hard-delete (no soft-delete window — aliases are cheap to recreate).

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAliasesApi();
final String address = address_example; // String | 

try {
    api.v1AliasesAddressDelete(address);
} on DioException catch (e) {
    print('Exception when calling AliasesApi->v1AliasesAddressDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AliasesGet**
> V1AliasesGet200Response v1AliasesGet()

List aliases

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAliasesApi();

try {
    final response = api.v1AliasesGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AliasesApi->v1AliasesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1AliasesGet200Response**](V1AliasesGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AliasesPost**
> Alias v1AliasesPost(v1AliasesPostRequest)

Create an alias

Creates an email alias. `alias_address` must be on a verified tenant-owned domain and must not be the address of an existing mailbox (live, suspended or deleted). `alias_target` must be an active mailbox in the same workspace; forwarding to an address Lockally does not host is not supported. The alias delivers as soon as the call returns. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAliasesApi();
final V1AliasesPostRequest v1AliasesPostRequest = ; // V1AliasesPostRequest | 

try {
    final response = api.v1AliasesPost(v1AliasesPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AliasesApi->v1AliasesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1AliasesPostRequest** | [**V1AliasesPostRequest**](V1AliasesPostRequest.md)|  | 

### Return type

[**Alias**](Alias.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


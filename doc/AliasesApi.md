# lockally.api.AliasesApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlias**](AliasesApi.md#createalias) | **POST** /v1/aliases | Create an alias
[**deleteAlias**](AliasesApi.md#deletealias) | **DELETE** /v1/aliases/{address} | Delete an alias
[**listAliases**](AliasesApi.md#listaliases) | **GET** /v1/aliases | List aliases


# **createAlias**
> Alias createAlias(createAliasRequest)

Create an alias

Creates an email alias. `alias_address` must be on a verified tenant-owned domain and must not be the address of an existing mailbox (live, suspended or deleted). `alias_target` must be an active mailbox in the same workspace; forwarding to an address Lockally does not host is not supported. The alias delivers as soon as the call returns. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAliasesApi();
final CreateAliasRequest createAliasRequest = ; // CreateAliasRequest | 

try {
    final response = api.createAlias(createAliasRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AliasesApi->createAlias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAliasRequest** | [**CreateAliasRequest**](CreateAliasRequest.md)|  | 

### Return type

[**Alias**](Alias.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAlias**
> deleteAlias(address)

Delete an alias

Hard-delete (no soft-delete window — aliases are cheap to recreate).

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAliasesApi();
final String address = address_example; // String | 

try {
    api.deleteAlias(address);
} on DioException catch (e) {
    print('Exception when calling AliasesApi->deleteAlias: $e\n');
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

# **listAliases**
> ListAliases200Response listAliases()

List aliases

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAliasesApi();

try {
    final response = api.listAliases();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AliasesApi->listAliases: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListAliases200Response**](ListAliases200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


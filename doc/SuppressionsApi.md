# lockally.api.SuppressionsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1SuppressionsEmailDelete**](SuppressionsApi.md#v1suppressionsemaildelete) | **DELETE** /v1/suppressions/{email} | Remove a suppression
[**v1SuppressionsEmailGet**](SuppressionsApi.md#v1suppressionsemailget) | **GET** /v1/suppressions/{email} | Check whether an address is suppressed
[**v1SuppressionsGet**](SuppressionsApi.md#v1suppressionsget) | **GET** /v1/suppressions | List suppressed recipients
[**v1SuppressionsPost**](SuppressionsApi.md#v1suppressionspost) | **POST** /v1/suppressions | Add a suppression


# **v1SuppressionsEmailDelete**
> v1SuppressionsEmailDelete(email)

Remove a suppression

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSuppressionsApi();
final String email = email_example; // String | 

try {
    api.v1SuppressionsEmailDelete(email);
} on DioException catch (e) {
    print('Exception when calling SuppressionsApi->v1SuppressionsEmailDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SuppressionsEmailGet**
> Suppression v1SuppressionsEmailGet(email)

Check whether an address is suppressed

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSuppressionsApi();
final String email = email_example; // String | 

try {
    final response = api.v1SuppressionsEmailGet(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppressionsApi->v1SuppressionsEmailGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SuppressionsGet**
> V1SuppressionsGet200Response v1SuppressionsGet(reason, cursor, limit)

List suppressed recipients

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSuppressionsApi();
final String reason = reason_example; // String | 
final String cursor = cursor_example; // String | 
final int limit = 56; // int | 

try {
    final response = api.v1SuppressionsGet(reason, cursor, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppressionsApi->v1SuppressionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reason** | **String**|  | [optional] 
 **cursor** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**V1SuppressionsGet200Response**](V1SuppressionsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SuppressionsPost**
> Suppression v1SuppressionsPost(v1SuppressionsPostRequest)

Add a suppression

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSuppressionsApi();
final V1SuppressionsPostRequest v1SuppressionsPostRequest = ; // V1SuppressionsPostRequest | 

try {
    final response = api.v1SuppressionsPost(v1SuppressionsPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppressionsApi->v1SuppressionsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1SuppressionsPostRequest** | [**V1SuppressionsPostRequest**](V1SuppressionsPostRequest.md)|  | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


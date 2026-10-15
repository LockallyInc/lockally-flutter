# lockally.api.SuppressionsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSuppression**](SuppressionsApi.md#createsuppression) | **POST** /v1/suppressions | Add a suppression
[**deleteSuppression**](SuppressionsApi.md#deletesuppression) | **DELETE** /v1/suppressions/{email} | Remove a suppression
[**getSuppression**](SuppressionsApi.md#getsuppression) | **GET** /v1/suppressions/{email} | Check whether an address is suppressed
[**listSuppressions**](SuppressionsApi.md#listsuppressions) | **GET** /v1/suppressions | List suppressed recipients


# **createSuppression**
> Suppression createSuppression(createSuppressionRequest)

Add a suppression

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSuppressionsApi();
final CreateSuppressionRequest createSuppressionRequest = ; // CreateSuppressionRequest | 

try {
    final response = api.createSuppression(createSuppressionRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppressionsApi->createSuppression: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSuppressionRequest** | [**CreateSuppressionRequest**](CreateSuppressionRequest.md)|  | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSuppression**
> deleteSuppression(email)

Remove a suppression

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSuppressionsApi();
final String email = email_example; // String | 

try {
    api.deleteSuppression(email);
} on DioException catch (e) {
    print('Exception when calling SuppressionsApi->deleteSuppression: $e\n');
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

# **getSuppression**
> Suppression getSuppression(email)

Check whether an address is suppressed

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSuppressionsApi();
final String email = email_example; // String | 

try {
    final response = api.getSuppression(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppressionsApi->getSuppression: $e\n');
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

# **listSuppressions**
> ListSuppressions200Response listSuppressions(reason, cursor, limit)

List suppressed recipients

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSuppressionsApi();
final String reason = reason_example; // String | 
final String cursor = cursor_example; // String | 
final int limit = 56; // int | 

try {
    final response = api.listSuppressions(reason, cursor, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppressionsApi->listSuppressions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reason** | **String**|  | [optional] 
 **cursor** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**ListSuppressions200Response**](ListSuppressions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


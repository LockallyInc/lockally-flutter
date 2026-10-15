# lockally.api.SignupApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**signup**](SignupApi.md#signup) | **POST** /v1/signup | Sign up a new tenant


# **signup**
> AdminLogin200Response signup(signupRequest)

Sign up a new tenant

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getSignupApi();
final SignupRequest signupRequest = ; // SignupRequest | 

try {
    final response = api.signup(signupRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SignupApi->signup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signupRequest** | [**SignupRequest**](SignupRequest.md)|  | 

### Return type

[**AdminLogin200Response**](AdminLogin200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


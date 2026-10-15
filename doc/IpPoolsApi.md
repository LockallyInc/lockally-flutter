# lockally.api.IpPoolsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDedicatedIPRequest**](IpPoolsApi.md#creatededicatediprequest) | **POST** /v1/dedicated-ip-requests | Request a dedicated IP
[**getIPAssignment**](IpPoolsApi.md#getipassignment) | **GET** /v1/ip-assignment | Get current IP assignment
[**listDedicatedIPRequests**](IpPoolsApi.md#listdedicatediprequests) | **GET** /v1/dedicated-ip-requests | List dedicated IP requests


# **createDedicatedIPRequest**
> DedicatedIPRequest createDedicatedIPRequest(createDedicatedIPRequestRequest)

Request a dedicated IP

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getIpPoolsApi();
final CreateDedicatedIPRequestRequest createDedicatedIPRequestRequest = ; // CreateDedicatedIPRequestRequest | 

try {
    final response = api.createDedicatedIPRequest(createDedicatedIPRequestRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IpPoolsApi->createDedicatedIPRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDedicatedIPRequestRequest** | [**CreateDedicatedIPRequestRequest**](CreateDedicatedIPRequestRequest.md)|  | 

### Return type

[**DedicatedIPRequest**](DedicatedIPRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIPAssignment**
> GetIPAssignment200Response getIPAssignment()

Get current IP assignment

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getIpPoolsApi();

try {
    final response = api.getIPAssignment();
    print(response);
} on DioException catch (e) {
    print('Exception when calling IpPoolsApi->getIPAssignment: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetIPAssignment200Response**](GetIPAssignment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDedicatedIPRequests**
> ListDedicatedIPRequests200Response listDedicatedIPRequests()

List dedicated IP requests

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getIpPoolsApi();

try {
    final response = api.listDedicatedIPRequests();
    print(response);
} on DioException catch (e) {
    print('Exception when calling IpPoolsApi->listDedicatedIPRequests: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListDedicatedIPRequests200Response**](ListDedicatedIPRequests200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


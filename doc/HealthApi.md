# lockally.api.HealthApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthzGet**](HealthApi.md#healthzget) | **GET** /healthz | Liveness check


# **healthzGet**
> HealthzGet200Response healthzGet()

Liveness check

Returns 200 if the process is up and the database pings cleanly. No authentication required.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getHealthApi();

try {
    final response = api.healthzGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling HealthApi->healthzGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthzGet200Response**](HealthzGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


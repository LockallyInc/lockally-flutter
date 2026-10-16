# lockally.api.TenantApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTenant**](TenantApi.md#gettenant) | **GET** /v1/tenant | Get the calling tenant
[**getUsage**](TenantApi.md#getusage) | **GET** /v1/usage | Usage snapshot


# **getTenant**
> Tenant getTenant()

Get the calling tenant

Returns the tenant the presented API key belongs to.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTenantApi();

try {
    final response = api.getTenant();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantApi->getTenant: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Tenant**](Tenant.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsage**
> GetUsage200Response getUsage()

Usage snapshot

Returns the tenant's current usage + cap consumption. Designed for poll-based alerting on the integrator side (e.g. \"warn when daily quota is 80% used\"). Computed live on request, so there is no cache, so callers should poll at most once per minute. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTenantApi();

try {
    final response = api.getUsage();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantApi->getUsage: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetUsage200Response**](GetUsage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


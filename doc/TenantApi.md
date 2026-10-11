# lockally.api.TenantApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1TenantGet**](TenantApi.md#v1tenantget) | **GET** /v1/tenant | Get the calling tenant
[**v1UsageGet**](TenantApi.md#v1usageget) | **GET** /v1/usage | Usage snapshot


# **v1TenantGet**
> Tenant v1TenantGet()

Get the calling tenant

Returns the tenant the presented API key belongs to.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTenantApi();

try {
    final response = api.v1TenantGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantApi->v1TenantGet: $e\n');
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

# **v1UsageGet**
> V1UsageGet200Response v1UsageGet()

Usage snapshot

Returns the tenant's current usage + cap consumption. Designed for poll-based alerting on the integrator side (e.g. \"warn when daily quota is 80% used\"). Refreshed live from Postgres — there is no cache, so callers should poll at most once per minute. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTenantApi();

try {
    final response = api.v1UsageGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantApi->v1UsageGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1UsageGet200Response**](V1UsageGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


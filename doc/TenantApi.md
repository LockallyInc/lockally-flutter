# lockally.api.TenantApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTenant**](TenantApi.md#gettenant) | **GET** /v1/tenant | Get the calling tenant
[**getTrackingPolicy**](TenantApi.md#gettrackingpolicy) | **GET** /v1/tracking | Get the engagement tracking policy
[**getUsage**](TenantApi.md#getusage) | **GET** /v1/usage | Usage snapshot
[**updateTrackingPolicy**](TenantApi.md#updatetrackingpolicy) | **PUT** /v1/tracking | Update the engagement tracking policy


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

# **getTrackingPolicy**
> TrackingPolicy getTrackingPolicy()

Get the engagement tracking policy

Whether open and click tracking are enabled for this account. **Both are off until switched on**, and an account that has never set a policy reads as off rather than as an error.  `configured` reports whether this deployment holds a signing secret. Without one no tracking token can be minted or verified, so tracking cannot work however the flags are set, and a caller seeing `track_opens: true` with nothing arriving deserves to know why. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTenantApi();

try {
    final response = api.getTrackingPolicy();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantApi->getTrackingPolicy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TrackingPolicy**](TrackingPolicy.md)

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

# **updateTrackingPolicy**
> TrackingPolicy updateTrackingPolicy(updateTrackingPolicyRequest)

Update the engagement tracking policy

Enables or disables tracking for the account. Send either flag or both; an omitted flag is left unchanged rather than reset.  **Enabling this changes what Lockally collects about your recipients**, who have no relationship with us. You are the controller for them. What is collected is a user-agent string, a timestamp, and for a click the destination URL: **no IP address**, ever. The change is written to your audit log. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTenantApi();
final UpdateTrackingPolicyRequest updateTrackingPolicyRequest = ; // UpdateTrackingPolicyRequest | 

try {
    final response = api.updateTrackingPolicy(updateTrackingPolicyRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantApi->updateTrackingPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateTrackingPolicyRequest** | [**UpdateTrackingPolicyRequest**](UpdateTrackingPolicyRequest.md)|  | 

### Return type

[**TrackingPolicy**](TrackingPolicy.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


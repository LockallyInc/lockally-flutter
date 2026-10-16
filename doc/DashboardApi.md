# lockally.api.DashboardApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuditSummary**](DashboardApi.md#getauditsummary) | **GET** /v1/audit-summary | Audit summary for the dashboard
[**getDomainsStatus**](DashboardApi.md#getdomainsstatus) | **GET** /v1/domains/status | Domain health status for the dashboard
[**getIntegrationsSummary**](DashboardApi.md#getintegrationssummary) | **GET** /v1/integrations-summary | Integrations summary for the dashboard
[**getSecurity**](DashboardApi.md#getsecurity) | **GET** /v1/security | Security overview for the dashboard
[**getStorage**](DashboardApi.md#getstorage) | **GET** /v1/storage | Storage usage for the dashboard
[**getTenantHealth**](DashboardApi.md#gettenanthealth) | **GET** /v1/health | Full tenant health report
[**getUserInsights**](DashboardApi.md#getuserinsights) | **GET** /v1/user-insights | User insights for the dashboard


# **getAuditSummary**
> GetAuditSummary200Response getAuditSummary()

Audit summary for the dashboard

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDashboardApi();

try {
    final response = api.getAuditSummary();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardApi->getAuditSummary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAuditSummary200Response**](GetAuditSummary200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomainsStatus**
> GetDomainsStatus200Response getDomainsStatus()

Domain health status for the dashboard

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDashboardApi();

try {
    final response = api.getDomainsStatus();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardApi->getDomainsStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetDomainsStatus200Response**](GetDomainsStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntegrationsSummary**
> GetIntegrationsSummary200Response getIntegrationsSummary()

Integrations summary for the dashboard

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDashboardApi();

try {
    final response = api.getIntegrationsSummary();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardApi->getIntegrationsSummary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetIntegrationsSummary200Response**](GetIntegrationsSummary200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSecurity**
> GetSecurity200Response getSecurity()

Security overview for the dashboard

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDashboardApi();

try {
    final response = api.getSecurity();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardApi->getSecurity: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetSecurity200Response**](GetSecurity200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStorage**
> GetStorage200Response getStorage()

Storage usage for the dashboard

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDashboardApi();

try {
    final response = api.getStorage();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardApi->getStorage: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetStorage200Response**](GetStorage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantHealth**
> JsonObject getTenantHealth()

Full tenant health report

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDashboardApi();

try {
    final response = api.getTenantHealth();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardApi->getTenantHealth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInsights**
> GetUserInsights200Response getUserInsights()

User insights for the dashboard

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDashboardApi();

try {
    final response = api.getUserInsights();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardApi->getUserInsights: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetUserInsights200Response**](GetUserInsights200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


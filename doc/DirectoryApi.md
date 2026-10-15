# lockally.api.DirectoryApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDirectoryActivity**](DirectoryApi.md#getdirectoryactivity) | **GET** /v1/directory-activity | Get recent directory activity
[**getDirectoryPermissions**](DirectoryApi.md#getdirectorypermissions) | **GET** /v1/directory-permissions | Get directory permission settings
[**getDirectoryStats**](DirectoryApi.md#getdirectorystats) | **GET** /v1/directory-stats | Get directory statistics
[**getGALSettings**](DirectoryApi.md#getgalsettings) | **GET** /v1/gal-settings | Get Global Address List settings
[**rebuildGALIndex**](DirectoryApi.md#rebuildgalindex) | **POST** /v1/gal-settings/rebuild-index | Rebuild the GAL search index
[**syncGAL**](DirectoryApi.md#syncgal) | **POST** /v1/gal-settings/sync | Sync GAL with external directory sources
[**updateDirectoryPermissions**](DirectoryApi.md#updatedirectorypermissions) | **PATCH** /v1/directory-permissions | Update directory permission settings
[**updateGALSettings**](DirectoryApi.md#updategalsettings) | **PATCH** /v1/gal-settings | Update GAL settings


# **getDirectoryActivity**
> GetDirectoryActivity200Response getDirectoryActivity()

Get recent directory activity

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDirectoryApi();

try {
    final response = api.getDirectoryActivity();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DirectoryApi->getDirectoryActivity: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetDirectoryActivity200Response**](GetDirectoryActivity200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDirectoryPermissions**
> DirectoryPermissions getDirectoryPermissions()

Get directory permission settings

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDirectoryApi();

try {
    final response = api.getDirectoryPermissions();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DirectoryApi->getDirectoryPermissions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DirectoryPermissions**](DirectoryPermissions.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDirectoryStats**
> GetDirectoryStats200Response getDirectoryStats()

Get directory statistics

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDirectoryApi();

try {
    final response = api.getDirectoryStats();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DirectoryApi->getDirectoryStats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetDirectoryStats200Response**](GetDirectoryStats200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGALSettings**
> GALSettings getGALSettings()

Get Global Address List settings

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDirectoryApi();

try {
    final response = api.getGALSettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DirectoryApi->getGALSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GALSettings**](GALSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rebuildGALIndex**
> GALSettings rebuildGALIndex()

Rebuild the GAL search index

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDirectoryApi();

try {
    final response = api.rebuildGALIndex();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DirectoryApi->rebuildGALIndex: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GALSettings**](GALSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncGAL**
> GALSettings syncGAL()

Sync GAL with external directory sources

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDirectoryApi();

try {
    final response = api.syncGAL();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DirectoryApi->syncGAL: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GALSettings**](GALSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDirectoryPermissions**
> DirectoryPermissions updateDirectoryPermissions(updateDirectoryPermissionsRequest)

Update directory permission settings

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDirectoryApi();
final UpdateDirectoryPermissionsRequest updateDirectoryPermissionsRequest = ; // UpdateDirectoryPermissionsRequest | 

try {
    final response = api.updateDirectoryPermissions(updateDirectoryPermissionsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DirectoryApi->updateDirectoryPermissions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateDirectoryPermissionsRequest** | [**UpdateDirectoryPermissionsRequest**](UpdateDirectoryPermissionsRequest.md)|  | 

### Return type

[**DirectoryPermissions**](DirectoryPermissions.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGALSettings**
> GALSettings updateGALSettings(updateGALSettingsRequest)

Update GAL settings

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDirectoryApi();
final UpdateGALSettingsRequest updateGALSettingsRequest = ; // UpdateGALSettingsRequest | 

try {
    final response = api.updateGALSettings(updateGALSettingsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DirectoryApi->updateGALSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateGALSettingsRequest** | [**UpdateGALSettingsRequest**](UpdateGALSettingsRequest.md)|  | 

### Return type

[**GALSettings**](GALSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


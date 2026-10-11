# lockally.api.AdminsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AdminsGet**](AdminsApi.md#v1adminsget) | **GET** /v1/admins | List tenant admins
[**v1AdminsIdDelete**](AdminsApi.md#v1adminsiddelete) | **DELETE** /v1/admins/{id} | Delete an admin
[**v1AdminsIdPatch**](AdminsApi.md#v1adminsidpatch) | **PATCH** /v1/admins/{id} | Update an admin
[**v1AdminsPost**](AdminsApi.md#v1adminspost) | **POST** /v1/admins | Invite a new admin


# **v1AdminsGet**
> V1AdminsGet200Response v1AdminsGet()

List tenant admins

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminsApi();

try {
    final response = api.v1AdminsGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminsApi->v1AdminsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1AdminsGet200Response**](V1AdminsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AdminsIdDelete**
> v1AdminsIdDelete(id)

Delete an admin

Hard-delete. Cascade-drops the admin's sessions (immediate revocation). Same safety rails as PATCH disabled=true. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.v1AdminsIdDelete(id);
} on DioException catch (e) {
    print('Exception when calling AdminsApi->v1AdminsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AdminsIdPatch**
> AdminFull v1AdminsIdPatch(id, v1AdminsIdPatchRequest)

Update an admin

Supply at least one of `password`, `display_name`, `role`, `disabled`.  **Safety rails.** A session bearer (adm_sess_*) cannot disable itself — use another admin or an API key (which bypasses the self-rail). Disabling the last active admin returns 409 to prevent orphaning the tenant from its console. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final V1AdminsIdPatchRequest v1AdminsIdPatchRequest = ; // V1AdminsIdPatchRequest | 

try {
    final response = api.v1AdminsIdPatch(id, v1AdminsIdPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminsApi->v1AdminsIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **v1AdminsIdPatchRequest** | [**V1AdminsIdPatchRequest**](V1AdminsIdPatchRequest.md)|  | 

### Return type

[**AdminFull**](AdminFull.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AdminsPost**
> AdminFull v1AdminsPost(v1AdminsPostRequest)

Invite a new admin

Creates a new tenant admin. If `password` is omitted, lockally generates a 16-char password and returns it ONCE in the response. Email is case-insensitive and unique per tenant. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminsApi();
final V1AdminsPostRequest v1AdminsPostRequest = ; // V1AdminsPostRequest | 

try {
    final response = api.v1AdminsPost(v1AdminsPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminsApi->v1AdminsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1AdminsPostRequest** | [**V1AdminsPostRequest**](V1AdminsPostRequest.md)|  | 

### Return type

[**AdminFull**](AdminFull.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


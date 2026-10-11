# lockally.api.AdminApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AdminLoginPost**](AdminApi.md#v1adminloginpost) | **POST** /v1/admin/login | Tenant-admin email+password login
[**v1AdminLogoutPost**](AdminApi.md#v1adminlogoutpost) | **POST** /v1/admin/logout | Invalidate the current admin session
[**v1AdminMeGet**](AdminApi.md#v1adminmeget) | **GET** /v1/admin/me | Get the current admin + tenant


# **v1AdminLoginPost**
> V1AdminLoginPost200Response v1AdminLoginPost(v1AdminLoginPostRequest)

Tenant-admin email+password login

Exchanges an admin's email + password for a session token. The web console at `app.lockally.com` posts this on form submission and stores the returned token in an httpOnly cookie.  **No enumeration leak.** Wrong-email and wrong-password both return the same 401 with title \"Invalid credentials\". The argon2id verify runs even on lookup miss (well, structurally — the lookup fails fast but the response shape is constant) so timing leaks are bounded.  Tokens are prefixed `adm_sess_` and valid for 7 days. Use as the `Authorization: Bearer` value on all subsequent calls. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminApi();
final V1AdminLoginPostRequest v1AdminLoginPostRequest = ; // V1AdminLoginPostRequest | 

try {
    final response = api.v1AdminLoginPost(v1AdminLoginPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminApi->v1AdminLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1AdminLoginPostRequest** | [**V1AdminLoginPostRequest**](V1AdminLoginPostRequest.md)|  | 

### Return type

[**V1AdminLoginPost200Response**](V1AdminLoginPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AdminLogoutPost**
> v1AdminLogoutPost()

Invalidate the current admin session

Deletes the session row from the database. Idempotent — calling logout on an already-invalid token returns 204 anyway. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminApi();

try {
    api.v1AdminLogoutPost();
} on DioException catch (e) {
    print('Exception when calling AdminApi->v1AdminLogoutPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AdminMeGet**
> V1AdminMeGet200Response v1AdminMeGet()

Get the current admin + tenant

Returns the admin profile + tenant for the session token presented in `Authorization: Bearer`. Used by the web console's layout load function to populate the sidebar.  Returns 403 if called with an API key (lk_live_*) bearer — admin context only exists for session tokens. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminApi();

try {
    final response = api.v1AdminMeGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminApi->v1AdminMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1AdminMeGet200Response**](V1AdminMeGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


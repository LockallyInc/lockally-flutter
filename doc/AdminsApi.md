# lockally.api.AdminsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAdmin**](AdminsApi.md#deleteadmin) | **DELETE** /v1/admins/{id} | Delete an admin
[**inviteAdmin**](AdminsApi.md#inviteadmin) | **POST** /v1/admins | Invite a new admin
[**listAdmins**](AdminsApi.md#listadmins) | **GET** /v1/admins | List tenant admins
[**updateAdmin**](AdminsApi.md#updateadmin) | **PATCH** /v1/admins/{id} | Update an admin


# **deleteAdmin**
> deleteAdmin(id)

Delete an admin

Hard-delete. Cascade-drops the admin's sessions (immediate revocation). Same safety rails as PATCH disabled=true. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteAdmin(id);
} on DioException catch (e) {
    print('Exception when calling AdminsApi->deleteAdmin: $e\n');
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

# **inviteAdmin**
> AdminFull inviteAdmin(inviteAdminRequest)

Invite a new admin

Creates a new tenant admin. If `password` is omitted, lockally generates a 16-char password and returns it ONCE in the response. Email is case-insensitive and unique per tenant. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminsApi();
final InviteAdminRequest inviteAdminRequest = ; // InviteAdminRequest | 

try {
    final response = api.inviteAdmin(inviteAdminRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminsApi->inviteAdmin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteAdminRequest** | [**InviteAdminRequest**](InviteAdminRequest.md)|  | 

### Return type

[**AdminFull**](AdminFull.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAdmins**
> ListAdmins200Response listAdmins()

List tenant admins

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminsApi();

try {
    final response = api.listAdmins();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminsApi->listAdmins: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListAdmins200Response**](ListAdmins200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAdmin**
> AdminFull updateAdmin(id, updateAdminRequest)

Update an admin

Supply at least one of `password`, `display_name`, `role`, `disabled`.  **Safety rails.** A session bearer (adm_sess_*) cannot disable itself, use another admin or an API key (which bypasses the self-rail). Disabling the last active admin returns 409 to prevent orphaning the tenant from its console. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAdminsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateAdminRequest updateAdminRequest = ; // UpdateAdminRequest | 

try {
    final response = api.updateAdmin(id, updateAdminRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminsApi->updateAdmin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateAdminRequest** | [**UpdateAdminRequest**](UpdateAdminRequest.md)|  | 

### Return type

[**AdminFull**](AdminFull.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


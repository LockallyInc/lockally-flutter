# lockally.api.UsersApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UsersApi.md#createuser) | **POST** /v1/users | Create a user
[**deleteUser**](UsersApi.md#deleteuser) | **DELETE** /v1/users/{id} | Delete a user
[**getUser**](UsersApi.md#getuser) | **GET** /v1/users/{id} | Get a user
[**listUsers**](UsersApi.md#listusers) | **GET** /v1/users | List users
[**updateUser**](UsersApi.md#updateuser) | **PATCH** /v1/users/{id} | Update a user


# **createUser**
> User createUser(createUserRequest)

Create a user

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getUsersApi();
final CreateUserRequest createUserRequest = ; // CreateUserRequest | 

try {
    final response = api.createUser(createUserRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserRequest** | [**CreateUserRequest**](CreateUserRequest.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(id)

Delete a user

Soft-deletes the user by setting status to deprovisioned.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getUsersApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteUser(id);
} on DioException catch (e) {
    print('Exception when calling UsersApi->deleteUser: $e\n');
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

# **getUser**
> User getUser(id)

Get a user

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getUsersApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getUser(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->getUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsers**
> ListUsers200Response listUsers(limit)

List users

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getUsersApi();
final int limit = 56; // int | 

try {
    final response = api.listUsers(limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->listUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**ListUsers200Response**](ListUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> User updateUser(id, updateUserRequest)

Update a user

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getUsersApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateUserRequest updateUserRequest = ; // UpdateUserRequest | 

try {
    final response = api.updateUser(id, updateUserRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->updateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


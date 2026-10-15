# lockally.api.ResourcesApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createResource**](ResourcesApi.md#createresource) | **POST** /v1/resources | Create a resource
[**deleteResource**](ResourcesApi.md#deleteresource) | **DELETE** /v1/resources/{id} | Delete a resource
[**getResource**](ResourcesApi.md#getresource) | **GET** /v1/resources/{id} | Get a resource
[**listResources**](ResourcesApi.md#listresources) | **GET** /v1/resources | List resources
[**updateResource**](ResourcesApi.md#updateresource) | **PATCH** /v1/resources/{id} | Update a resource


# **createResource**
> Resource createResource(createResourceRequest)

Create a resource

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getResourcesApi();
final CreateResourceRequest createResourceRequest = ; // CreateResourceRequest | 

try {
    final response = api.createResource(createResourceRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ResourcesApi->createResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createResourceRequest** | [**CreateResourceRequest**](CreateResourceRequest.md)|  | 

### Return type

[**Resource**](Resource.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteResource**
> deleteResource(id)

Delete a resource

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getResourcesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteResource(id);
} on DioException catch (e) {
    print('Exception when calling ResourcesApi->deleteResource: $e\n');
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

# **getResource**
> Resource getResource(id)

Get a resource

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getResourcesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getResource(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ResourcesApi->getResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Resource**](Resource.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listResources**
> ListResources200Response listResources()

List resources

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getResourcesApi();

try {
    final response = api.listResources();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ResourcesApi->listResources: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResources200Response**](ListResources200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateResource**
> Resource updateResource(id, updateResourceRequest)

Update a resource

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getResourcesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateResourceRequest updateResourceRequest = ; // UpdateResourceRequest | 

try {
    final response = api.updateResource(id, updateResourceRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ResourcesApi->updateResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateResourceRequest** | [**UpdateResourceRequest**](UpdateResourceRequest.md)|  | 

### Return type

[**Resource**](Resource.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


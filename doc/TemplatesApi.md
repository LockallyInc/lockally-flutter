# lockally.api.TemplatesApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1TemplatesGet**](TemplatesApi.md#v1templatesget) | **GET** /v1/templates | List templates
[**v1TemplatesIdDelete**](TemplatesApi.md#v1templatesiddelete) | **DELETE** /v1/templates/{id} | Delete a template
[**v1TemplatesIdGet**](TemplatesApi.md#v1templatesidget) | **GET** /v1/templates/{id} | Get a template
[**v1TemplatesIdPut**](TemplatesApi.md#v1templatesidput) | **PUT** /v1/templates/{id} | Update a template
[**v1TemplatesPost**](TemplatesApi.md#v1templatespost) | **POST** /v1/templates | Create a template


# **v1TemplatesGet**
> V1TemplatesGet200Response v1TemplatesGet()

List templates

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTemplatesApi();

try {
    final response = api.v1TemplatesGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TemplatesApi->v1TemplatesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1TemplatesGet200Response**](V1TemplatesGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1TemplatesIdDelete**
> v1TemplatesIdDelete(id)

Delete a template

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTemplatesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.v1TemplatesIdDelete(id);
} on DioException catch (e) {
    print('Exception when calling TemplatesApi->v1TemplatesIdDelete: $e\n');
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

# **v1TemplatesIdGet**
> Template v1TemplatesIdGet(id)

Get a template

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTemplatesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.v1TemplatesIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TemplatesApi->v1TemplatesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Template**](Template.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1TemplatesIdPut**
> Template v1TemplatesIdPut(id, templateInput)

Update a template

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTemplatesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final TemplateInput templateInput = ; // TemplateInput | 

try {
    final response = api.v1TemplatesIdPut(id, templateInput);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TemplatesApi->v1TemplatesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **templateInput** | [**TemplateInput**](TemplateInput.md)|  | 

### Return type

[**Template**](Template.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1TemplatesPost**
> Template v1TemplatesPost(templateInput)

Create a template

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTemplatesApi();
final TemplateInput templateInput = ; // TemplateInput | 

try {
    final response = api.v1TemplatesPost(templateInput);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TemplatesApi->v1TemplatesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateInput** | [**TemplateInput**](TemplateInput.md)|  | 

### Return type

[**Template**](Template.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# lockally.api.TemplatesApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](TemplatesApi.md#createtemplate) | **POST** /v1/templates | Create a template
[**deleteTemplate**](TemplatesApi.md#deletetemplate) | **DELETE** /v1/templates/{id} | Delete a template
[**getTemplate**](TemplatesApi.md#gettemplate) | **GET** /v1/templates/{id} | Get a template
[**listTemplates**](TemplatesApi.md#listtemplates) | **GET** /v1/templates | List templates
[**updateTemplate**](TemplatesApi.md#updatetemplate) | **PUT** /v1/templates/{id} | Update a template


# **createTemplate**
> Template createTemplate(templateInput)

Create a template

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTemplatesApi();
final TemplateInput templateInput = ; // TemplateInput | 

try {
    final response = api.createTemplate(templateInput);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TemplatesApi->createTemplate: $e\n');
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

# **deleteTemplate**
> deleteTemplate(id)

Delete a template

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTemplatesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteTemplate(id);
} on DioException catch (e) {
    print('Exception when calling TemplatesApi->deleteTemplate: $e\n');
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

# **getTemplate**
> Template getTemplate(id)

Get a template

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTemplatesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getTemplate(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TemplatesApi->getTemplate: $e\n');
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

# **listTemplates**
> ListTemplates200Response listTemplates()

List templates

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTemplatesApi();

try {
    final response = api.listTemplates();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TemplatesApi->listTemplates: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListTemplates200Response**](ListTemplates200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTemplate**
> Template updateTemplate(id, templateInput)

Update a template

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getTemplatesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final TemplateInput templateInput = ; // TemplateInput | 

try {
    final response = api.updateTemplate(id, templateInput);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TemplatesApi->updateTemplate: $e\n');
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


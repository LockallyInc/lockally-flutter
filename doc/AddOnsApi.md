# lockally.api.AddOnsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateAddOn**](AddOnsApi.md#activateaddon) | **POST** /v1/add-ons/{name}/activate | Activate an add-on
[**cancelAddOn**](AddOnsApi.md#canceladdon) | **POST** /v1/add-ons/{name}/cancel | Cancel an add-on
[**getAddOnStatus**](AddOnsApi.md#getaddonstatus) | **GET** /v1/add-ons/{name} | Get add-on status
[**listAddOns**](AddOnsApi.md#listaddons) | **GET** /v1/add-ons | List add-ons


# **activateAddOn**
> ActivateAddOn200Response activateAddOn(name)

Activate an add-on

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAddOnsApi();
final String name = name_example; // String | Add-on key

try {
    final response = api.activateAddOn(name);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddOnsApi->activateAddOn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Add-on key | 

### Return type

[**ActivateAddOn200Response**](ActivateAddOn200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelAddOn**
> cancelAddOn(name)

Cancel an add-on

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAddOnsApi();
final String name = name_example; // String | Add-on key

try {
    api.cancelAddOn(name);
} on DioException catch (e) {
    print('Exception when calling AddOnsApi->cancelAddOn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Add-on key | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddOnStatus**
> GetAddOnStatus200Response getAddOnStatus(name)

Get add-on status

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAddOnsApi();
final String name = name_example; // String | Add-on key

try {
    final response = api.getAddOnStatus(name);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddOnsApi->getAddOnStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Add-on key | 

### Return type

[**GetAddOnStatus200Response**](GetAddOnStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAddOns**
> ListAddOns200Response listAddOns()

List add-ons

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getAddOnsApi();

try {
    final response = api.listAddOns();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddOnsApi->listAddOns: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListAddOns200Response**](ListAddOns200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# lockally.api.BillingApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBillingCheckout**](BillingApi.md#createbillingcheckout) | **POST** /v1/billing/checkout | Create a plan checkout session
[**createUnitsCheckout**](BillingApi.md#createunitscheckout) | **POST** /v1/billing/units/checkout | Create a send-units checkout session
[**getBilling**](BillingApi.md#getbilling) | **GET** /v1/billing | Get billing status


# **createBillingCheckout**
> CreateBillingCheckout200Response createBillingCheckout(createBillingCheckoutRequest)

Create a plan checkout session

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getBillingApi();
final CreateBillingCheckoutRequest createBillingCheckoutRequest = ; // CreateBillingCheckoutRequest | 

try {
    final response = api.createBillingCheckout(createBillingCheckoutRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BillingApi->createBillingCheckout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createBillingCheckoutRequest** | [**CreateBillingCheckoutRequest**](CreateBillingCheckoutRequest.md)|  | 

### Return type

[**CreateBillingCheckout200Response**](CreateBillingCheckout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUnitsCheckout**
> CreateUnitsCheckout200Response createUnitsCheckout(createUnitsCheckoutRequest)

Create a send-units checkout session

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getBillingApi();
final CreateUnitsCheckoutRequest createUnitsCheckoutRequest = ; // CreateUnitsCheckoutRequest | 

try {
    final response = api.createUnitsCheckout(createUnitsCheckoutRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BillingApi->createUnitsCheckout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUnitsCheckoutRequest** | [**CreateUnitsCheckoutRequest**](CreateUnitsCheckoutRequest.md)|  | 

### Return type

[**CreateUnitsCheckout200Response**](CreateUnitsCheckout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBilling**
> BillingStatus getBilling()

Get billing status

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getBillingApi();

try {
    final response = api.getBilling();
    print(response);
} on DioException catch (e) {
    print('Exception when calling BillingApi->getBilling: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BillingStatus**](BillingStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


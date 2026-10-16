# lockally.api.DistributionListsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDistributionList**](DistributionListsApi.md#createdistributionlist) | **POST** /v1/distribution-lists | Create a distribution list
[**deleteDistributionList**](DistributionListsApi.md#deletedistributionlist) | **DELETE** /v1/distribution-lists/{address} | Delete a distribution list
[**getDistributionList**](DistributionListsApi.md#getdistributionlist) | **GET** /v1/distribution-lists/{address} | Get a distribution list
[**listDistributionLists**](DistributionListsApi.md#listdistributionlists) | **GET** /v1/distribution-lists | List distribution lists
[**replaceDistributionListMembers**](DistributionListsApi.md#replacedistributionlistmembers) | **PUT** /v1/distribution-lists/{address}/members | Replace distribution list members


# **createDistributionList**
> DistributionListDetail createDistributionList(createDistributionListRequest)

Create a distribution list

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDistributionListsApi();
final CreateDistributionListRequest createDistributionListRequest = ; // CreateDistributionListRequest | 

try {
    final response = api.createDistributionList(createDistributionListRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DistributionListsApi->createDistributionList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDistributionListRequest** | [**CreateDistributionListRequest**](CreateDistributionListRequest.md)|  | 

### Return type

[**DistributionListDetail**](DistributionListDetail.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDistributionList**
> deleteDistributionList(address)

Delete a distribution list

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDistributionListsApi();
final String address = address_example; // String | Distribution list email address

try {
    api.deleteDistributionList(address);
} on DioException catch (e) {
    print('Exception when calling DistributionListsApi->deleteDistributionList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Distribution list email address | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistributionList**
> DistributionListDetail getDistributionList(address)

Get a distribution list

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDistributionListsApi();
final String address = address_example; // String | Distribution list email address

try {
    final response = api.getDistributionList(address);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DistributionListsApi->getDistributionList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Distribution list email address | 

### Return type

[**DistributionListDetail**](DistributionListDetail.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDistributionLists**
> ListDistributionLists200Response listDistributionLists()

List distribution lists

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDistributionListsApi();

try {
    final response = api.listDistributionLists();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DistributionListsApi->listDistributionLists: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListDistributionLists200Response**](ListDistributionLists200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceDistributionListMembers**
> ReplaceDistributionListMembers200Response replaceDistributionListMembers(address, replaceDistributionListMembersRequest)

Replace distribution list members

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDistributionListsApi();
final String address = address_example; // String | Distribution list email address
final ReplaceDistributionListMembersRequest replaceDistributionListMembersRequest = ; // ReplaceDistributionListMembersRequest | 

try {
    final response = api.replaceDistributionListMembers(address, replaceDistributionListMembersRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DistributionListsApi->replaceDistributionListMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Distribution list email address | 
 **replaceDistributionListMembersRequest** | [**ReplaceDistributionListMembersRequest**](ReplaceDistributionListMembersRequest.md)|  | 

### Return type

[**ReplaceDistributionListMembers200Response**](ReplaceDistributionListMembers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


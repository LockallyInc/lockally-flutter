# lockally.api.EncryptionApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchLookupPublicKeys**](EncryptionApi.md#batchlookuppublickeys) | **GET** /v1/encryption/keys/lookup | Batch-lookup public keys by email
[**createEncryptionKey**](EncryptionApi.md#createencryptionkey) | **POST** /v1/encryption/keys | Upload an encryption key pair
[**createEncryptionRecovery**](EncryptionApi.md#createencryptionrecovery) | **POST** /v1/encryption/recovery | Store an encryption recovery blob
[**getEncryptionKey**](EncryptionApi.md#getencryptionkey) | **GET** /v1/encryption/keys/{email} | Get encryption key for a mailbox
[**rotateEncryptionKey**](EncryptionApi.md#rotateencryptionkey) | **POST** /v1/encryption/keys/rotate | Rotate an encryption key


# **batchLookupPublicKeys**
> BatchLookupPublicKeys200Response batchLookupPublicKeys(emails)

Batch-lookup public keys by email

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getEncryptionApi();
final String emails = emails_example; // String | Comma-separated list of email addresses

try {
    final response = api.batchLookupPublicKeys(emails);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EncryptionApi->batchLookupPublicKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emails** | **String**| Comma-separated list of email addresses | 

### Return type

[**BatchLookupPublicKeys200Response**](BatchLookupPublicKeys200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEncryptionKey**
> CreateEncryptionKey201Response createEncryptionKey(createEncryptionKeyRequest)

Upload an encryption key pair

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getEncryptionApi();
final CreateEncryptionKeyRequest createEncryptionKeyRequest = ; // CreateEncryptionKeyRequest | 

try {
    final response = api.createEncryptionKey(createEncryptionKeyRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EncryptionApi->createEncryptionKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEncryptionKeyRequest** | [**CreateEncryptionKeyRequest**](CreateEncryptionKeyRequest.md)|  | 

### Return type

[**CreateEncryptionKey201Response**](CreateEncryptionKey201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEncryptionRecovery**
> createEncryptionRecovery(createEncryptionRecoveryRequest)

Store an encryption recovery blob

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getEncryptionApi();
final CreateEncryptionRecoveryRequest createEncryptionRecoveryRequest = ; // CreateEncryptionRecoveryRequest | 

try {
    api.createEncryptionRecovery(createEncryptionRecoveryRequest);
} on DioException catch (e) {
    print('Exception when calling EncryptionApi->createEncryptionRecovery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEncryptionRecoveryRequest** | [**CreateEncryptionRecoveryRequest**](CreateEncryptionRecoveryRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEncryptionKey**
> GetEncryptionKey200Response getEncryptionKey(email)

Get encryption key for a mailbox

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getEncryptionApi();
final String email = email_example; // String | 

try {
    final response = api.getEncryptionKey(email);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EncryptionApi->getEncryptionKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**GetEncryptionKey200Response**](GetEncryptionKey200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotateEncryptionKey**
> rotateEncryptionKey(rotateEncryptionKeyRequest)

Rotate an encryption key

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getEncryptionApi();
final RotateEncryptionKeyRequest rotateEncryptionKeyRequest = ; // RotateEncryptionKeyRequest | 

try {
    api.rotateEncryptionKey(rotateEncryptionKeyRequest);
} on DioException catch (e) {
    print('Exception when calling EncryptionApi->rotateEncryptionKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rotateEncryptionKeyRequest** | [**RotateEncryptionKeyRequest**](RotateEncryptionKeyRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


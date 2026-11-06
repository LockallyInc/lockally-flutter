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
[**getEncryptionStatus**](EncryptionApi.md#getencryptionstatus) | **GET** /v1/encryption/status | End-to-end encryption status for the workspace
[**rotateEncryptionKey**](EncryptionApi.md#rotateencryptionkey) | **POST** /v1/encryption/keys/rotate | Re-seal an encryption key under a new password


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

Only the mailbox's own webmail session may call this; an API key is refused with 403. The private key is sealed under that mailbox's password, which an administrator never has. `mailbox_email`, if sent, must be the caller's own mailbox. A mailbox that already has a key is starting over: the old key is kept inactive, not destroyed, and the new one starts without a recovery code.

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

Only the mailbox's own webmail session may call this; an API key is refused with 403. The private key is sealed under that mailbox's password, which an administrator never has. `mailbox_email`, if sent, must be the caller's own mailbox. The blob is the private key sealed under a recovery code the browser generated; the code itself is never sent. Replaces any earlier one.

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

Anyone in the workspace gets the public key. The mailbox's own webmail session also gets its sealed private key, its sealed recovery copy and the recovery state.

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

# **getEncryptionStatus**
> GetEncryptionStatus200Response getEncryptionStatus()

End-to-end encryption status for the workspace

For administrators: whether the add-on is on, and for each mailbox whether it has a key and a recovery code. Carries no key material.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getEncryptionApi();

try {
    final response = api.getEncryptionStatus();
    print(response);
} on DioException catch (e) {
    print('Exception when calling EncryptionApi->getEncryptionStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetEncryptionStatus200Response**](GetEncryptionStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotateEncryptionKey**
> rotateEncryptionKey(rotateEncryptionKeyRequest)

Re-seal an encryption key under a new password

Only the mailbox's own webmail session may call this; an API key is refused with 403. The private key is sealed under that mailbox's password, which an administrator never has. `mailbox_email`, if sent, must be the caller's own mailbox. The key pair does not change, so every message stays readable.

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


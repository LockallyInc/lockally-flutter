# lockally.api.DomainsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDomain**](DomainsApi.md#createdomain) | **POST** /v1/domains | Register a domain
[**deleteDomain**](DomainsApi.md#deletedomain) | **DELETE** /v1/domains/{domain} | Delete a domain
[**disableReturnPath**](DomainsApi.md#disablereturnpath) | **DELETE** /v1/domains/{domain}/return-path | Turn off the custom Return-Path
[**enableReturnPath**](DomainsApi.md#enablereturnpath) | **POST** /v1/domains/{domain}/return-path | Turn on the custom Return-Path
[**getDomain**](DomainsApi.md#getdomain) | **GET** /v1/domains/{domain} | Get a domain
[**getReturnPath**](DomainsApi.md#getreturnpath) | **GET** /v1/domains/{domain}/return-path | Get the custom Return-Path
[**listDomains**](DomainsApi.md#listdomains) | **GET** /v1/domains | List domains
[**verifyDomain**](DomainsApi.md#verifydomain) | **POST** /v1/domains/{domain}/verify | Force-poll DNS verification
[**verifyReturnPath**](DomainsApi.md#verifyreturnpath) | **POST** /v1/domains/{domain}/return-path/verify | Check the custom Return-Path records


# **createDomain**
> Domain createDomain(createDomainRequest)

Register a domain

Registers a new domain for the calling tenant. Generates a DKIM keypair and verification token. Returns DNS instructions the tenant must publish under their own DNS (verification TXT, SPF include, DKIM TXT, MX records to `mx1`/`mx2.lockally.com`, DMARC seed).  **Idempotent** — re-posting the same domain returns the existing record with the same DKIM keys and token (regenerating would break the tenant's published DNS). Returns 200 on idempotent hit, 201 on first create.  Returns 409 if the domain is already claimed by a different tenant. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final CreateDomainRequest createDomainRequest = ; // CreateDomainRequest | 

try {
    final response = api.createDomain(createDomainRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->createDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDomainRequest** | [**CreateDomainRequest**](CreateDomainRequest.md)|  | 

### Return type

[**Domain**](Domain.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDomain**
> deleteDomain(domain)

Delete a domain

Removes the domain registration. Refuses with 409 if any mailbox is still attached — delete the mailboxes first. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    api.deleteDomain(domain);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->deleteDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableReturnPath**
> disableReturnPath(domain)

Turn off the custom Return-Path

API mail uses the sender's own address as the envelope sender again, from the next message. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    api.disableReturnPath(domain);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->disableReturnPath: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableReturnPath**
> ReturnPath enableReturnPath(domain)

Turn on the custom Return-Path

Moves it to `pending` and returns the two records to publish on `bounces.<domain>`. Nothing changes for mail until they are confirmed with the verify call. The domain must be verified. Available on every plan except Free. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    final response = api.enableReturnPath(domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->enableReturnPath: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**|  | 

### Return type

[**ReturnPath**](ReturnPath.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomain**
> Domain getDomain(domain)

Get a domain

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    final response = api.getDomain(domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->getDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**|  | 

### Return type

[**Domain**](Domain.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReturnPath**
> ReturnPath getReturnPath(domain)

Get the custom Return-Path

A custom Return-Path moves the envelope sender of mail sent through the API from this domain onto `bounces.<domain>`. Bounce reports then come back to Lockally instead of the sending mailbox, and a bounce that arrives after delivery marks the message bounced, suppresses the address and fires `delivery.bounced`. Mail sent from webmail or mail apps is not affected. DKIM stays signed by the domain itself. `status` is `off`, `pending` (records not confirmed yet) or `active`. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    final response = api.getReturnPath(domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->getReturnPath: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**|  | 

### Return type

[**ReturnPath**](ReturnPath.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDomains**
> ListDomains200Response listDomains()

List domains

Returns every domain registered under the calling tenant.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();

try {
    final response = api.listDomains();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->listDomains: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListDomains200Response**](ListDomains200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyDomain**
> Domain verifyDomain(domain)

Force-poll DNS verification

Synchronously checks the `_lockally-verify.<domain>` TXT record against the stored verification token. Returns 200 either way: the returned `verified` boolean tells you whether DNS now confirms. Caller polls until `verified: true`. In v2 a background worker auto-polls and fires a `domain.verified` webhook. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    final response = api.verifyDomain(domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->verifyDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**|  | 

### Return type

[**Domain**](Domain.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyReturnPath**
> ReturnPath verifyReturnPath(domain)

Check the custom Return-Path records

Looks up the MX and SPF records on `bounces.<domain>`. Returns 200 either way: while a record is missing the status stays `pending` and `check` says which one. Once both are found the Return-Path becomes `active` and the send path starts using it. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    final response = api.verifyReturnPath(domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->verifyReturnPath: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**|  | 

### Return type

[**ReturnPath**](ReturnPath.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


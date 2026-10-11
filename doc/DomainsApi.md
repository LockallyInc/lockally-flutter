# lockally.api.DomainsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1DomainsDomainDelete**](DomainsApi.md#v1domainsdomaindelete) | **DELETE** /v1/domains/{domain} | Delete a domain
[**v1DomainsDomainGet**](DomainsApi.md#v1domainsdomainget) | **GET** /v1/domains/{domain} | Get a domain
[**v1DomainsDomainReturnPathDelete**](DomainsApi.md#v1domainsdomainreturnpathdelete) | **DELETE** /v1/domains/{domain}/return-path | Turn off the custom Return-Path
[**v1DomainsDomainReturnPathGet**](DomainsApi.md#v1domainsdomainreturnpathget) | **GET** /v1/domains/{domain}/return-path | Get the custom Return-Path
[**v1DomainsDomainReturnPathPost**](DomainsApi.md#v1domainsdomainreturnpathpost) | **POST** /v1/domains/{domain}/return-path | Turn on the custom Return-Path
[**v1DomainsDomainReturnPathVerifyPost**](DomainsApi.md#v1domainsdomainreturnpathverifypost) | **POST** /v1/domains/{domain}/return-path/verify | Check the custom Return-Path records
[**v1DomainsDomainVerifyPost**](DomainsApi.md#v1domainsdomainverifypost) | **POST** /v1/domains/{domain}/verify | Force-poll DNS verification
[**v1DomainsGet**](DomainsApi.md#v1domainsget) | **GET** /v1/domains | List domains
[**v1DomainsPost**](DomainsApi.md#v1domainspost) | **POST** /v1/domains | Register a domain


# **v1DomainsDomainDelete**
> v1DomainsDomainDelete(domain)

Delete a domain

Removes the domain registration. Refuses with 409 if any mailbox is still attached — delete the mailboxes first. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    api.v1DomainsDomainDelete(domain);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->v1DomainsDomainDelete: $e\n');
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

# **v1DomainsDomainGet**
> Domain v1DomainsDomainGet(domain)

Get a domain

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    final response = api.v1DomainsDomainGet(domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->v1DomainsDomainGet: $e\n');
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

# **v1DomainsDomainReturnPathDelete**
> v1DomainsDomainReturnPathDelete(domain)

Turn off the custom Return-Path

API mail uses the sender's own address as the envelope sender again, from the next message. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    api.v1DomainsDomainReturnPathDelete(domain);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->v1DomainsDomainReturnPathDelete: $e\n');
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

# **v1DomainsDomainReturnPathGet**
> ReturnPath v1DomainsDomainReturnPathGet(domain)

Get the custom Return-Path

A custom Return-Path moves the envelope sender of mail sent through the API from this domain onto `bounces.<domain>`. Bounce reports then come back to Lockally instead of the sending mailbox, and a bounce that arrives after delivery marks the message bounced, suppresses the address and fires `delivery.bounced`. Mail sent from webmail or mail apps is not affected. DKIM stays signed by the domain itself. `status` is `off`, `pending` (records not confirmed yet) or `active`. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    final response = api.v1DomainsDomainReturnPathGet(domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->v1DomainsDomainReturnPathGet: $e\n');
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

# **v1DomainsDomainReturnPathPost**
> ReturnPath v1DomainsDomainReturnPathPost(domain)

Turn on the custom Return-Path

Moves it to `pending` and returns the two records to publish on `bounces.<domain>`. Nothing changes for mail until they are confirmed with the verify call. The domain must be verified. Available on every plan except Free. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    final response = api.v1DomainsDomainReturnPathPost(domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->v1DomainsDomainReturnPathPost: $e\n');
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

# **v1DomainsDomainReturnPathVerifyPost**
> ReturnPath v1DomainsDomainReturnPathVerifyPost(domain)

Check the custom Return-Path records

Looks up the MX and SPF records on `bounces.<domain>`. Returns 200 either way: while a record is missing the status stays `pending` and `check` says which one. Once both are found the Return-Path becomes `active` and the send path starts using it. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    final response = api.v1DomainsDomainReturnPathVerifyPost(domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->v1DomainsDomainReturnPathVerifyPost: $e\n');
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

# **v1DomainsDomainVerifyPost**
> Domain v1DomainsDomainVerifyPost(domain)

Force-poll DNS verification

Synchronously checks the `_lockally-verify.<domain>` TXT record against the stored verification token. Returns 200 either way: the returned `verified` boolean tells you whether DNS now confirms. Caller polls until `verified: true`. In v2 a background worker auto-polls and fires a `domain.verified` webhook. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final String domain = domain_example; // String | 

try {
    final response = api.v1DomainsDomainVerifyPost(domain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->v1DomainsDomainVerifyPost: $e\n');
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

# **v1DomainsGet**
> V1DomainsGet200Response v1DomainsGet()

List domains

Returns every domain registered under the calling tenant.

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();

try {
    final response = api.v1DomainsGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->v1DomainsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1DomainsGet200Response**](V1DomainsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DomainsPost**
> Domain v1DomainsPost(v1DomainsPostRequest)

Register a domain

Registers a new domain for the calling tenant. Generates a DKIM keypair and verification token. Returns DNS instructions the tenant must publish under their own DNS (verification TXT, SPF include, DKIM TXT, MX records to `mx1`/`mx2.lockally.com`, DMARC seed).  **Idempotent** — re-posting the same domain returns the existing record with the same DKIM keys and token (regenerating would break the tenant's published DNS). Returns 200 on idempotent hit, 201 on first create.  Returns 409 if the domain is already claimed by a different tenant. 

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getDomainsApi();
final V1DomainsPostRequest v1DomainsPostRequest = ; // V1DomainsPostRequest | 

try {
    final response = api.v1DomainsPost(v1DomainsPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DomainsApi->v1DomainsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1DomainsPostRequest** | [**V1DomainsPostRequest**](V1DomainsPostRequest.md)|  | 

### Return type

[**Domain**](Domain.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


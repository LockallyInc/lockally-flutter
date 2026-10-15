# lockally.api.MigrationsApi

## Load the API package
```dart
import 'package:lockally/api.dart';
```

All URIs are relative to *https://api.lockally.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelMigration**](MigrationsApi.md#cancelmigration) | **POST** /v1/migrations/{id}/cancel | Cancel a running migration
[**checkMigrationDNS**](MigrationsApi.md#checkmigrationdns) | **GET** /v1/migrations/{id}/dns-check | Check DNS readiness for cutover
[**createMigration**](MigrationsApi.md#createmigration) | **POST** /v1/migrations | Create a migration
[**createMigrationCredential**](MigrationsApi.md#createmigrationcredential) | **POST** /v1/migrations/credentials | Store a migration credential
[**deleteMigration**](MigrationsApi.md#deletemigration) | **DELETE** /v1/migrations/{id} | Delete a migration
[**deleteMigrationCredential**](MigrationsApi.md#deletemigrationcredential) | **DELETE** /v1/migrations/credentials/{id} | Delete a migration credential
[**deltaSyncMigration**](MigrationsApi.md#deltasyncmigration) | **POST** /v1/migrations/{id}/delta-sync | Run a delta sync
[**discoverMigration**](MigrationsApi.md#discovermigration) | **POST** /v1/migrations/{id}/discover | Discover source mailboxes
[**finalSyncMigration**](MigrationsApi.md#finalsyncmigration) | **POST** /v1/migrations/{id}/final-sync | Run the final sync before cutover
[**getMigration**](MigrationsApi.md#getmigration) | **GET** /v1/migrations/{id} | Get a migration
[**getMigrationProgress**](MigrationsApi.md#getmigrationprogress) | **GET** /v1/migrations/{id}/progress | Get migration progress
[**listMigrationCredentials**](MigrationsApi.md#listmigrationcredentials) | **GET** /v1/migrations/credentials | List migration credentials
[**listMigrationEvents**](MigrationsApi.md#listmigrationevents) | **GET** /v1/migrations/{id}/events | List migration events
[**listMigrationMailboxes**](MigrationsApi.md#listmigrationmailboxes) | **GET** /v1/migrations/{id}/mailboxes | List migration mailboxes
[**listMigrations**](MigrationsApi.md#listmigrations) | **GET** /v1/migrations | List migrations
[**mapMigration**](MigrationsApi.md#mapmigration) | **POST** /v1/migrations/{id}/map | Map source to destination mailboxes
[**retryMigration**](MigrationsApi.md#retrymigration) | **POST** /v1/migrations/{id}/retry | Retry a failed or cancelled migration
[**startMigration**](MigrationsApi.md#startmigration) | **POST** /v1/migrations/{id}/start | Start the migration
[**updateMigration**](MigrationsApi.md#updatemigration) | **PATCH** /v1/migrations/{id} | Update a migration
[**updateMigrationMailbox**](MigrationsApi.md#updatemigrationmailbox) | **PATCH** /v1/migrations/{id}/mailboxes/{mbxId} | Update a migration mailbox
[**validateMigration**](MigrationsApi.md#validatemigration) | **POST** /v1/migrations/{id}/validate | Validate migrated data


# **cancelMigration**
> DiscoverMigration202Response cancelMigration(id)

Cancel a running migration

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.cancelMigration(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->cancelMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DiscoverMigration202Response**](DiscoverMigration202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkMigrationDNS**
> JsonObject checkMigrationDNS(id)

Check DNS readiness for cutover

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.checkMigrationDNS(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->checkMigrationDNS: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMigration**
> Migration createMigration(createMigrationRequest)

Create a migration

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final CreateMigrationRequest createMigrationRequest = ; // CreateMigrationRequest | 

try {
    final response = api.createMigration(createMigrationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->createMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMigrationRequest** | [**CreateMigrationRequest**](CreateMigrationRequest.md)|  | 

### Return type

[**Migration**](Migration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMigrationCredential**
> MigrationCredential createMigrationCredential(createMigrationCredentialRequest)

Store a migration credential

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final CreateMigrationCredentialRequest createMigrationCredentialRequest = ; // CreateMigrationCredentialRequest | 

try {
    final response = api.createMigrationCredential(createMigrationCredentialRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->createMigrationCredential: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMigrationCredentialRequest** | [**CreateMigrationCredentialRequest**](CreateMigrationCredentialRequest.md)|  | 

### Return type

[**MigrationCredential**](MigrationCredential.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMigration**
> deleteMigration(id)

Delete a migration

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteMigration(id);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->deleteMigration: $e\n');
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

# **deleteMigrationCredential**
> deleteMigrationCredential(id)

Delete a migration credential

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteMigrationCredential(id);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->deleteMigrationCredential: $e\n');
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

# **deltaSyncMigration**
> StartMigration202Response deltaSyncMigration(id)

Run a delta sync

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.deltaSyncMigration(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->deltaSyncMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**StartMigration202Response**](StartMigration202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discoverMigration**
> DiscoverMigration202Response discoverMigration(id)

Discover source mailboxes

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.discoverMigration(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->discoverMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DiscoverMigration202Response**](DiscoverMigration202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **finalSyncMigration**
> StartMigration202Response finalSyncMigration(id)

Run the final sync before cutover

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.finalSyncMigration(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->finalSyncMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**StartMigration202Response**](StartMigration202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMigration**
> Migration getMigration(id)

Get a migration

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getMigration(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->getMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Migration**](Migration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMigrationProgress**
> MigrationProgress getMigrationProgress(id)

Get migration progress

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getMigrationProgress(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->getMigrationProgress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MigrationProgress**](MigrationProgress.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMigrationCredentials**
> ListMigrationCredentials200Response listMigrationCredentials()

List migration credentials

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();

try {
    final response = api.listMigrationCredentials();
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->listMigrationCredentials: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListMigrationCredentials200Response**](ListMigrationCredentials200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMigrationEvents**
> ListMigrationEvents200Response listMigrationEvents(id)

List migration events

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.listMigrationEvents(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->listMigrationEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ListMigrationEvents200Response**](ListMigrationEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMigrationMailboxes**
> ListMigrationMailboxes200Response listMigrationMailboxes(id)

List migration mailboxes

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.listMigrationMailboxes(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->listMigrationMailboxes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ListMigrationMailboxes200Response**](ListMigrationMailboxes200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMigrations**
> ListMigrations200Response listMigrations()

List migrations

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();

try {
    final response = api.listMigrations();
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->listMigrations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListMigrations200Response**](ListMigrations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapMigration**
> DiscoverMigration202Response mapMigration(id, mapMigrationRequest)

Map source to destination mailboxes

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final MapMigrationRequest mapMigrationRequest = ; // MapMigrationRequest | 

try {
    final response = api.mapMigration(id, mapMigrationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->mapMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **mapMigrationRequest** | [**MapMigrationRequest**](MapMigrationRequest.md)|  | 

### Return type

[**DiscoverMigration202Response**](DiscoverMigration202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retryMigration**
> DiscoverMigration202Response retryMigration(id)

Retry a failed or cancelled migration

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.retryMigration(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->retryMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DiscoverMigration202Response**](DiscoverMigration202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startMigration**
> StartMigration202Response startMigration(id)

Start the migration

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.startMigration(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->startMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**StartMigration202Response**](StartMigration202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMigration**
> Migration updateMigration(id, updateMigrationRequest)

Update a migration

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateMigrationRequest updateMigrationRequest = ; // UpdateMigrationRequest | 

try {
    final response = api.updateMigration(id, updateMigrationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->updateMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateMigrationRequest** | [**UpdateMigrationRequest**](UpdateMigrationRequest.md)|  | 

### Return type

[**Migration**](Migration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMigrationMailbox**
> updateMigrationMailbox(id, mbxId, updateMigrationMailboxRequest)

Update a migration mailbox

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String mbxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateMigrationMailboxRequest updateMigrationMailboxRequest = ; // UpdateMigrationMailboxRequest | 

try {
    api.updateMigrationMailbox(id, mbxId, updateMigrationMailboxRequest);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->updateMigrationMailbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **mbxId** | **String**|  | 
 **updateMigrationMailboxRequest** | [**UpdateMigrationMailboxRequest**](UpdateMigrationMailboxRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateMigration**
> StartMigration202Response validateMigration(id)

Validate migrated data

### Example
```dart
import 'package:lockally/api.dart';

final api = Lockally().getMigrationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.validateMigration(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MigrationsApi->validateMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**StartMigration202Response**](StartMigration202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


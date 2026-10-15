//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:lockally/src/serializers.dart';
import 'package:lockally/src/auth/api_key_auth.dart';
import 'package:lockally/src/auth/basic_auth.dart';
import 'package:lockally/src/auth/bearer_auth.dart';
import 'package:lockally/src/auth/oauth.dart';
import 'package:lockally/src/api/add_ons_api.dart';
import 'package:lockally/src/api/admin_api.dart';
import 'package:lockally/src/api/admins_api.dart';
import 'package:lockally/src/api/agents_api.dart';
import 'package:lockally/src/api/ai_api.dart';
import 'package:lockally/src/api/aliases_api.dart';
import 'package:lockally/src/api/api_keys_api.dart';
import 'package:lockally/src/api/billing_api.dart';
import 'package:lockally/src/api/calendars_api.dart';
import 'package:lockally/src/api/contact_lists_api.dart';
import 'package:lockally/src/api/contacts_api.dart';
import 'package:lockally/src/api/dashboard_api.dart';
import 'package:lockally/src/api/directory_api.dart';
import 'package:lockally/src/api/distribution_lists_api.dart';
import 'package:lockally/src/api/domains_api.dart';
import 'package:lockally/src/api/drafts_api.dart';
import 'package:lockally/src/api/encryption_api.dart';
import 'package:lockally/src/api/health_api.dart';
import 'package:lockally/src/api/ip_pools_api.dart';
import 'package:lockally/src/api/mailboxes_api.dart';
import 'package:lockally/src/api/migrations_api.dart';
import 'package:lockally/src/api/resources_api.dart';
import 'package:lockally/src/api/send_api.dart';
import 'package:lockally/src/api/signup_api.dart';
import 'package:lockally/src/api/suppressions_api.dart';
import 'package:lockally/src/api/templates_api.dart';
import 'package:lockally/src/api/tenant_api.dart';
import 'package:lockally/src/api/test_api.dart';
import 'package:lockally/src/api/users_api.dart';
import 'package:lockally/src/api/webhooks_api.dart';

class Lockally {
  static const String basePath = r'https://api.lockally.com';

  final Dio dio;
  final Serializers serializers;

  Lockally({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the OAuth token associated with the given [name].
  ///
  /// If no [OAuthInterceptor] is registered or no token exists for the given
  /// [name], this method has no effect.
  void removeOAuthToken(String name) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens.remove(name);
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the bearer authentication token associated with the given [name].
  ///
  /// If no [BearerAuthInterceptor] is registered or no token exists for the
  /// given [name], this method has no effect.
  void removeBearerAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens.remove(name);
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  /// Removes the basic authentication credentials associated with the given [name].
  ///
  /// If no [BasicAuthInterceptor] is registered or no credentials exist for the
  /// given [name], this method has no effect.
  void removeBasicAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo.remove(name);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Removes the API key associated with the given [name].
  ///
  /// If no [ApiKeyAuthInterceptor] is registered or no API key exists for the
  /// given [name], this method has no effect.
  void removeApiKey(String name) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys.remove(name);
    }
  }

  /// Get AddOnsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AddOnsApi getAddOnsApi() {
    return AddOnsApi(dio, serializers);
  }

  /// Get AdminApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdminApi getAdminApi() {
    return AdminApi(dio, serializers);
  }

  /// Get AdminsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdminsApi getAdminsApi() {
    return AdminsApi(dio, serializers);
  }

  /// Get AgentsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AgentsApi getAgentsApi() {
    return AgentsApi(dio, serializers);
  }

  /// Get AiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AiApi getAiApi() {
    return AiApi(dio, serializers);
  }

  /// Get AliasesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AliasesApi getAliasesApi() {
    return AliasesApi(dio, serializers);
  }

  /// Get ApiKeysApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApiKeysApi getApiKeysApi() {
    return ApiKeysApi(dio, serializers);
  }

  /// Get BillingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BillingApi getBillingApi() {
    return BillingApi(dio, serializers);
  }

  /// Get CalendarsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CalendarsApi getCalendarsApi() {
    return CalendarsApi(dio, serializers);
  }

  /// Get ContactListsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ContactListsApi getContactListsApi() {
    return ContactListsApi(dio, serializers);
  }

  /// Get ContactsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ContactsApi getContactsApi() {
    return ContactsApi(dio, serializers);
  }

  /// Get DashboardApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DashboardApi getDashboardApi() {
    return DashboardApi(dio, serializers);
  }

  /// Get DirectoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DirectoryApi getDirectoryApi() {
    return DirectoryApi(dio, serializers);
  }

  /// Get DistributionListsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DistributionListsApi getDistributionListsApi() {
    return DistributionListsApi(dio, serializers);
  }

  /// Get DomainsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DomainsApi getDomainsApi() {
    return DomainsApi(dio, serializers);
  }

  /// Get DraftsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DraftsApi getDraftsApi() {
    return DraftsApi(dio, serializers);
  }

  /// Get EncryptionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EncryptionApi getEncryptionApi() {
    return EncryptionApi(dio, serializers);
  }

  /// Get HealthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HealthApi getHealthApi() {
    return HealthApi(dio, serializers);
  }

  /// Get IpPoolsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IpPoolsApi getIpPoolsApi() {
    return IpPoolsApi(dio, serializers);
  }

  /// Get MailboxesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MailboxesApi getMailboxesApi() {
    return MailboxesApi(dio, serializers);
  }

  /// Get MigrationsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MigrationsApi getMigrationsApi() {
    return MigrationsApi(dio, serializers);
  }

  /// Get ResourcesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ResourcesApi getResourcesApi() {
    return ResourcesApi(dio, serializers);
  }

  /// Get SendApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SendApi getSendApi() {
    return SendApi(dio, serializers);
  }

  /// Get SignupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SignupApi getSignupApi() {
    return SignupApi(dio, serializers);
  }

  /// Get SuppressionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SuppressionsApi getSuppressionsApi() {
    return SuppressionsApi(dio, serializers);
  }

  /// Get TemplatesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TemplatesApi getTemplatesApi() {
    return TemplatesApi(dio, serializers);
  }

  /// Get TenantApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantApi getTenantApi() {
    return TenantApi(dio, serializers);
  }

  /// Get TestApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TestApi getTestApi() {
    return TestApi(dio, serializers);
  }

  /// Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UsersApi getUsersApi() {
    return UsersApi(dio, serializers);
  }

  /// Get WebhooksApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WebhooksApi getWebhooksApi() {
    return WebhooksApi(dio, serializers);
  }
}

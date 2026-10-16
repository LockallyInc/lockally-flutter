//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:lockally/src/date_serializer.dart';
import 'package:lockally/src/model/date.dart';

import 'package:lockally/src/model/api_key.dart';
import 'package:lockally/src/model/activate_add_on200_response.dart';
import 'package:lockally/src/model/add_calendar_member_request.dart';
import 'package:lockally/src/model/add_contact_list_member_request.dart';
import 'package:lockally/src/model/add_on.dart';
import 'package:lockally/src/model/add_shared_member_request.dart';
import 'package:lockally/src/model/admin.dart';
import 'package:lockally/src/model/admin_full.dart';
import 'package:lockally/src/model/admin_login200_response.dart';
import 'package:lockally/src/model/admin_login_request.dart';
import 'package:lockally/src/model/agent_send_result.dart';
import 'package:lockally/src/model/ai_config.dart';
import 'package:lockally/src/model/ai_config_update.dart';
import 'package:lockally/src/model/alias.dart';
import 'package:lockally/src/model/annotations.dart';
import 'package:lockally/src/model/attachment.dart';
import 'package:lockally/src/model/audit_event.dart';
import 'package:lockally/src/model/batch_lookup_public_keys200_response.dart';
import 'package:lockally/src/model/batch_lookup_public_keys200_response_data_inner.dart';
import 'package:lockally/src/model/batch_result.dart';
import 'package:lockally/src/model/billing_status.dart';
import 'package:lockally/src/model/calendar.dart';
import 'package:lockally/src/model/calendar_event.dart';
import 'package:lockally/src/model/calendar_integration.dart';
import 'package:lockally/src/model/calendar_member.dart';
import 'package:lockally/src/model/calendar_policies.dart';
import 'package:lockally/src/model/classification.dart';
import 'package:lockally/src/model/contact.dart';
import 'package:lockally/src/model/contact_list.dart';
import 'package:lockally/src/model/contact_lookup.dart';
import 'package:lockally/src/model/contact_lookup_contact.dart';
import 'package:lockally/src/model/contact_lookup_history.dart';
import 'package:lockally/src/model/create_ai_units_checkout200_response.dart';
import 'package:lockally/src/model/create_alias_request.dart';
import 'package:lockally/src/model/create_api_key201_response.dart';
import 'package:lockally/src/model/create_api_key_request.dart';
import 'package:lockally/src/model/create_billing_checkout200_response.dart';
import 'package:lockally/src/model/create_billing_checkout_request.dart';
import 'package:lockally/src/model/create_calendar_event_request.dart';
import 'package:lockally/src/model/create_calendar_integration_request.dart';
import 'package:lockally/src/model/create_calendar_request.dart';
import 'package:lockally/src/model/create_contact_list_request.dart';
import 'package:lockally/src/model/create_contact_request.dart';
import 'package:lockally/src/model/create_dedicated_ip_request_request.dart';
import 'package:lockally/src/model/create_distribution_list_request.dart';
import 'package:lockally/src/model/create_domain_request.dart';
import 'package:lockally/src/model/create_encryption_key201_response.dart';
import 'package:lockally/src/model/create_encryption_key_request.dart';
import 'package:lockally/src/model/create_encryption_recovery_request.dart';
import 'package:lockally/src/model/create_mailbox_request.dart';
import 'package:lockally/src/model/create_migration_credential_request.dart';
import 'package:lockally/src/model/create_migration_credential_request_credentials.dart';
import 'package:lockally/src/model/create_migration_request.dart';
import 'package:lockally/src/model/create_resource_request.dart';
import 'package:lockally/src/model/create_suppression_request.dart';
import 'package:lockally/src/model/create_units_checkout200_response.dart';
import 'package:lockally/src/model/create_units_checkout_request.dart';
import 'package:lockally/src/model/create_user_request.dart';
import 'package:lockally/src/model/create_webhook_request.dart';
import 'package:lockally/src/model/dns_record.dart';
import 'package:lockally/src/model/dedicated_ip_request.dart';
import 'package:lockally/src/model/directory_permissions.dart';
import 'package:lockally/src/model/discover_migration202_response.dart';
import 'package:lockally/src/model/distribution_list_detail.dart';
import 'package:lockally/src/model/distribution_list_summary.dart';
import 'package:lockally/src/model/domain.dart';
import 'package:lockally/src/model/draft.dart';
import 'package:lockally/src/model/draft_list.dart';
import 'package:lockally/src/model/draft_result.dart';
import 'package:lockally/src/model/export_mailbox201_response.dart';
import 'package:lockally/src/model/gal_settings.dart';
import 'package:lockally/src/model/get_add_on_status200_response.dart';
import 'package:lockally/src/model/get_audit_summary200_response.dart';
import 'package:lockally/src/model/get_calendar_overview200_response.dart';
import 'package:lockally/src/model/get_calendar_overview200_response_activity_inner.dart';
import 'package:lockally/src/model/get_calendar_security200_response.dart';
import 'package:lockally/src/model/get_calendar_security200_response_alerts_inner.dart';
import 'package:lockally/src/model/get_calendar_security200_response_delegated_access_inner.dart';
import 'package:lockally/src/model/get_calendar_security200_response_external_sharing.dart';
import 'package:lockally/src/model/get_calendar_security200_response_public_calendar_list_inner.dart';
import 'package:lockally/src/model/get_contact_list200_response.dart';
import 'package:lockally/src/model/get_contact_list200_response_members_inner.dart';
import 'package:lockally/src/model/get_contact_lists200_response.dart';
import 'package:lockally/src/model/get_contact_lists200_response_data_inner.dart';
import 'package:lockally/src/model/get_current_admin200_response.dart';
import 'package:lockally/src/model/get_directory_activity200_response.dart';
import 'package:lockally/src/model/get_directory_activity200_response_data_inner.dart';
import 'package:lockally/src/model/get_directory_stats200_response.dart';
import 'package:lockally/src/model/get_domains_status200_response.dart';
import 'package:lockally/src/model/get_domains_status200_response_domains_inner.dart';
import 'package:lockally/src/model/get_domains_status200_response_domains_inner_checks_inner.dart';
import 'package:lockally/src/model/get_encryption_key200_response.dart';
import 'package:lockally/src/model/get_ip_assignment200_response.dart';
import 'package:lockally/src/model/get_integrations_summary200_response.dart';
import 'package:lockally/src/model/get_integrations_summary200_response_api_keys_inner.dart';
import 'package:lockally/src/model/get_integrations_summary200_response_webhooks_inner.dart';
import 'package:lockally/src/model/get_security200_response.dart';
import 'package:lockally/src/model/get_security200_response_alerts_inner.dart';
import 'package:lockally/src/model/get_security200_response_stats_inner.dart';
import 'package:lockally/src/model/get_storage200_response.dart';
import 'package:lockally/src/model/get_storage200_response_top_mailboxes_inner.dart';
import 'package:lockally/src/model/get_storage200_response_top_messages_inner.dart';
import 'package:lockally/src/model/get_usage200_response.dart';
import 'package:lockally/src/model/get_user_insights200_response.dart';
import 'package:lockally/src/model/health_check200_response.dart';
import 'package:lockally/src/model/inbox.dart';
import 'package:lockally/src/model/inbox_list.dart';
import 'package:lockally/src/model/injection_risk.dart';
import 'package:lockally/src/model/invite_admin_request.dart';
import 'package:lockally/src/model/list_add_ons200_response.dart';
import 'package:lockally/src/model/list_admins200_response.dart';
import 'package:lockally/src/model/list_aliases200_response.dart';
import 'package:lockally/src/model/list_api_keys200_response.dart';
import 'package:lockally/src/model/list_calendar_events200_response.dart';
import 'package:lockally/src/model/list_calendar_integrations200_response.dart';
import 'package:lockally/src/model/list_calendar_members200_response.dart';
import 'package:lockally/src/model/list_calendars200_response.dart';
import 'package:lockally/src/model/list_contact_lists200_response.dart';
import 'package:lockally/src/model/list_contacts200_response.dart';
import 'package:lockally/src/model/list_dedicated_ip_requests200_response.dart';
import 'package:lockally/src/model/list_distribution_lists200_response.dart';
import 'package:lockally/src/model/list_domains200_response.dart';
import 'package:lockally/src/model/list_mailboxes200_response.dart';
import 'package:lockally/src/model/list_messages200_response.dart';
import 'package:lockally/src/model/list_migration_credentials200_response.dart';
import 'package:lockally/src/model/list_migration_events200_response.dart';
import 'package:lockally/src/model/list_migration_mailboxes200_response.dart';
import 'package:lockally/src/model/list_migrations200_response.dart';
import 'package:lockally/src/model/list_resources200_response.dart';
import 'package:lockally/src/model/list_shared_members200_response.dart';
import 'package:lockally/src/model/list_suppressions200_response.dart';
import 'package:lockally/src/model/list_templates200_response.dart';
import 'package:lockally/src/model/list_users200_response.dart';
import 'package:lockally/src/model/list_vacation_responders200_response.dart';
import 'package:lockally/src/model/list_webhooks200_response.dart';
import 'package:lockally/src/model/mailbox.dart';
import 'package:lockally/src/model/mailbox_grant.dart';
import 'package:lockally/src/model/mailbox_grant_list.dart';
import 'package:lockally/src/model/map_migration_request.dart';
import 'package:lockally/src/model/map_migration_request_mappings_inner.dart';
import 'package:lockally/src/model/mark_read_result.dart';
import 'package:lockally/src/model/message.dart';
import 'package:lockally/src/model/message_detail.dart';
import 'package:lockally/src/model/message_stats.dart';
import 'package:lockally/src/model/message_stats_counts.dart';
import 'package:lockally/src/model/message_stats_rates.dart';
import 'package:lockally/src/model/message_stats_window.dart';
import 'package:lockally/src/model/migration.dart';
import 'package:lockally/src/model/migration_credential.dart';
import 'package:lockally/src/model/migration_event.dart';
import 'package:lockally/src/model/migration_mailbox.dart';
import 'package:lockally/src/model/migration_progress.dart';
import 'package:lockally/src/model/migration_progress_mailboxes_inner.dart';
import 'package:lockally/src/model/migration_settings.dart';
import 'package:lockally/src/model/plan_catalog_entry.dart';
import 'package:lockally/src/model/policy_flags.dart';
import 'package:lockally/src/model/problem.dart';
import 'package:lockally/src/model/replace_distribution_list_members200_response.dart';
import 'package:lockally/src/model/replace_distribution_list_members_request.dart';
import 'package:lockally/src/model/resource.dart';
import 'package:lockally/src/model/return_path.dart';
import 'package:lockally/src/model/return_path_check.dart';
import 'package:lockally/src/model/rotate_encryption_key_request.dart';
import 'package:lockally/src/model/send_email200_response.dart';
import 'package:lockally/src/model/send_email202_response.dart';
import 'package:lockally/src/model/send_email_batch200_response.dart';
import 'package:lockally/src/model/send_email_batch_request.dart';
import 'package:lockally/src/model/send_email_request.dart';
import 'package:lockally/src/model/send_email_request_attachments_inner.dart';
import 'package:lockally/src/model/send_message.dart';
import 'package:lockally/src/model/set_vacation_responder_request.dart';
import 'package:lockally/src/model/shared_member.dart';
import 'package:lockally/src/model/signup_request.dart';
import 'package:lockally/src/model/simulated_inbound.dart';
import 'package:lockally/src/model/start_conversation_request.dart';
import 'package:lockally/src/model/start_migration202_response.dart';
import 'package:lockally/src/model/suppression.dart';
import 'package:lockally/src/model/template.dart';
import 'package:lockally/src/model/template_input.dart';
import 'package:lockally/src/model/tenant.dart';
import 'package:lockally/src/model/thread.dart';
import 'package:lockally/src/model/thread_classification.dart';
import 'package:lockally/src/model/thread_list.dart';
import 'package:lockally/src/model/thread_message.dart';
import 'package:lockally/src/model/thread_message_body.dart';
import 'package:lockally/src/model/thread_message_body_body.dart';
import 'package:lockally/src/model/thread_summary.dart';
import 'package:lockally/src/model/unit_bundle.dart';
import 'package:lockally/src/model/update_admin_request.dart';
import 'package:lockally/src/model/update_calendar_event_request.dart';
import 'package:lockally/src/model/update_calendar_integration_request.dart';
import 'package:lockally/src/model/update_calendar_member_request.dart';
import 'package:lockally/src/model/update_calendar_policies_request.dart';
import 'package:lockally/src/model/update_calendar_request.dart';
import 'package:lockally/src/model/update_contact_list_request.dart';
import 'package:lockally/src/model/update_contact_request.dart';
import 'package:lockally/src/model/update_directory_permissions_request.dart';
import 'package:lockally/src/model/update_gal_settings_request.dart';
import 'package:lockally/src/model/update_mailbox_request.dart';
import 'package:lockally/src/model/update_migration_mailbox_request.dart';
import 'package:lockally/src/model/update_migration_request.dart';
import 'package:lockally/src/model/update_resource_request.dart';
import 'package:lockally/src/model/update_user_request.dart';
import 'package:lockally/src/model/update_webhook_request.dart';
import 'package:lockally/src/model/user.dart';
import 'package:lockally/src/model/user_event.dart';
import 'package:lockally/src/model/vacation_params.dart';
import 'package:lockally/src/model/vacation_responder.dart';
import 'package:lockally/src/model/webhook.dart';
import 'package:lockally/src/model/whoami.dart';
import 'package:lockally/src/model/whoami_key.dart';
import 'package:lockally/src/model/whoami_tenant.dart';

part 'serializers.g.dart';

@SerializersFor([
  APIKey,$APIKey,
  ActivateAddOn200Response,
  AddCalendarMemberRequest,
  AddContactListMemberRequest,
  AddOn,
  AddSharedMemberRequest,
  Admin,$Admin,
  AdminFull,
  AdminLogin200Response,
  AdminLoginRequest,
  AgentSendResult,
  AiConfig,
  AiConfigUpdate,
  Alias,
  Annotations,
  Attachment,
  AuditEvent,
  BatchLookupPublicKeys200Response,
  BatchLookupPublicKeys200ResponseDataInner,
  BatchResult,
  BillingStatus,
  Calendar,
  CalendarEvent,
  CalendarIntegration,
  CalendarMember,
  CalendarPolicies,
  Classification,
  Contact,
  ContactList,
  ContactLookup,
  ContactLookupContact,
  ContactLookupHistory,
  CreateAiUnitsCheckout200Response,
  CreateAliasRequest,
  CreateApiKey201Response,
  CreateApiKeyRequest,
  CreateBillingCheckout200Response,
  CreateBillingCheckoutRequest,
  CreateCalendarEventRequest,
  CreateCalendarIntegrationRequest,
  CreateCalendarRequest,
  CreateContactListRequest,
  CreateContactRequest,
  CreateDedicatedIPRequestRequest,
  CreateDistributionListRequest,
  CreateDomainRequest,
  CreateEncryptionKey201Response,
  CreateEncryptionKeyRequest,
  CreateEncryptionRecoveryRequest,
  CreateMailboxRequest,
  CreateMigrationCredentialRequest,
  CreateMigrationCredentialRequestCredentials,
  CreateMigrationRequest,
  CreateResourceRequest,
  CreateSuppressionRequest,
  CreateUnitsCheckout200Response,
  CreateUnitsCheckoutRequest,
  CreateUserRequest,
  CreateWebhookRequest,
  DNSRecord,
  DedicatedIPRequest,
  DirectoryPermissions,
  DiscoverMigration202Response,
  DistributionListDetail,
  DistributionListSummary,
  Domain,
  Draft,
  DraftList,
  DraftResult,
  ExportMailbox201Response,
  GALSettings,
  GetAddOnStatus200Response,
  GetAuditSummary200Response,
  GetCalendarOverview200Response,
  GetCalendarOverview200ResponseActivityInner,
  GetCalendarSecurity200Response,
  GetCalendarSecurity200ResponseAlertsInner,
  GetCalendarSecurity200ResponseDelegatedAccessInner,
  GetCalendarSecurity200ResponseExternalSharing,
  GetCalendarSecurity200ResponsePublicCalendarListInner,
  GetContactList200Response,
  GetContactList200ResponseMembersInner,
  GetContactLists200Response,
  GetContactLists200ResponseDataInner,
  GetCurrentAdmin200Response,
  GetDirectoryActivity200Response,
  GetDirectoryActivity200ResponseDataInner,
  GetDirectoryStats200Response,
  GetDomainsStatus200Response,
  GetDomainsStatus200ResponseDomainsInner,
  GetDomainsStatus200ResponseDomainsInnerChecksInner,
  GetEncryptionKey200Response,
  GetIPAssignment200Response,
  GetIntegrationsSummary200Response,
  GetIntegrationsSummary200ResponseApiKeysInner,
  GetIntegrationsSummary200ResponseWebhooksInner,
  GetSecurity200Response,
  GetSecurity200ResponseAlertsInner,
  GetSecurity200ResponseStatsInner,
  GetStorage200Response,
  GetStorage200ResponseTopMailboxesInner,
  GetStorage200ResponseTopMessagesInner,
  GetUsage200Response,
  GetUserInsights200Response,
  HealthCheck200Response,
  Inbox,
  InboxList,
  InjectionRisk,
  InviteAdminRequest,
  ListAddOns200Response,
  ListAdmins200Response,
  ListAliases200Response,
  ListApiKeys200Response,
  ListCalendarEvents200Response,
  ListCalendarIntegrations200Response,
  ListCalendarMembers200Response,
  ListCalendars200Response,
  ListContactLists200Response,
  ListContacts200Response,
  ListDedicatedIPRequests200Response,
  ListDistributionLists200Response,
  ListDomains200Response,
  ListMailboxes200Response,
  ListMessages200Response,
  ListMigrationCredentials200Response,
  ListMigrationEvents200Response,
  ListMigrationMailboxes200Response,
  ListMigrations200Response,
  ListResources200Response,
  ListSharedMembers200Response,
  ListSuppressions200Response,
  ListTemplates200Response,
  ListUsers200Response,
  ListVacationResponders200Response,
  ListWebhooks200Response,
  Mailbox,
  MailboxGrant,
  MailboxGrantList,
  MapMigrationRequest,
  MapMigrationRequestMappingsInner,
  MarkReadResult,
  Message,$Message,
  MessageDetail,
  MessageStats,
  MessageStatsCounts,
  MessageStatsRates,
  MessageStatsWindow,
  Migration,
  MigrationCredential,
  MigrationEvent,
  MigrationMailbox,
  MigrationProgress,
  MigrationProgressMailboxesInner,
  MigrationSettings,
  PlanCatalogEntry,
  PolicyFlags,
  Problem,
  ReplaceDistributionListMembers200Response,
  ReplaceDistributionListMembersRequest,
  Resource,
  ReturnPath,
  ReturnPathCheck,
  RotateEncryptionKeyRequest,
  SendEmail200Response,
  SendEmail202Response,
  SendEmailBatch200Response,
  SendEmailBatchRequest,
  SendEmailRequest,
  SendEmailRequestAttachmentsInner,
  SendMessage,
  SetVacationResponderRequest,
  SharedMember,
  SignupRequest,
  SimulatedInbound,
  StartConversationRequest,
  StartMigration202Response,
  Suppression,
  Template,
  TemplateInput,
  Tenant,
  Thread,
  ThreadClassification,
  ThreadList,
  ThreadMessage,
  ThreadMessageBody,
  ThreadMessageBodyBody,
  ThreadSummary,
  UnitBundle,
  UpdateAdminRequest,
  UpdateCalendarEventRequest,
  UpdateCalendarIntegrationRequest,
  UpdateCalendarMemberRequest,
  UpdateCalendarPoliciesRequest,
  UpdateCalendarRequest,
  UpdateContactListRequest,
  UpdateContactRequest,
  UpdateDirectoryPermissionsRequest,
  UpdateGALSettingsRequest,
  UpdateMailboxRequest,
  UpdateMigrationMailboxRequest,
  UpdateMigrationRequest,
  UpdateResourceRequest,
  UpdateUserRequest,
  UpdateWebhookRequest,
  User,
  UserEvent,
  VacationParams,
  VacationResponder,
  Webhook,
  Whoami,
  WhoamiKey,
  WhoamiTenant,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(APIKey.serializer)
      ..add(Admin.serializer)
      ..add(Message.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

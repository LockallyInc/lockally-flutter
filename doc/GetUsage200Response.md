# lockally.model.GetUsage200Response

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mailboxesActive** | **int** | Mailboxes that are neither disabled nor soft-deleted. | 
**mailboxesTotal** | **int** | All mailboxes for this tenant, including disabled/soft-deleted. | [optional] 
**domainsVerified** | **int** | Domains that have passed DNS verification. | [optional] 
**domainsTotal** | **int** |  | [optional] 
**messagesSentLast60s** | **int** | Sends in the 60-second window ending now. Used by the rate-cap check. | [optional] 
**messagesSentTodayUtc** | **int** | Sends since 00:00 UTC. Compared against `daily_msg_quota`. | [optional] 
**messagesSentLast30d** | **int** | Rolling 30-day send count (not calendar month). | [optional] 
**bytesStored** | **int** | Lifetime sum of `messages.size_bytes` for this tenant. | [optional] 
**rateCapPerMin** | **int** | Per-tenant outbound rate cap (sends per minute). | [optional] 
**dailyMsgQuota** | **int** | Per-tenant daily send quota (UTC day boundary). | [optional] 
**webhooksTotal** | **int** |  | [optional] 
**webhooksPaused** | **int** | Webhook subscriptions auto-paused after 50 consecutive failures (LT2). | [optional] 
**generatedAt** | [**DateTime**](DateTime.md) | When this snapshot was generated, RFC 3339 UTC. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_usage200_response.g.dart';

/// GetUsage200Response
///
/// Properties:
/// * [mailboxesActive] - Mailboxes that are neither disabled nor soft-deleted.
/// * [mailboxesTotal] - All mailboxes for this tenant, including disabled/soft-deleted.
/// * [domainsVerified] - Domains that have passed DNS verification.
/// * [domainsTotal] 
/// * [messagesSentLast60s] - Sends in the 60-second window ending now. Used by the rate-cap check.
/// * [messagesSentTodayUtc] - Sends since 00:00 UTC. Compared against `daily_msg_quota`.
/// * [messagesSentLast30d] - Rolling 30-day send count (not calendar month).
/// * [bytesStored] - Lifetime sum of `messages.size_bytes` for this tenant.
/// * [rateCapPerMin] - Per-tenant outbound rate cap (sends per minute).
/// * [dailyMsgQuota] - Per-tenant daily send quota (UTC day boundary).
/// * [webhooksTotal] 
/// * [webhooksPaused] - Webhook subscriptions auto-paused after 50 consecutive failures (LT2).
/// * [generatedAt] - When this snapshot was generated, RFC 3339 UTC.
@BuiltValue()
abstract class GetUsage200Response implements Built<GetUsage200Response, GetUsage200ResponseBuilder> {
  /// Mailboxes that are neither disabled nor soft-deleted.
  @BuiltValueField(wireName: r'mailboxes_active')
  int get mailboxesActive;

  /// All mailboxes for this tenant, including disabled/soft-deleted.
  @BuiltValueField(wireName: r'mailboxes_total')
  int? get mailboxesTotal;

  /// Domains that have passed DNS verification.
  @BuiltValueField(wireName: r'domains_verified')
  int? get domainsVerified;

  @BuiltValueField(wireName: r'domains_total')
  int? get domainsTotal;

  /// Sends in the 60-second window ending now. Used by the rate-cap check.
  @BuiltValueField(wireName: r'messages_sent_last_60s')
  int? get messagesSentLast60s;

  /// Sends since 00:00 UTC. Compared against `daily_msg_quota`.
  @BuiltValueField(wireName: r'messages_sent_today_utc')
  int? get messagesSentTodayUtc;

  /// Rolling 30-day send count (not calendar month).
  @BuiltValueField(wireName: r'messages_sent_last_30d')
  int? get messagesSentLast30d;

  /// Lifetime sum of `messages.size_bytes` for this tenant.
  @BuiltValueField(wireName: r'bytes_stored')
  int? get bytesStored;

  /// Per-tenant outbound rate cap (sends per minute).
  @BuiltValueField(wireName: r'rate_cap_per_min')
  int? get rateCapPerMin;

  /// Per-tenant daily send quota (UTC day boundary).
  @BuiltValueField(wireName: r'daily_msg_quota')
  int? get dailyMsgQuota;

  @BuiltValueField(wireName: r'webhooks_total')
  int? get webhooksTotal;

  /// Webhook subscriptions auto-paused after 50 consecutive failures (LT2).
  @BuiltValueField(wireName: r'webhooks_paused')
  int? get webhooksPaused;

  /// When this snapshot was generated, RFC 3339 UTC.
  @BuiltValueField(wireName: r'generated_at')
  DateTime get generatedAt;

  GetUsage200Response._();

  factory GetUsage200Response([void updates(GetUsage200ResponseBuilder b)]) = _$GetUsage200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetUsage200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetUsage200Response> get serializer => _$GetUsage200ResponseSerializer();
}

class _$GetUsage200ResponseSerializer implements PrimitiveSerializer<GetUsage200Response> {
  @override
  final Iterable<Type> types = const [GetUsage200Response, _$GetUsage200Response];

  @override
  final String wireName = r'GetUsage200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetUsage200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mailboxes_active';
    yield serializers.serialize(
      object.mailboxesActive,
      specifiedType: const FullType(int),
    );
    if (object.mailboxesTotal != null) {
      yield r'mailboxes_total';
      yield serializers.serialize(
        object.mailboxesTotal,
        specifiedType: const FullType(int),
      );
    }
    if (object.domainsVerified != null) {
      yield r'domains_verified';
      yield serializers.serialize(
        object.domainsVerified,
        specifiedType: const FullType(int),
      );
    }
    if (object.domainsTotal != null) {
      yield r'domains_total';
      yield serializers.serialize(
        object.domainsTotal,
        specifiedType: const FullType(int),
      );
    }
    if (object.messagesSentLast60s != null) {
      yield r'messages_sent_last_60s';
      yield serializers.serialize(
        object.messagesSentLast60s,
        specifiedType: const FullType(int),
      );
    }
    if (object.messagesSentTodayUtc != null) {
      yield r'messages_sent_today_utc';
      yield serializers.serialize(
        object.messagesSentTodayUtc,
        specifiedType: const FullType(int),
      );
    }
    if (object.messagesSentLast30d != null) {
      yield r'messages_sent_last_30d';
      yield serializers.serialize(
        object.messagesSentLast30d,
        specifiedType: const FullType(int),
      );
    }
    if (object.bytesStored != null) {
      yield r'bytes_stored';
      yield serializers.serialize(
        object.bytesStored,
        specifiedType: const FullType(int),
      );
    }
    if (object.rateCapPerMin != null) {
      yield r'rate_cap_per_min';
      yield serializers.serialize(
        object.rateCapPerMin,
        specifiedType: const FullType(int),
      );
    }
    if (object.dailyMsgQuota != null) {
      yield r'daily_msg_quota';
      yield serializers.serialize(
        object.dailyMsgQuota,
        specifiedType: const FullType(int),
      );
    }
    if (object.webhooksTotal != null) {
      yield r'webhooks_total';
      yield serializers.serialize(
        object.webhooksTotal,
        specifiedType: const FullType(int),
      );
    }
    if (object.webhooksPaused != null) {
      yield r'webhooks_paused';
      yield serializers.serialize(
        object.webhooksPaused,
        specifiedType: const FullType(int),
      );
    }
    yield r'generated_at';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetUsage200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetUsage200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mailboxes_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mailboxesActive = valueDes;
          break;
        case r'mailboxes_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mailboxesTotal = valueDes;
          break;
        case r'domains_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.domainsVerified = valueDes;
          break;
        case r'domains_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.domainsTotal = valueDes;
          break;
        case r'messages_sent_last_60s':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.messagesSentLast60s = valueDes;
          break;
        case r'messages_sent_today_utc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.messagesSentTodayUtc = valueDes;
          break;
        case r'messages_sent_last_30d':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.messagesSentLast30d = valueDes;
          break;
        case r'bytes_stored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bytesStored = valueDes;
          break;
        case r'rate_cap_per_min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rateCapPerMin = valueDes;
          break;
        case r'daily_msg_quota':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dailyMsgQuota = valueDes;
          break;
        case r'webhooks_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.webhooksTotal = valueDes;
          break;
        case r'webhooks_paused':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.webhooksPaused = valueDes;
          break;
        case r'generated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetUsage200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUsage200ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


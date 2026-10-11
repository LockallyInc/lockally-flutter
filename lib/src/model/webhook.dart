//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook.g.dart';

/// Webhook
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [url] 
/// * [events] 
/// * [paused] 
/// * [pausedAt] 
/// * [lastSuccessAt] 
/// * [lastFailureAt] 
/// * [consecutiveFailures] 
/// * [createdAt] 
/// * [signingSecret] - Hex-encoded HMAC-SHA256 key. Present ONLY on POST response.
@BuiltValue()
abstract class Webhook implements Built<Webhook, WebhookBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'events')
  BuiltList<String> get events;

  @BuiltValueField(wireName: r'paused')
  bool get paused;

  @BuiltValueField(wireName: r'paused_at')
  DateTime? get pausedAt;

  @BuiltValueField(wireName: r'last_success_at')
  DateTime? get lastSuccessAt;

  @BuiltValueField(wireName: r'last_failure_at')
  DateTime? get lastFailureAt;

  @BuiltValueField(wireName: r'consecutive_failures')
  int get consecutiveFailures;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Hex-encoded HMAC-SHA256 key. Present ONLY on POST response.
  @BuiltValueField(wireName: r'signing_secret')
  String? get signingSecret;

  Webhook._();

  factory Webhook([void updates(WebhookBuilder b)]) = _$Webhook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Webhook> get serializer => _$WebhookSerializer();
}

class _$WebhookSerializer implements PrimitiveSerializer<Webhook> {
  @override
  final Iterable<Type> types = const [Webhook, _$Webhook];

  @override
  final String wireName = r'Webhook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Webhook object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'events';
    yield serializers.serialize(
      object.events,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'paused';
    yield serializers.serialize(
      object.paused,
      specifiedType: const FullType(bool),
    );
    if (object.pausedAt != null) {
      yield r'paused_at';
      yield serializers.serialize(
        object.pausedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastSuccessAt != null) {
      yield r'last_success_at';
      yield serializers.serialize(
        object.lastSuccessAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastFailureAt != null) {
      yield r'last_failure_at';
      yield serializers.serialize(
        object.lastFailureAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'consecutive_failures';
    yield serializers.serialize(
      object.consecutiveFailures,
      specifiedType: const FullType(int),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.signingSecret != null) {
      yield r'signing_secret';
      yield serializers.serialize(
        object.signingSecret,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Webhook object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.events.replace(valueDes);
          break;
        case r'paused':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.paused = valueDes;
          break;
        case r'paused_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.pausedAt = valueDes;
          break;
        case r'last_success_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastSuccessAt = valueDes;
          break;
        case r'last_failure_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastFailureAt = valueDes;
          break;
        case r'consecutive_failures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.consecutiveFailures = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'signing_secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.signingSecret = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Webhook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookBuilder();
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


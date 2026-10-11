//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_integrations_summary200_response_webhooks_inner.g.dart';

/// GetIntegrationsSummary200ResponseWebhooksInner
///
/// Properties:
/// * [url] 
/// * [paused] 
/// * [consecutiveFailures] 
/// * [lastFailureAt] 
@BuiltValue()
abstract class GetIntegrationsSummary200ResponseWebhooksInner implements Built<GetIntegrationsSummary200ResponseWebhooksInner, GetIntegrationsSummary200ResponseWebhooksInnerBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'paused')
  bool? get paused;

  @BuiltValueField(wireName: r'consecutive_failures')
  int? get consecutiveFailures;

  @BuiltValueField(wireName: r'last_failure_at')
  DateTime? get lastFailureAt;

  GetIntegrationsSummary200ResponseWebhooksInner._();

  factory GetIntegrationsSummary200ResponseWebhooksInner([void updates(GetIntegrationsSummary200ResponseWebhooksInnerBuilder b)]) = _$GetIntegrationsSummary200ResponseWebhooksInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetIntegrationsSummary200ResponseWebhooksInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetIntegrationsSummary200ResponseWebhooksInner> get serializer => _$GetIntegrationsSummary200ResponseWebhooksInnerSerializer();
}

class _$GetIntegrationsSummary200ResponseWebhooksInnerSerializer implements PrimitiveSerializer<GetIntegrationsSummary200ResponseWebhooksInner> {
  @override
  final Iterable<Type> types = const [GetIntegrationsSummary200ResponseWebhooksInner, _$GetIntegrationsSummary200ResponseWebhooksInner];

  @override
  final String wireName = r'GetIntegrationsSummary200ResponseWebhooksInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetIntegrationsSummary200ResponseWebhooksInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.paused != null) {
      yield r'paused';
      yield serializers.serialize(
        object.paused,
        specifiedType: const FullType(bool),
      );
    }
    if (object.consecutiveFailures != null) {
      yield r'consecutive_failures';
      yield serializers.serialize(
        object.consecutiveFailures,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastFailureAt != null) {
      yield r'last_failure_at';
      yield serializers.serialize(
        object.lastFailureAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetIntegrationsSummary200ResponseWebhooksInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetIntegrationsSummary200ResponseWebhooksInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'paused':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.paused = valueDes;
          break;
        case r'consecutive_failures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.consecutiveFailures = valueDes;
          break;
        case r'last_failure_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastFailureAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetIntegrationsSummary200ResponseWebhooksInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIntegrationsSummary200ResponseWebhooksInnerBuilder();
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


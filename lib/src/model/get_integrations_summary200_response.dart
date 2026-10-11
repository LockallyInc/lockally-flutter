//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/get_integrations_summary200_response_webhooks_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/get_integrations_summary200_response_api_keys_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_integrations_summary200_response.g.dart';

/// GetIntegrationsSummary200Response
///
/// Properties:
/// * [apiRequestsToday] 
/// * [activeApiKeys] 
/// * [apiKeys] 
/// * [webhookFailures] 
/// * [webhooksTotal] 
/// * [webhooks] 
/// * [generatedAt] 
@BuiltValue()
abstract class GetIntegrationsSummary200Response implements Built<GetIntegrationsSummary200Response, GetIntegrationsSummary200ResponseBuilder> {
  @BuiltValueField(wireName: r'api_requests_today')
  int? get apiRequestsToday;

  @BuiltValueField(wireName: r'active_api_keys')
  int? get activeApiKeys;

  @BuiltValueField(wireName: r'api_keys')
  BuiltList<GetIntegrationsSummary200ResponseApiKeysInner>? get apiKeys;

  @BuiltValueField(wireName: r'webhook_failures')
  int? get webhookFailures;

  @BuiltValueField(wireName: r'webhooks_total')
  int? get webhooksTotal;

  @BuiltValueField(wireName: r'webhooks')
  BuiltList<GetIntegrationsSummary200ResponseWebhooksInner>? get webhooks;

  @BuiltValueField(wireName: r'generated_at')
  DateTime? get generatedAt;

  GetIntegrationsSummary200Response._();

  factory GetIntegrationsSummary200Response([void updates(GetIntegrationsSummary200ResponseBuilder b)]) = _$GetIntegrationsSummary200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetIntegrationsSummary200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetIntegrationsSummary200Response> get serializer => _$GetIntegrationsSummary200ResponseSerializer();
}

class _$GetIntegrationsSummary200ResponseSerializer implements PrimitiveSerializer<GetIntegrationsSummary200Response> {
  @override
  final Iterable<Type> types = const [GetIntegrationsSummary200Response, _$GetIntegrationsSummary200Response];

  @override
  final String wireName = r'GetIntegrationsSummary200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetIntegrationsSummary200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiRequestsToday != null) {
      yield r'api_requests_today';
      yield serializers.serialize(
        object.apiRequestsToday,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeApiKeys != null) {
      yield r'active_api_keys';
      yield serializers.serialize(
        object.activeApiKeys,
        specifiedType: const FullType(int),
      );
    }
    if (object.apiKeys != null) {
      yield r'api_keys';
      yield serializers.serialize(
        object.apiKeys,
        specifiedType: const FullType(BuiltList, [FullType(GetIntegrationsSummary200ResponseApiKeysInner)]),
      );
    }
    if (object.webhookFailures != null) {
      yield r'webhook_failures';
      yield serializers.serialize(
        object.webhookFailures,
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
    if (object.webhooks != null) {
      yield r'webhooks';
      yield serializers.serialize(
        object.webhooks,
        specifiedType: const FullType(BuiltList, [FullType(GetIntegrationsSummary200ResponseWebhooksInner)]),
      );
    }
    if (object.generatedAt != null) {
      yield r'generated_at';
      yield serializers.serialize(
        object.generatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetIntegrationsSummary200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetIntegrationsSummary200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'api_requests_today':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.apiRequestsToday = valueDes;
          break;
        case r'active_api_keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeApiKeys = valueDes;
          break;
        case r'api_keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetIntegrationsSummary200ResponseApiKeysInner)]),
          ) as BuiltList<GetIntegrationsSummary200ResponseApiKeysInner>;
          result.apiKeys.replace(valueDes);
          break;
        case r'webhook_failures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.webhookFailures = valueDes;
          break;
        case r'webhooks_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.webhooksTotal = valueDes;
          break;
        case r'webhooks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetIntegrationsSummary200ResponseWebhooksInner)]),
          ) as BuiltList<GetIntegrationsSummary200ResponseWebhooksInner>;
          result.webhooks.replace(valueDes);
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
  GetIntegrationsSummary200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIntegrationsSummary200ResponseBuilder();
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


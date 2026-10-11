//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_webhooks_post_request.g.dart';

/// V1WebhooksPostRequest
///
/// Properties:
/// * [url] - HTTPS recommended (HTTP allowed for local development).
/// * [events] 
@BuiltValue()
abstract class V1WebhooksPostRequest implements Built<V1WebhooksPostRequest, V1WebhooksPostRequestBuilder> {
  /// HTTPS recommended (HTTP allowed for local development).
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'events')
  BuiltList<String> get events;

  V1WebhooksPostRequest._();

  factory V1WebhooksPostRequest([void updates(V1WebhooksPostRequestBuilder b)]) = _$V1WebhooksPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1WebhooksPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1WebhooksPostRequest> get serializer => _$V1WebhooksPostRequestSerializer();
}

class _$V1WebhooksPostRequestSerializer implements PrimitiveSerializer<V1WebhooksPostRequest> {
  @override
  final Iterable<Type> types = const [V1WebhooksPostRequest, _$V1WebhooksPostRequest];

  @override
  final String wireName = r'V1WebhooksPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1WebhooksPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    V1WebhooksPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1WebhooksPostRequestBuilder result,
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
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.events.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1WebhooksPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1WebhooksPostRequestBuilder();
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


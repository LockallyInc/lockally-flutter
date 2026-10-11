//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_webhooks_id_patch_request.g.dart';

/// V1WebhooksIdPatchRequest
///
/// Properties:
/// * [url] 
/// * [events] 
/// * [paused] 
@BuiltValue()
abstract class V1WebhooksIdPatchRequest implements Built<V1WebhooksIdPatchRequest, V1WebhooksIdPatchRequestBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'events')
  BuiltList<String>? get events;

  @BuiltValueField(wireName: r'paused')
  bool? get paused;

  V1WebhooksIdPatchRequest._();

  factory V1WebhooksIdPatchRequest([void updates(V1WebhooksIdPatchRequestBuilder b)]) = _$V1WebhooksIdPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1WebhooksIdPatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1WebhooksIdPatchRequest> get serializer => _$V1WebhooksIdPatchRequestSerializer();
}

class _$V1WebhooksIdPatchRequestSerializer implements PrimitiveSerializer<V1WebhooksIdPatchRequest> {
  @override
  final Iterable<Type> types = const [V1WebhooksIdPatchRequest, _$V1WebhooksIdPatchRequest];

  @override
  final String wireName = r'V1WebhooksIdPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1WebhooksIdPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.events != null) {
      yield r'events';
      yield serializers.serialize(
        object.events,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.paused != null) {
      yield r'paused';
      yield serializers.serialize(
        object.paused,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1WebhooksIdPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1WebhooksIdPatchRequestBuilder result,
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
        case r'paused':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.paused = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1WebhooksIdPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1WebhooksIdPatchRequestBuilder();
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


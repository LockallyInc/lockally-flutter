//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_webhook_request.g.dart';

/// UpdateWebhookRequest
///
/// Properties:
/// * [url] 
/// * [events] 
/// * [paused] 
@BuiltValue()
abstract class UpdateWebhookRequest implements Built<UpdateWebhookRequest, UpdateWebhookRequestBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'events')
  BuiltList<String>? get events;

  @BuiltValueField(wireName: r'paused')
  bool? get paused;

  UpdateWebhookRequest._();

  factory UpdateWebhookRequest([void updates(UpdateWebhookRequestBuilder b)]) = _$UpdateWebhookRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateWebhookRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateWebhookRequest> get serializer => _$UpdateWebhookRequestSerializer();
}

class _$UpdateWebhookRequestSerializer implements PrimitiveSerializer<UpdateWebhookRequest> {
  @override
  final Iterable<Type> types = const [UpdateWebhookRequest, _$UpdateWebhookRequest];

  @override
  final String wireName = r'UpdateWebhookRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateWebhookRequest object, {
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
    UpdateWebhookRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateWebhookRequestBuilder result,
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
  UpdateWebhookRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateWebhookRequestBuilder();
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


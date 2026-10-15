//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_webhook_request.g.dart';

/// CreateWebhookRequest
///
/// Properties:
/// * [url] - HTTPS recommended (HTTP allowed for local development).
/// * [events] 
@BuiltValue()
abstract class CreateWebhookRequest implements Built<CreateWebhookRequest, CreateWebhookRequestBuilder> {
  /// HTTPS recommended (HTTP allowed for local development).
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'events')
  BuiltList<String> get events;

  CreateWebhookRequest._();

  factory CreateWebhookRequest([void updates(CreateWebhookRequestBuilder b)]) = _$CreateWebhookRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateWebhookRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateWebhookRequest> get serializer => _$CreateWebhookRequestSerializer();
}

class _$CreateWebhookRequestSerializer implements PrimitiveSerializer<CreateWebhookRequest> {
  @override
  final Iterable<Type> types = const [CreateWebhookRequest, _$CreateWebhookRequest];

  @override
  final String wireName = r'CreateWebhookRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateWebhookRequest object, {
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
    CreateWebhookRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateWebhookRequestBuilder result,
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
  CreateWebhookRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateWebhookRequestBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/send_message.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_send_batch_post_request.g.dart';

/// V1SendBatchPostRequest
///
/// Properties:
/// * [messages] 
@BuiltValue()
abstract class V1SendBatchPostRequest implements Built<V1SendBatchPostRequest, V1SendBatchPostRequestBuilder> {
  @BuiltValueField(wireName: r'messages')
  BuiltList<SendMessage> get messages;

  V1SendBatchPostRequest._();

  factory V1SendBatchPostRequest([void updates(V1SendBatchPostRequestBuilder b)]) = _$V1SendBatchPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1SendBatchPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1SendBatchPostRequest> get serializer => _$V1SendBatchPostRequestSerializer();
}

class _$V1SendBatchPostRequestSerializer implements PrimitiveSerializer<V1SendBatchPostRequest> {
  @override
  final Iterable<Type> types = const [V1SendBatchPostRequest, _$V1SendBatchPostRequest];

  @override
  final String wireName = r'V1SendBatchPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1SendBatchPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'messages';
    yield serializers.serialize(
      object.messages,
      specifiedType: const FullType(BuiltList, [FullType(SendMessage)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1SendBatchPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1SendBatchPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendMessage)]),
          ) as BuiltList<SendMessage>;
          result.messages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1SendBatchPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1SendBatchPostRequestBuilder();
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


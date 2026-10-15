//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/send_message.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_email_batch_request.g.dart';

/// SendEmailBatchRequest
///
/// Properties:
/// * [messages] 
@BuiltValue()
abstract class SendEmailBatchRequest implements Built<SendEmailBatchRequest, SendEmailBatchRequestBuilder> {
  @BuiltValueField(wireName: r'messages')
  BuiltList<SendMessage> get messages;

  SendEmailBatchRequest._();

  factory SendEmailBatchRequest([void updates(SendEmailBatchRequestBuilder b)]) = _$SendEmailBatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendEmailBatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendEmailBatchRequest> get serializer => _$SendEmailBatchRequestSerializer();
}

class _$SendEmailBatchRequestSerializer implements PrimitiveSerializer<SendEmailBatchRequest> {
  @override
  final Iterable<Type> types = const [SendEmailBatchRequest, _$SendEmailBatchRequest];

  @override
  final String wireName = r'SendEmailBatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendEmailBatchRequest object, {
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
    SendEmailBatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendEmailBatchRequestBuilder result,
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
  SendEmailBatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendEmailBatchRequestBuilder();
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


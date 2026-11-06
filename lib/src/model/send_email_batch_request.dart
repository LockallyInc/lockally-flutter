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
/// * [variables] - Template variables every message in the batch inherits. Each message's own `variables` override these key by key, so shared values are written once and per-recipient ones stay per-recipient.  Without this, a 500-message batch repeats every shared variable 500 times: most of the payload, and 500 places for one of them to differ by a typo. 
@BuiltValue()
abstract class SendEmailBatchRequest implements Built<SendEmailBatchRequest, SendEmailBatchRequestBuilder> {
  @BuiltValueField(wireName: r'messages')
  BuiltList<SendMessage> get messages;

  /// Template variables every message in the batch inherits. Each message's own `variables` override these key by key, so shared values are written once and per-recipient ones stay per-recipient.  Without this, a 500-message batch repeats every shared variable 500 times: most of the payload, and 500 places for one of them to differ by a typo. 
  @BuiltValueField(wireName: r'variables')
  BuiltMap<String, String>? get variables;

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
    if (object.variables != null) {
      yield r'variables';
      yield serializers.serialize(
        object.variables,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
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
        case r'variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.variables.replace(valueDes);
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/batch_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_email_batch200_response.g.dart';

/// SendEmailBatch200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class SendEmailBatch200Response implements Built<SendEmailBatch200Response, SendEmailBatch200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<BatchResult>? get data;

  SendEmailBatch200Response._();

  factory SendEmailBatch200Response([void updates(SendEmailBatch200ResponseBuilder b)]) = _$SendEmailBatch200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendEmailBatch200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendEmailBatch200Response> get serializer => _$SendEmailBatch200ResponseSerializer();
}

class _$SendEmailBatch200ResponseSerializer implements PrimitiveSerializer<SendEmailBatch200Response> {
  @override
  final Iterable<Type> types = const [SendEmailBatch200Response, _$SendEmailBatch200Response];

  @override
  final String wireName = r'SendEmailBatch200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendEmailBatch200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(BatchResult)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendEmailBatch200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendEmailBatch200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BatchResult)]),
          ) as BuiltList<BatchResult>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendEmailBatch200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendEmailBatch200ResponseBuilder();
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


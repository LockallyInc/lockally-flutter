//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_email200_response.g.dart';

/// SendEmail200Response
///
/// Properties:
/// * [id] - Present on a test-mode send; absent when suppressed.
/// * [messageId] - RFC 5322 Message-ID. On a test send the domain is test.lockally.com. Absent when suppressed.
/// * [status] 
/// * [warning] - On a suppressed send, explains that nothing was sent.
@BuiltValue()
abstract class SendEmail200Response implements Built<SendEmail200Response, SendEmail200ResponseBuilder> {
  /// Present on a test-mode send; absent when suppressed.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// RFC 5322 Message-ID. On a test send the domain is test.lockally.com. Absent when suppressed.
  @BuiltValueField(wireName: r'message_id')
  String? get messageId;

  @BuiltValueField(wireName: r'status')
  SendEmail200ResponseStatusEnum get status;
  // enum statusEnum {  suppressed,  delivered,  };

  /// On a suppressed send, explains that nothing was sent.
  @BuiltValueField(wireName: r'warning')
  String? get warning;

  SendEmail200Response._();

  factory SendEmail200Response([void updates(SendEmail200ResponseBuilder b)]) = _$SendEmail200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendEmail200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendEmail200Response> get serializer => _$SendEmail200ResponseSerializer();
}

class _$SendEmail200ResponseSerializer implements PrimitiveSerializer<SendEmail200Response> {
  @override
  final Iterable<Type> types = const [SendEmail200Response, _$SendEmail200Response];

  @override
  final String wireName = r'SendEmail200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendEmail200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.messageId != null) {
      yield r'message_id';
      yield serializers.serialize(
        object.messageId,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SendEmail200ResponseStatusEnum),
    );
    if (object.warning != null) {
      yield r'warning';
      yield serializers.serialize(
        object.warning,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendEmail200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendEmail200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendEmail200ResponseStatusEnum),
          ) as SendEmail200ResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'warning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.warning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendEmail200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendEmail200ResponseBuilder();
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

class SendEmail200ResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'suppressed')
  static const SendEmail200ResponseStatusEnum suppressed = _$sendEmail200ResponseStatusEnum_suppressed;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const SendEmail200ResponseStatusEnum delivered = _$sendEmail200ResponseStatusEnum_delivered;

  static Serializer<SendEmail200ResponseStatusEnum> get serializer => _$sendEmail200ResponseStatusEnumSerializer;

  const SendEmail200ResponseStatusEnum._(String name): super(name);

  static BuiltSet<SendEmail200ResponseStatusEnum> get values => _$sendEmail200ResponseStatusEnumValues;
  static SendEmail200ResponseStatusEnum valueOf(String name) => _$sendEmail200ResponseStatusEnumValueOf(name);
}


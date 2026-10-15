//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_email202_response.g.dart';

/// SendEmail202Response
///
/// Properties:
/// * [id] - Lockally identifier; use with GET /v1/messages/{id}.
/// * [messageId] - RFC 5322 Message-ID (with angle brackets).
/// * [status] - \"scheduled\" when send_at is in the future.
/// * [warning] 
@BuiltValue()
abstract class SendEmail202Response implements Built<SendEmail202Response, SendEmail202ResponseBuilder> {
  /// Lockally identifier; use with GET /v1/messages/{id}.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// RFC 5322 Message-ID (with angle brackets).
  @BuiltValueField(wireName: r'message_id')
  String get messageId;

  /// \"scheduled\" when send_at is in the future.
  @BuiltValueField(wireName: r'status')
  SendEmail202ResponseStatusEnum get status;
  // enum statusEnum {  queued,  scheduled,  };

  @BuiltValueField(wireName: r'warning')
  String? get warning;

  SendEmail202Response._();

  factory SendEmail202Response([void updates(SendEmail202ResponseBuilder b)]) = _$SendEmail202Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendEmail202ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendEmail202Response> get serializer => _$SendEmail202ResponseSerializer();
}

class _$SendEmail202ResponseSerializer implements PrimitiveSerializer<SendEmail202Response> {
  @override
  final Iterable<Type> types = const [SendEmail202Response, _$SendEmail202Response];

  @override
  final String wireName = r'SendEmail202Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendEmail202Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'message_id';
    yield serializers.serialize(
      object.messageId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SendEmail202ResponseStatusEnum),
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
    SendEmail202Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendEmail202ResponseBuilder result,
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
            specifiedType: const FullType(SendEmail202ResponseStatusEnum),
          ) as SendEmail202ResponseStatusEnum;
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
  SendEmail202Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendEmail202ResponseBuilder();
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

class SendEmail202ResponseStatusEnum extends EnumClass {

  /// \"scheduled\" when send_at is in the future.
  @BuiltValueEnumConst(wireName: r'queued')
  static const SendEmail202ResponseStatusEnum queued = _$sendEmail202ResponseStatusEnum_queued;
  /// \"scheduled\" when send_at is in the future.
  @BuiltValueEnumConst(wireName: r'scheduled')
  static const SendEmail202ResponseStatusEnum scheduled = _$sendEmail202ResponseStatusEnum_scheduled;

  static Serializer<SendEmail202ResponseStatusEnum> get serializer => _$sendEmail202ResponseStatusEnumSerializer;

  const SendEmail202ResponseStatusEnum._(String name): super(name);

  static BuiltSet<SendEmail202ResponseStatusEnum> get values => _$sendEmail202ResponseStatusEnumValues;
  static SendEmail202ResponseStatusEnum valueOf(String name) => _$sendEmail202ResponseStatusEnumValueOf(name);
}


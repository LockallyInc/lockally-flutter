//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_send_post202_response.g.dart';

/// V1SendPost202Response
///
/// Properties:
/// * [id] - Lockally identifier; use with GET /v1/messages/{id}.
/// * [messageId] - RFC 5322 Message-ID (with angle brackets).
/// * [status] - \"scheduled\" when send_at is in the future.
/// * [warning] 
@BuiltValue()
abstract class V1SendPost202Response implements Built<V1SendPost202Response, V1SendPost202ResponseBuilder> {
  /// Lockally identifier; use with GET /v1/messages/{id}.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// RFC 5322 Message-ID (with angle brackets).
  @BuiltValueField(wireName: r'message_id')
  String get messageId;

  /// \"scheduled\" when send_at is in the future.
  @BuiltValueField(wireName: r'status')
  V1SendPost202ResponseStatusEnum get status;
  // enum statusEnum {  queued,  scheduled,  };

  @BuiltValueField(wireName: r'warning')
  String? get warning;

  V1SendPost202Response._();

  factory V1SendPost202Response([void updates(V1SendPost202ResponseBuilder b)]) = _$V1SendPost202Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1SendPost202ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1SendPost202Response> get serializer => _$V1SendPost202ResponseSerializer();
}

class _$V1SendPost202ResponseSerializer implements PrimitiveSerializer<V1SendPost202Response> {
  @override
  final Iterable<Type> types = const [V1SendPost202Response, _$V1SendPost202Response];

  @override
  final String wireName = r'V1SendPost202Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1SendPost202Response object, {
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
      specifiedType: const FullType(V1SendPost202ResponseStatusEnum),
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
    V1SendPost202Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1SendPost202ResponseBuilder result,
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
            specifiedType: const FullType(V1SendPost202ResponseStatusEnum),
          ) as V1SendPost202ResponseStatusEnum;
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
  V1SendPost202Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1SendPost202ResponseBuilder();
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

class V1SendPost202ResponseStatusEnum extends EnumClass {

  /// \"scheduled\" when send_at is in the future.
  @BuiltValueEnumConst(wireName: r'queued')
  static const V1SendPost202ResponseStatusEnum queued = _$v1SendPost202ResponseStatusEnum_queued;
  /// \"scheduled\" when send_at is in the future.
  @BuiltValueEnumConst(wireName: r'scheduled')
  static const V1SendPost202ResponseStatusEnum scheduled = _$v1SendPost202ResponseStatusEnum_scheduled;

  static Serializer<V1SendPost202ResponseStatusEnum> get serializer => _$v1SendPost202ResponseStatusEnumSerializer;

  const V1SendPost202ResponseStatusEnum._(String name): super(name);

  static BuiltSet<V1SendPost202ResponseStatusEnum> get values => _$v1SendPost202ResponseStatusEnumValues;
  static V1SendPost202ResponseStatusEnum valueOf(String name) => _$v1SendPost202ResponseStatusEnumValueOf(name);
}


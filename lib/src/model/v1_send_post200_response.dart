//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_send_post200_response.g.dart';

/// V1SendPost200Response
///
/// Properties:
/// * [id] - Present on a test-mode send; absent when suppressed.
/// * [messageId] - RFC 5322 Message-ID. On a test send the domain is test.lockally.com. Absent when suppressed.
/// * [status] 
/// * [warning] - On a suppressed send, explains that nothing was sent.
@BuiltValue()
abstract class V1SendPost200Response implements Built<V1SendPost200Response, V1SendPost200ResponseBuilder> {
  /// Present on a test-mode send; absent when suppressed.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// RFC 5322 Message-ID. On a test send the domain is test.lockally.com. Absent when suppressed.
  @BuiltValueField(wireName: r'message_id')
  String? get messageId;

  @BuiltValueField(wireName: r'status')
  V1SendPost200ResponseStatusEnum get status;
  // enum statusEnum {  suppressed,  delivered,  };

  /// On a suppressed send, explains that nothing was sent.
  @BuiltValueField(wireName: r'warning')
  String? get warning;

  V1SendPost200Response._();

  factory V1SendPost200Response([void updates(V1SendPost200ResponseBuilder b)]) = _$V1SendPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1SendPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1SendPost200Response> get serializer => _$V1SendPost200ResponseSerializer();
}

class _$V1SendPost200ResponseSerializer implements PrimitiveSerializer<V1SendPost200Response> {
  @override
  final Iterable<Type> types = const [V1SendPost200Response, _$V1SendPost200Response];

  @override
  final String wireName = r'V1SendPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1SendPost200Response object, {
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
      specifiedType: const FullType(V1SendPost200ResponseStatusEnum),
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
    V1SendPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1SendPost200ResponseBuilder result,
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
            specifiedType: const FullType(V1SendPost200ResponseStatusEnum),
          ) as V1SendPost200ResponseStatusEnum;
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
  V1SendPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1SendPost200ResponseBuilder();
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

class V1SendPost200ResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'suppressed')
  static const V1SendPost200ResponseStatusEnum suppressed = _$v1SendPost200ResponseStatusEnum_suppressed;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const V1SendPost200ResponseStatusEnum delivered = _$v1SendPost200ResponseStatusEnum_delivered;

  static Serializer<V1SendPost200ResponseStatusEnum> get serializer => _$v1SendPost200ResponseStatusEnumSerializer;

  const V1SendPost200ResponseStatusEnum._(String name): super(name);

  static BuiltSet<V1SendPost200ResponseStatusEnum> get values => _$v1SendPost200ResponseStatusEnumValues;
  static V1SendPost200ResponseStatusEnum valueOf(String name) => _$v1SendPost200ResponseStatusEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_suppressions_post_request.g.dart';

/// V1SuppressionsPostRequest
///
/// Properties:
/// * [email] 
/// * [reason] 
@BuiltValue()
abstract class V1SuppressionsPostRequest implements Built<V1SuppressionsPostRequest, V1SuppressionsPostRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'reason')
  V1SuppressionsPostRequestReasonEnum? get reason;
  // enum reasonEnum {  unsubscribe,  complaint,  bounce,  manual,  };

  V1SuppressionsPostRequest._();

  factory V1SuppressionsPostRequest([void updates(V1SuppressionsPostRequestBuilder b)]) = _$V1SuppressionsPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1SuppressionsPostRequestBuilder b) => b
      ..reason = V1SuppressionsPostRequestReasonEnum.valueOf('manual');

  @BuiltValueSerializer(custom: true)
  static Serializer<V1SuppressionsPostRequest> get serializer => _$V1SuppressionsPostRequestSerializer();
}

class _$V1SuppressionsPostRequestSerializer implements PrimitiveSerializer<V1SuppressionsPostRequest> {
  @override
  final Iterable<Type> types = const [V1SuppressionsPostRequest, _$V1SuppressionsPostRequest];

  @override
  final String wireName = r'V1SuppressionsPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1SuppressionsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(V1SuppressionsPostRequestReasonEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1SuppressionsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1SuppressionsPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1SuppressionsPostRequestReasonEnum),
          ) as V1SuppressionsPostRequestReasonEnum;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1SuppressionsPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1SuppressionsPostRequestBuilder();
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

class V1SuppressionsPostRequestReasonEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'unsubscribe')
  static const V1SuppressionsPostRequestReasonEnum unsubscribe = _$v1SuppressionsPostRequestReasonEnum_unsubscribe;
  @BuiltValueEnumConst(wireName: r'complaint')
  static const V1SuppressionsPostRequestReasonEnum complaint = _$v1SuppressionsPostRequestReasonEnum_complaint;
  @BuiltValueEnumConst(wireName: r'bounce')
  static const V1SuppressionsPostRequestReasonEnum bounce = _$v1SuppressionsPostRequestReasonEnum_bounce;
  @BuiltValueEnumConst(wireName: r'manual')
  static const V1SuppressionsPostRequestReasonEnum manual = _$v1SuppressionsPostRequestReasonEnum_manual;

  static Serializer<V1SuppressionsPostRequestReasonEnum> get serializer => _$v1SuppressionsPostRequestReasonEnumSerializer;

  const V1SuppressionsPostRequestReasonEnum._(String name): super(name);

  static BuiltSet<V1SuppressionsPostRequestReasonEnum> get values => _$v1SuppressionsPostRequestReasonEnumValues;
  static V1SuppressionsPostRequestReasonEnum valueOf(String name) => _$v1SuppressionsPostRequestReasonEnumValueOf(name);
}


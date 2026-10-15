//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_suppression_request.g.dart';

/// CreateSuppressionRequest
///
/// Properties:
/// * [email] 
/// * [reason] 
@BuiltValue()
abstract class CreateSuppressionRequest implements Built<CreateSuppressionRequest, CreateSuppressionRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'reason')
  CreateSuppressionRequestReasonEnum? get reason;
  // enum reasonEnum {  unsubscribe,  complaint,  bounce,  manual,  };

  CreateSuppressionRequest._();

  factory CreateSuppressionRequest([void updates(CreateSuppressionRequestBuilder b)]) = _$CreateSuppressionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateSuppressionRequestBuilder b) => b
      ..reason = CreateSuppressionRequestReasonEnum.valueOf('manual');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateSuppressionRequest> get serializer => _$CreateSuppressionRequestSerializer();
}

class _$CreateSuppressionRequestSerializer implements PrimitiveSerializer<CreateSuppressionRequest> {
  @override
  final Iterable<Type> types = const [CreateSuppressionRequest, _$CreateSuppressionRequest];

  @override
  final String wireName = r'CreateSuppressionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateSuppressionRequest object, {
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
        specifiedType: const FullType(CreateSuppressionRequestReasonEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateSuppressionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateSuppressionRequestBuilder result,
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
            specifiedType: const FullType(CreateSuppressionRequestReasonEnum),
          ) as CreateSuppressionRequestReasonEnum;
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
  CreateSuppressionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSuppressionRequestBuilder();
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

class CreateSuppressionRequestReasonEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'unsubscribe')
  static const CreateSuppressionRequestReasonEnum unsubscribe = _$createSuppressionRequestReasonEnum_unsubscribe;
  @BuiltValueEnumConst(wireName: r'complaint')
  static const CreateSuppressionRequestReasonEnum complaint = _$createSuppressionRequestReasonEnum_complaint;
  @BuiltValueEnumConst(wireName: r'bounce')
  static const CreateSuppressionRequestReasonEnum bounce = _$createSuppressionRequestReasonEnum_bounce;
  @BuiltValueEnumConst(wireName: r'manual')
  static const CreateSuppressionRequestReasonEnum manual = _$createSuppressionRequestReasonEnum_manual;

  static Serializer<CreateSuppressionRequestReasonEnum> get serializer => _$createSuppressionRequestReasonEnumSerializer;

  const CreateSuppressionRequestReasonEnum._(String name): super(name);

  static BuiltSet<CreateSuppressionRequestReasonEnum> get values => _$createSuppressionRequestReasonEnumValues;
  static CreateSuppressionRequestReasonEnum valueOf(String name) => _$createSuppressionRequestReasonEnumValueOf(name);
}


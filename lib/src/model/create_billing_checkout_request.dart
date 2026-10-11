//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_billing_checkout_request.g.dart';

/// CreateBillingCheckoutRequest
///
/// Properties:
/// * [plan] 
@BuiltValue()
abstract class CreateBillingCheckoutRequest implements Built<CreateBillingCheckoutRequest, CreateBillingCheckoutRequestBuilder> {
  @BuiltValueField(wireName: r'plan')
  CreateBillingCheckoutRequestPlanEnum get plan;
  // enum planEnum {  free,  founder,  starter,  pro,  scale,  };

  CreateBillingCheckoutRequest._();

  factory CreateBillingCheckoutRequest([void updates(CreateBillingCheckoutRequestBuilder b)]) = _$CreateBillingCheckoutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateBillingCheckoutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateBillingCheckoutRequest> get serializer => _$CreateBillingCheckoutRequestSerializer();
}

class _$CreateBillingCheckoutRequestSerializer implements PrimitiveSerializer<CreateBillingCheckoutRequest> {
  @override
  final Iterable<Type> types = const [CreateBillingCheckoutRequest, _$CreateBillingCheckoutRequest];

  @override
  final String wireName = r'CreateBillingCheckoutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateBillingCheckoutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'plan';
    yield serializers.serialize(
      object.plan,
      specifiedType: const FullType(CreateBillingCheckoutRequestPlanEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateBillingCheckoutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateBillingCheckoutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateBillingCheckoutRequestPlanEnum),
          ) as CreateBillingCheckoutRequestPlanEnum;
          result.plan = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateBillingCheckoutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBillingCheckoutRequestBuilder();
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

class CreateBillingCheckoutRequestPlanEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'free')
  static const CreateBillingCheckoutRequestPlanEnum free = _$createBillingCheckoutRequestPlanEnum_free;
  @BuiltValueEnumConst(wireName: r'founder')
  static const CreateBillingCheckoutRequestPlanEnum founder = _$createBillingCheckoutRequestPlanEnum_founder;
  @BuiltValueEnumConst(wireName: r'starter')
  static const CreateBillingCheckoutRequestPlanEnum starter = _$createBillingCheckoutRequestPlanEnum_starter;
  @BuiltValueEnumConst(wireName: r'pro')
  static const CreateBillingCheckoutRequestPlanEnum pro = _$createBillingCheckoutRequestPlanEnum_pro;
  @BuiltValueEnumConst(wireName: r'scale')
  static const CreateBillingCheckoutRequestPlanEnum scale = _$createBillingCheckoutRequestPlanEnum_scale;

  static Serializer<CreateBillingCheckoutRequestPlanEnum> get serializer => _$createBillingCheckoutRequestPlanEnumSerializer;

  const CreateBillingCheckoutRequestPlanEnum._(String name): super(name);

  static BuiltSet<CreateBillingCheckoutRequestPlanEnum> get values => _$createBillingCheckoutRequestPlanEnumValues;
  static CreateBillingCheckoutRequestPlanEnum valueOf(String name) => _$createBillingCheckoutRequestPlanEnumValueOf(name);
}


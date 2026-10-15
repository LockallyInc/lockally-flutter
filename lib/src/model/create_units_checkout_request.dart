//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_units_checkout_request.g.dart';

/// CreateUnitsCheckoutRequest
///
/// Properties:
/// * [bundle] 
@BuiltValue()
abstract class CreateUnitsCheckoutRequest implements Built<CreateUnitsCheckoutRequest, CreateUnitsCheckoutRequestBuilder> {
  @BuiltValueField(wireName: r'bundle')
  CreateUnitsCheckoutRequestBundleEnum get bundle;
  // enum bundleEnum {  1k,  10k,  50k,  100k,  1pkt,  5pkt,  10pkt,  20pkt,  };

  CreateUnitsCheckoutRequest._();

  factory CreateUnitsCheckoutRequest([void updates(CreateUnitsCheckoutRequestBuilder b)]) = _$CreateUnitsCheckoutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateUnitsCheckoutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateUnitsCheckoutRequest> get serializer => _$CreateUnitsCheckoutRequestSerializer();
}

class _$CreateUnitsCheckoutRequestSerializer implements PrimitiveSerializer<CreateUnitsCheckoutRequest> {
  @override
  final Iterable<Type> types = const [CreateUnitsCheckoutRequest, _$CreateUnitsCheckoutRequest];

  @override
  final String wireName = r'CreateUnitsCheckoutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateUnitsCheckoutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bundle';
    yield serializers.serialize(
      object.bundle,
      specifiedType: const FullType(CreateUnitsCheckoutRequestBundleEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateUnitsCheckoutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateUnitsCheckoutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bundle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateUnitsCheckoutRequestBundleEnum),
          ) as CreateUnitsCheckoutRequestBundleEnum;
          result.bundle = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateUnitsCheckoutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateUnitsCheckoutRequestBuilder();
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

class CreateUnitsCheckoutRequestBundleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'1k')
  static const CreateUnitsCheckoutRequestBundleEnum n1k = _$createUnitsCheckoutRequestBundleEnum_n1k;
  @BuiltValueEnumConst(wireName: r'10k')
  static const CreateUnitsCheckoutRequestBundleEnum n10k = _$createUnitsCheckoutRequestBundleEnum_n10k;
  @BuiltValueEnumConst(wireName: r'50k')
  static const CreateUnitsCheckoutRequestBundleEnum n50k = _$createUnitsCheckoutRequestBundleEnum_n50k;
  @BuiltValueEnumConst(wireName: r'100k')
  static const CreateUnitsCheckoutRequestBundleEnum n100k = _$createUnitsCheckoutRequestBundleEnum_n100k;
  @BuiltValueEnumConst(wireName: r'1pkt')
  static const CreateUnitsCheckoutRequestBundleEnum n1pkt = _$createUnitsCheckoutRequestBundleEnum_n1pkt;
  @BuiltValueEnumConst(wireName: r'5pkt')
  static const CreateUnitsCheckoutRequestBundleEnum n5pkt = _$createUnitsCheckoutRequestBundleEnum_n5pkt;
  @BuiltValueEnumConst(wireName: r'10pkt')
  static const CreateUnitsCheckoutRequestBundleEnum n10pkt = _$createUnitsCheckoutRequestBundleEnum_n10pkt;
  @BuiltValueEnumConst(wireName: r'20pkt')
  static const CreateUnitsCheckoutRequestBundleEnum n20pkt = _$createUnitsCheckoutRequestBundleEnum_n20pkt;

  static Serializer<CreateUnitsCheckoutRequestBundleEnum> get serializer => _$createUnitsCheckoutRequestBundleEnumSerializer;

  const CreateUnitsCheckoutRequestBundleEnum._(String name): super(name);

  static BuiltSet<CreateUnitsCheckoutRequestBundleEnum> get values => _$createUnitsCheckoutRequestBundleEnumValues;
  static CreateUnitsCheckoutRequestBundleEnum valueOf(String name) => _$createUnitsCheckoutRequestBundleEnumValueOf(name);
}


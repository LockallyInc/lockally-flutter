//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unit_bundle.g.dart';

/// UnitBundle
///
/// Properties:
/// * [key] 
/// * [units] 
/// * [displayName] 
/// * [priceNaira] 
/// * [displayPrice] 
@BuiltValue()
abstract class UnitBundle implements Built<UnitBundle, UnitBundleBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'units')
  int get units;

  @BuiltValueField(wireName: r'display_name')
  String get displayName;

  @BuiltValueField(wireName: r'price_naira')
  int get priceNaira;

  @BuiltValueField(wireName: r'display_price')
  String get displayPrice;

  UnitBundle._();

  factory UnitBundle([void updates(UnitBundleBuilder b)]) = _$UnitBundle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnitBundleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnitBundle> get serializer => _$UnitBundleSerializer();
}

class _$UnitBundleSerializer implements PrimitiveSerializer<UnitBundle> {
  @override
  final Iterable<Type> types = const [UnitBundle, _$UnitBundle];

  @override
  final String wireName = r'UnitBundle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnitBundle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'units';
    yield serializers.serialize(
      object.units,
      specifiedType: const FullType(int),
    );
    yield r'display_name';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'price_naira';
    yield serializers.serialize(
      object.priceNaira,
      specifiedType: const FullType(int),
    );
    yield r'display_price';
    yield serializers.serialize(
      object.displayPrice,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UnitBundle object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UnitBundleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.units = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'price_naira':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.priceNaira = valueDes;
          break;
        case r'display_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayPrice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnitBundle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnitBundleBuilder();
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


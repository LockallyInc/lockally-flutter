//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_on.g.dart';

/// AddOn
///
/// Properties:
/// * [name] 
/// * [displayName] 
/// * [description] 
/// * [priceNaira] 
/// * [pricingModel] 
/// * [active] 
@BuiltValue()
abstract class AddOn implements Built<AddOn, AddOnBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'display_name')
  String get displayName;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'price_naira')
  int get priceNaira;

  @BuiltValueField(wireName: r'pricing_model')
  String get pricingModel;

  @BuiltValueField(wireName: r'active')
  bool get active;

  AddOn._();

  factory AddOn([void updates(AddOnBuilder b)]) = _$AddOn;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddOnBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddOn> get serializer => _$AddOnSerializer();
}

class _$AddOnSerializer implements PrimitiveSerializer<AddOn> {
  @override
  final Iterable<Type> types = const [AddOn, _$AddOn];

  @override
  final String wireName = r'AddOn';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddOn object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'display_name';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'price_naira';
    yield serializers.serialize(
      object.priceNaira,
      specifiedType: const FullType(int),
    );
    yield r'pricing_model';
    yield serializers.serialize(
      object.pricingModel,
      specifiedType: const FullType(String),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddOn object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddOnBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'price_naira':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.priceNaira = valueDes;
          break;
        case r'pricing_model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pricingModel = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddOn deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddOnBuilder();
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


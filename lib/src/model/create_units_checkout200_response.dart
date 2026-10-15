//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_units_checkout200_response.g.dart';

/// CreateUnitsCheckout200Response
///
/// Properties:
/// * [authorizationUrl] 
/// * [reference] 
/// * [units] 
@BuiltValue()
abstract class CreateUnitsCheckout200Response implements Built<CreateUnitsCheckout200Response, CreateUnitsCheckout200ResponseBuilder> {
  @BuiltValueField(wireName: r'authorization_url')
  String get authorizationUrl;

  @BuiltValueField(wireName: r'reference')
  String get reference;

  @BuiltValueField(wireName: r'units')
  int get units;

  CreateUnitsCheckout200Response._();

  factory CreateUnitsCheckout200Response([void updates(CreateUnitsCheckout200ResponseBuilder b)]) = _$CreateUnitsCheckout200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateUnitsCheckout200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateUnitsCheckout200Response> get serializer => _$CreateUnitsCheckout200ResponseSerializer();
}

class _$CreateUnitsCheckout200ResponseSerializer implements PrimitiveSerializer<CreateUnitsCheckout200Response> {
  @override
  final Iterable<Type> types = const [CreateUnitsCheckout200Response, _$CreateUnitsCheckout200Response];

  @override
  final String wireName = r'CreateUnitsCheckout200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateUnitsCheckout200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'authorization_url';
    yield serializers.serialize(
      object.authorizationUrl,
      specifiedType: const FullType(String),
    );
    yield r'reference';
    yield serializers.serialize(
      object.reference,
      specifiedType: const FullType(String),
    );
    yield r'units';
    yield serializers.serialize(
      object.units,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateUnitsCheckout200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateUnitsCheckout200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authorization_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorizationUrl = valueDes;
          break;
        case r'reference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reference = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.units = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateUnitsCheckout200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateUnitsCheckout200ResponseBuilder();
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


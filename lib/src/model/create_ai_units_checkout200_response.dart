//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_ai_units_checkout200_response.g.dart';

/// CreateAiUnitsCheckout200Response
///
/// Properties:
/// * [authorizationUrl] 
/// * [reference] 
/// * [units] 
@BuiltValue()
abstract class CreateAiUnitsCheckout200Response implements Built<CreateAiUnitsCheckout200Response, CreateAiUnitsCheckout200ResponseBuilder> {
  @BuiltValueField(wireName: r'authorization_url')
  String get authorizationUrl;

  @BuiltValueField(wireName: r'reference')
  String get reference;

  @BuiltValueField(wireName: r'units')
  int? get units;

  CreateAiUnitsCheckout200Response._();

  factory CreateAiUnitsCheckout200Response([void updates(CreateAiUnitsCheckout200ResponseBuilder b)]) = _$CreateAiUnitsCheckout200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAiUnitsCheckout200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAiUnitsCheckout200Response> get serializer => _$CreateAiUnitsCheckout200ResponseSerializer();
}

class _$CreateAiUnitsCheckout200ResponseSerializer implements PrimitiveSerializer<CreateAiUnitsCheckout200Response> {
  @override
  final Iterable<Type> types = const [CreateAiUnitsCheckout200Response, _$CreateAiUnitsCheckout200Response];

  @override
  final String wireName = r'CreateAiUnitsCheckout200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAiUnitsCheckout200Response object, {
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
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateAiUnitsCheckout200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateAiUnitsCheckout200ResponseBuilder result,
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
  CreateAiUnitsCheckout200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAiUnitsCheckout200ResponseBuilder();
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


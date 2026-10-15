//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_billing_checkout200_response.g.dart';

/// CreateBillingCheckout200Response
///
/// Properties:
/// * [authorizationUrl] 
/// * [reference] 
@BuiltValue()
abstract class CreateBillingCheckout200Response implements Built<CreateBillingCheckout200Response, CreateBillingCheckout200ResponseBuilder> {
  @BuiltValueField(wireName: r'authorization_url')
  String get authorizationUrl;

  @BuiltValueField(wireName: r'reference')
  String get reference;

  CreateBillingCheckout200Response._();

  factory CreateBillingCheckout200Response([void updates(CreateBillingCheckout200ResponseBuilder b)]) = _$CreateBillingCheckout200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateBillingCheckout200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateBillingCheckout200Response> get serializer => _$CreateBillingCheckout200ResponseSerializer();
}

class _$CreateBillingCheckout200ResponseSerializer implements PrimitiveSerializer<CreateBillingCheckout200Response> {
  @override
  final Iterable<Type> types = const [CreateBillingCheckout200Response, _$CreateBillingCheckout200Response];

  @override
  final String wireName = r'CreateBillingCheckout200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateBillingCheckout200Response object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateBillingCheckout200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateBillingCheckout200ResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateBillingCheckout200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBillingCheckout200ResponseBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activate_add_on200_response.g.dart';

/// ActivateAddOn200Response
///
/// Properties:
/// * [id] 
/// * [addOn] 
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class ActivateAddOn200Response implements Built<ActivateAddOn200Response, ActivateAddOn200ResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'add_on')
  String get addOn;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'message')
  String get message;

  ActivateAddOn200Response._();

  factory ActivateAddOn200Response([void updates(ActivateAddOn200ResponseBuilder b)]) = _$ActivateAddOn200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivateAddOn200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivateAddOn200Response> get serializer => _$ActivateAddOn200ResponseSerializer();
}

class _$ActivateAddOn200ResponseSerializer implements PrimitiveSerializer<ActivateAddOn200Response> {
  @override
  final Iterable<Type> types = const [ActivateAddOn200Response, _$ActivateAddOn200Response];

  @override
  final String wireName = r'ActivateAddOn200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivateAddOn200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'add_on';
    yield serializers.serialize(
      object.addOn,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivateAddOn200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivateAddOn200ResponseBuilder result,
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
        case r'add_on':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addOn = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActivateAddOn200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivateAddOn200ResponseBuilder();
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


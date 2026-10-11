//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_add_on_status200_response.g.dart';

/// GetAddOnStatus200Response
///
/// Properties:
/// * [name] 
/// * [eligible] 
/// * [active] 
@BuiltValue()
abstract class GetAddOnStatus200Response implements Built<GetAddOnStatus200Response, GetAddOnStatus200ResponseBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'eligible')
  bool get eligible;

  @BuiltValueField(wireName: r'active')
  bool get active;

  GetAddOnStatus200Response._();

  factory GetAddOnStatus200Response([void updates(GetAddOnStatus200ResponseBuilder b)]) = _$GetAddOnStatus200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAddOnStatus200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAddOnStatus200Response> get serializer => _$GetAddOnStatus200ResponseSerializer();
}

class _$GetAddOnStatus200ResponseSerializer implements PrimitiveSerializer<GetAddOnStatus200Response> {
  @override
  final Iterable<Type> types = const [GetAddOnStatus200Response, _$GetAddOnStatus200Response];

  @override
  final String wireName = r'GetAddOnStatus200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAddOnStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'eligible';
    yield serializers.serialize(
      object.eligible,
      specifiedType: const FullType(bool),
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
    GetAddOnStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetAddOnStatus200ResponseBuilder result,
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
        case r'eligible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.eligible = valueDes;
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
  GetAddOnStatus200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAddOnStatus200ResponseBuilder();
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


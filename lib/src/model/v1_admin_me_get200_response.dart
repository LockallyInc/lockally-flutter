//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/admin.dart';
import 'package:lockally/src/model/tenant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_admin_me_get200_response.g.dart';

/// V1AdminMeGet200Response
///
/// Properties:
/// * [admin] 
/// * [tenant] 
@BuiltValue()
abstract class V1AdminMeGet200Response implements Built<V1AdminMeGet200Response, V1AdminMeGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'admin')
  Admin get admin;

  @BuiltValueField(wireName: r'tenant')
  Tenant get tenant;

  V1AdminMeGet200Response._();

  factory V1AdminMeGet200Response([void updates(V1AdminMeGet200ResponseBuilder b)]) = _$V1AdminMeGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AdminMeGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdminMeGet200Response> get serializer => _$V1AdminMeGet200ResponseSerializer();
}

class _$V1AdminMeGet200ResponseSerializer implements PrimitiveSerializer<V1AdminMeGet200Response> {
  @override
  final Iterable<Type> types = const [V1AdminMeGet200Response, _$V1AdminMeGet200Response];

  @override
  final String wireName = r'V1AdminMeGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AdminMeGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'admin';
    yield serializers.serialize(
      object.admin,
      specifiedType: const FullType(Admin),
    );
    yield r'tenant';
    yield serializers.serialize(
      object.tenant,
      specifiedType: const FullType(Tenant),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AdminMeGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AdminMeGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'admin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Admin),
          ) as Admin;
          result.admin = valueDes;
          break;
        case r'tenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Tenant),
          ) as Tenant;
          result.tenant.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AdminMeGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AdminMeGet200ResponseBuilder();
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


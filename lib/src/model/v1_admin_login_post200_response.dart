//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/admin.dart';
import 'package:lockally/src/model/tenant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_admin_login_post200_response.g.dart';

/// V1AdminLoginPost200Response
///
/// Properties:
/// * [token] 
/// * [expiresAt] 
/// * [admin] 
/// * [tenant] 
@BuiltValue()
abstract class V1AdminLoginPost200Response implements Built<V1AdminLoginPost200Response, V1AdminLoginPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'expires_at')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'admin')
  Admin get admin;

  @BuiltValueField(wireName: r'tenant')
  Tenant get tenant;

  V1AdminLoginPost200Response._();

  factory V1AdminLoginPost200Response([void updates(V1AdminLoginPost200ResponseBuilder b)]) = _$V1AdminLoginPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AdminLoginPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdminLoginPost200Response> get serializer => _$V1AdminLoginPost200ResponseSerializer();
}

class _$V1AdminLoginPost200ResponseSerializer implements PrimitiveSerializer<V1AdminLoginPost200Response> {
  @override
  final Iterable<Type> types = const [V1AdminLoginPost200Response, _$V1AdminLoginPost200Response];

  @override
  final String wireName = r'V1AdminLoginPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AdminLoginPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'expires_at';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
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
    V1AdminLoginPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AdminLoginPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
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
  V1AdminLoginPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AdminLoginPost200ResponseBuilder();
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


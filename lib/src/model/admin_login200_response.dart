//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/admin.dart';
import 'package:lockally/src/model/tenant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_login200_response.g.dart';

/// AdminLogin200Response
///
/// Properties:
/// * [token] 
/// * [expiresAt] 
/// * [admin] 
/// * [tenant] 
@BuiltValue()
abstract class AdminLogin200Response implements Built<AdminLogin200Response, AdminLogin200ResponseBuilder> {
  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'expires_at')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'admin')
  Admin get admin;

  @BuiltValueField(wireName: r'tenant')
  Tenant get tenant;

  AdminLogin200Response._();

  factory AdminLogin200Response([void updates(AdminLogin200ResponseBuilder b)]) = _$AdminLogin200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminLogin200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminLogin200Response> get serializer => _$AdminLogin200ResponseSerializer();
}

class _$AdminLogin200ResponseSerializer implements PrimitiveSerializer<AdminLogin200Response> {
  @override
  final Iterable<Type> types = const [AdminLogin200Response, _$AdminLogin200Response];

  @override
  final String wireName = r'AdminLogin200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminLogin200Response object, {
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
    AdminLogin200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminLogin200ResponseBuilder result,
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
  AdminLogin200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminLogin200ResponseBuilder();
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


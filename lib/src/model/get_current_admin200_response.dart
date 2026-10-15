//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/admin.dart';
import 'package:lockally/src/model/tenant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_current_admin200_response.g.dart';

/// GetCurrentAdmin200Response
///
/// Properties:
/// * [admin] 
/// * [tenant] 
@BuiltValue()
abstract class GetCurrentAdmin200Response implements Built<GetCurrentAdmin200Response, GetCurrentAdmin200ResponseBuilder> {
  @BuiltValueField(wireName: r'admin')
  Admin get admin;

  @BuiltValueField(wireName: r'tenant')
  Tenant get tenant;

  GetCurrentAdmin200Response._();

  factory GetCurrentAdmin200Response([void updates(GetCurrentAdmin200ResponseBuilder b)]) = _$GetCurrentAdmin200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCurrentAdmin200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCurrentAdmin200Response> get serializer => _$GetCurrentAdmin200ResponseSerializer();
}

class _$GetCurrentAdmin200ResponseSerializer implements PrimitiveSerializer<GetCurrentAdmin200Response> {
  @override
  final Iterable<Type> types = const [GetCurrentAdmin200Response, _$GetCurrentAdmin200Response];

  @override
  final String wireName = r'GetCurrentAdmin200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCurrentAdmin200Response object, {
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
    GetCurrentAdmin200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCurrentAdmin200ResponseBuilder result,
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
  GetCurrentAdmin200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCurrentAdmin200ResponseBuilder();
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


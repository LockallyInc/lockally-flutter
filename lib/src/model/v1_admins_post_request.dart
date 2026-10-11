//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_admins_post_request.g.dart';

/// V1AdminsPostRequest
///
/// Properties:
/// * [email] 
/// * [password] 
/// * [displayName] 
/// * [role] 
@BuiltValue()
abstract class V1AdminsPostRequest implements Built<V1AdminsPostRequest, V1AdminsPostRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  @BuiltValueField(wireName: r'role')
  V1AdminsPostRequestRoleEnum? get role;
  // enum roleEnum {  admin,  viewer,  };

  V1AdminsPostRequest._();

  factory V1AdminsPostRequest([void updates(V1AdminsPostRequestBuilder b)]) = _$V1AdminsPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AdminsPostRequestBuilder b) => b
      ..role = V1AdminsPostRequestRoleEnum.valueOf('admin');

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdminsPostRequest> get serializer => _$V1AdminsPostRequestSerializer();
}

class _$V1AdminsPostRequestSerializer implements PrimitiveSerializer<V1AdminsPostRequest> {
  @override
  final Iterable<Type> types = const [V1AdminsPostRequest, _$V1AdminsPostRequest];

  @override
  final String wireName = r'V1AdminsPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AdminsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(V1AdminsPostRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AdminsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AdminsPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1AdminsPostRequestRoleEnum),
          ) as V1AdminsPostRequestRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AdminsPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AdminsPostRequestBuilder();
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

class V1AdminsPostRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'admin')
  static const V1AdminsPostRequestRoleEnum admin = _$v1AdminsPostRequestRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'viewer')
  static const V1AdminsPostRequestRoleEnum viewer = _$v1AdminsPostRequestRoleEnum_viewer;

  static Serializer<V1AdminsPostRequestRoleEnum> get serializer => _$v1AdminsPostRequestRoleEnumSerializer;

  const V1AdminsPostRequestRoleEnum._(String name): super(name);

  static BuiltSet<V1AdminsPostRequestRoleEnum> get values => _$v1AdminsPostRequestRoleEnumValues;
  static V1AdminsPostRequestRoleEnum valueOf(String name) => _$v1AdminsPostRequestRoleEnumValueOf(name);
}


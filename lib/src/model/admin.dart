//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin.g.dart';

/// Admin
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [email] 
/// * [displayName] 
/// * [role] 
/// * [lastLoginAt] 
/// * [createdAt] 
@BuiltValue(instantiable: false)
abstract class Admin  {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  @BuiltValueField(wireName: r'role')
  AdminRoleEnum get role;
  // enum roleEnum {  admin,  viewer,  };

  @BuiltValueField(wireName: r'last_login_at')
  DateTime? get lastLoginAt;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueSerializer(custom: true)
  static Serializer<Admin> get serializer => _$AdminSerializer();
}

class _$AdminSerializer implements PrimitiveSerializer<Admin> {
  @override
  final Iterable<Type> types = const [Admin];

  @override
  final String wireName = r'Admin';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Admin object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(AdminRoleEnum),
    );
    if (object.lastLoginAt != null) {
      yield r'last_login_at';
      yield serializers.serialize(
        object.lastLoginAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Admin object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Admin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Admin)) as $Admin;
  }
}

/// a concrete implementation of [Admin], since [Admin] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Admin implements Admin, Built<$Admin, $AdminBuilder> {
  $Admin._();

  factory $Admin([void Function($AdminBuilder)? updates]) = _$$Admin;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AdminBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Admin> get serializer => _$$AdminSerializer();
}

class _$$AdminSerializer implements PrimitiveSerializer<$Admin> {
  @override
  final Iterable<Type> types = const [$Admin, _$$Admin];

  @override
  final String wireName = r'$Admin';

  @override
  Object serialize(
    Serializers serializers,
    $Admin object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Admin))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminBuilder result,
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
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
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
            specifiedType: const FullType(AdminRoleEnum),
          ) as AdminRoleEnum;
          result.role = valueDes;
          break;
        case r'last_login_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastLoginAt = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Admin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AdminBuilder();
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

class AdminRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'admin')
  static const AdminRoleEnum admin = _$adminRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'viewer')
  static const AdminRoleEnum viewer = _$adminRoleEnum_viewer;

  static Serializer<AdminRoleEnum> get serializer => _$adminRoleEnumSerializer;

  const AdminRoleEnum._(String name): super(name);

  static BuiltSet<AdminRoleEnum> get values => _$adminRoleEnumValues;
  static AdminRoleEnum valueOf(String name) => _$adminRoleEnumValueOf(name);
}


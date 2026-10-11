//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/admin.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_full.g.dart';

/// AdminFull
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [email] 
/// * [displayName] 
/// * [role] 
/// * [lastLoginAt] 
/// * [createdAt] 
/// * [disabled] 
/// * [disabledAt] 
/// * [password] - Present ONLY on POST response when lockally generated the password. Shown once.
@BuiltValue()
abstract class AdminFull implements Admin, Built<AdminFull, AdminFullBuilder> {
  /// Present ONLY on POST response when lockally generated the password. Shown once.
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'disabled')
  bool get disabled;

  @BuiltValueField(wireName: r'disabled_at')
  DateTime? get disabledAt;

  AdminFull._();

  factory AdminFull([void updates(AdminFullBuilder b)]) = _$AdminFull;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminFullBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminFull> get serializer => _$AdminFullSerializer();
}

class _$AdminFullSerializer implements PrimitiveSerializer<AdminFull> {
  @override
  final Iterable<Type> types = const [AdminFull, _$AdminFull];

  @override
  final String wireName = r'AdminFull';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminFull object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
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
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'disabled';
    yield serializers.serialize(
      object.disabled,
      specifiedType: const FullType(bool),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.disabledAt != null) {
      yield r'disabled_at';
      yield serializers.serialize(
        object.disabledAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminFull object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminFullBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
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
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disabled = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'disabled_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.disabledAt = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminFull deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminFullBuilder();
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

class AdminFullRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'admin')
  static const AdminFullRoleEnum admin = _$adminFullRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'viewer')
  static const AdminFullRoleEnum viewer = _$adminFullRoleEnum_viewer;

  static Serializer<AdminFullRoleEnum> get serializer => _$adminFullRoleEnumSerializer;

  const AdminFullRoleEnum._(String name): super(name);

  static BuiltSet<AdminFullRoleEnum> get values => _$adminFullRoleEnumValues;
  static AdminFullRoleEnum valueOf(String name) => _$adminFullRoleEnumValueOf(name);
}


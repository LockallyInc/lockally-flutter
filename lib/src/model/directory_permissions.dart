//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'directory_permissions.g.dart';

/// DirectoryPermissions
///
/// Properties:
/// * [tenantId] 
/// * [contactViewAccess] 
/// * [contactEditAccess] 
/// * [listManageAccess] 
/// * [externalSharing] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class DirectoryPermissions implements Built<DirectoryPermissions, DirectoryPermissionsBuilder> {
  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'contact_view_access')
  DirectoryPermissionsContactViewAccessEnum get contactViewAccess;
  // enum contactViewAccessEnum {  all_users,  same_department,  admins_only,  };

  @BuiltValueField(wireName: r'contact_edit_access')
  DirectoryPermissionsContactEditAccessEnum get contactEditAccess;
  // enum contactEditAccessEnum {  all_users,  admins_only,  };

  @BuiltValueField(wireName: r'list_manage_access')
  DirectoryPermissionsListManageAccessEnum get listManageAccess;
  // enum listManageAccessEnum {  all_users,  list_owners,  admins_only,  };

  @BuiltValueField(wireName: r'external_sharing')
  DirectoryPermissionsExternalSharingEnum get externalSharing;
  // enum externalSharingEnum {  allowed,  restricted,  disabled,  };

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  DirectoryPermissions._();

  factory DirectoryPermissions([void updates(DirectoryPermissionsBuilder b)]) = _$DirectoryPermissions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DirectoryPermissionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DirectoryPermissions> get serializer => _$DirectoryPermissionsSerializer();
}

class _$DirectoryPermissionsSerializer implements PrimitiveSerializer<DirectoryPermissions> {
  @override
  final Iterable<Type> types = const [DirectoryPermissions, _$DirectoryPermissions];

  @override
  final String wireName = r'DirectoryPermissions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DirectoryPermissions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'contact_view_access';
    yield serializers.serialize(
      object.contactViewAccess,
      specifiedType: const FullType(DirectoryPermissionsContactViewAccessEnum),
    );
    yield r'contact_edit_access';
    yield serializers.serialize(
      object.contactEditAccess,
      specifiedType: const FullType(DirectoryPermissionsContactEditAccessEnum),
    );
    yield r'list_manage_access';
    yield serializers.serialize(
      object.listManageAccess,
      specifiedType: const FullType(DirectoryPermissionsListManageAccessEnum),
    );
    yield r'external_sharing';
    yield serializers.serialize(
      object.externalSharing,
      specifiedType: const FullType(DirectoryPermissionsExternalSharingEnum),
    );
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DirectoryPermissions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DirectoryPermissionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'contact_view_access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DirectoryPermissionsContactViewAccessEnum),
          ) as DirectoryPermissionsContactViewAccessEnum;
          result.contactViewAccess = valueDes;
          break;
        case r'contact_edit_access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DirectoryPermissionsContactEditAccessEnum),
          ) as DirectoryPermissionsContactEditAccessEnum;
          result.contactEditAccess = valueDes;
          break;
        case r'list_manage_access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DirectoryPermissionsListManageAccessEnum),
          ) as DirectoryPermissionsListManageAccessEnum;
          result.listManageAccess = valueDes;
          break;
        case r'external_sharing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DirectoryPermissionsExternalSharingEnum),
          ) as DirectoryPermissionsExternalSharingEnum;
          result.externalSharing = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DirectoryPermissions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DirectoryPermissionsBuilder();
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

class DirectoryPermissionsContactViewAccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all_users')
  static const DirectoryPermissionsContactViewAccessEnum allUsers = _$directoryPermissionsContactViewAccessEnum_allUsers;
  @BuiltValueEnumConst(wireName: r'same_department')
  static const DirectoryPermissionsContactViewAccessEnum sameDepartment = _$directoryPermissionsContactViewAccessEnum_sameDepartment;
  @BuiltValueEnumConst(wireName: r'admins_only')
  static const DirectoryPermissionsContactViewAccessEnum adminsOnly = _$directoryPermissionsContactViewAccessEnum_adminsOnly;

  static Serializer<DirectoryPermissionsContactViewAccessEnum> get serializer => _$directoryPermissionsContactViewAccessEnumSerializer;

  const DirectoryPermissionsContactViewAccessEnum._(String name): super(name);

  static BuiltSet<DirectoryPermissionsContactViewAccessEnum> get values => _$directoryPermissionsContactViewAccessEnumValues;
  static DirectoryPermissionsContactViewAccessEnum valueOf(String name) => _$directoryPermissionsContactViewAccessEnumValueOf(name);
}

class DirectoryPermissionsContactEditAccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all_users')
  static const DirectoryPermissionsContactEditAccessEnum allUsers = _$directoryPermissionsContactEditAccessEnum_allUsers;
  @BuiltValueEnumConst(wireName: r'admins_only')
  static const DirectoryPermissionsContactEditAccessEnum adminsOnly = _$directoryPermissionsContactEditAccessEnum_adminsOnly;

  static Serializer<DirectoryPermissionsContactEditAccessEnum> get serializer => _$directoryPermissionsContactEditAccessEnumSerializer;

  const DirectoryPermissionsContactEditAccessEnum._(String name): super(name);

  static BuiltSet<DirectoryPermissionsContactEditAccessEnum> get values => _$directoryPermissionsContactEditAccessEnumValues;
  static DirectoryPermissionsContactEditAccessEnum valueOf(String name) => _$directoryPermissionsContactEditAccessEnumValueOf(name);
}

class DirectoryPermissionsListManageAccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all_users')
  static const DirectoryPermissionsListManageAccessEnum allUsers = _$directoryPermissionsListManageAccessEnum_allUsers;
  @BuiltValueEnumConst(wireName: r'list_owners')
  static const DirectoryPermissionsListManageAccessEnum listOwners = _$directoryPermissionsListManageAccessEnum_listOwners;
  @BuiltValueEnumConst(wireName: r'admins_only')
  static const DirectoryPermissionsListManageAccessEnum adminsOnly = _$directoryPermissionsListManageAccessEnum_adminsOnly;

  static Serializer<DirectoryPermissionsListManageAccessEnum> get serializer => _$directoryPermissionsListManageAccessEnumSerializer;

  const DirectoryPermissionsListManageAccessEnum._(String name): super(name);

  static BuiltSet<DirectoryPermissionsListManageAccessEnum> get values => _$directoryPermissionsListManageAccessEnumValues;
  static DirectoryPermissionsListManageAccessEnum valueOf(String name) => _$directoryPermissionsListManageAccessEnumValueOf(name);
}

class DirectoryPermissionsExternalSharingEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'allowed')
  static const DirectoryPermissionsExternalSharingEnum allowed = _$directoryPermissionsExternalSharingEnum_allowed;
  @BuiltValueEnumConst(wireName: r'restricted')
  static const DirectoryPermissionsExternalSharingEnum restricted = _$directoryPermissionsExternalSharingEnum_restricted;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const DirectoryPermissionsExternalSharingEnum disabled = _$directoryPermissionsExternalSharingEnum_disabled;

  static Serializer<DirectoryPermissionsExternalSharingEnum> get serializer => _$directoryPermissionsExternalSharingEnumSerializer;

  const DirectoryPermissionsExternalSharingEnum._(String name): super(name);

  static BuiltSet<DirectoryPermissionsExternalSharingEnum> get values => _$directoryPermissionsExternalSharingEnumValues;
  static DirectoryPermissionsExternalSharingEnum valueOf(String name) => _$directoryPermissionsExternalSharingEnumValueOf(name);
}


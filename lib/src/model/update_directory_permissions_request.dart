//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_directory_permissions_request.g.dart';

/// UpdateDirectoryPermissionsRequest
///
/// Properties:
/// * [contactViewAccess] 
/// * [contactEditAccess] 
/// * [listManageAccess] 
/// * [externalSharing] 
@BuiltValue()
abstract class UpdateDirectoryPermissionsRequest implements Built<UpdateDirectoryPermissionsRequest, UpdateDirectoryPermissionsRequestBuilder> {
  @BuiltValueField(wireName: r'contact_view_access')
  UpdateDirectoryPermissionsRequestContactViewAccessEnum? get contactViewAccess;
  // enum contactViewAccessEnum {  all_users,  same_department,  admins_only,  };

  @BuiltValueField(wireName: r'contact_edit_access')
  UpdateDirectoryPermissionsRequestContactEditAccessEnum? get contactEditAccess;
  // enum contactEditAccessEnum {  all_users,  admins_only,  };

  @BuiltValueField(wireName: r'list_manage_access')
  UpdateDirectoryPermissionsRequestListManageAccessEnum? get listManageAccess;
  // enum listManageAccessEnum {  all_users,  list_owners,  admins_only,  };

  @BuiltValueField(wireName: r'external_sharing')
  UpdateDirectoryPermissionsRequestExternalSharingEnum? get externalSharing;
  // enum externalSharingEnum {  allowed,  restricted,  disabled,  };

  UpdateDirectoryPermissionsRequest._();

  factory UpdateDirectoryPermissionsRequest([void updates(UpdateDirectoryPermissionsRequestBuilder b)]) = _$UpdateDirectoryPermissionsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateDirectoryPermissionsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateDirectoryPermissionsRequest> get serializer => _$UpdateDirectoryPermissionsRequestSerializer();
}

class _$UpdateDirectoryPermissionsRequestSerializer implements PrimitiveSerializer<UpdateDirectoryPermissionsRequest> {
  @override
  final Iterable<Type> types = const [UpdateDirectoryPermissionsRequest, _$UpdateDirectoryPermissionsRequest];

  @override
  final String wireName = r'UpdateDirectoryPermissionsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateDirectoryPermissionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.contactViewAccess != null) {
      yield r'contact_view_access';
      yield serializers.serialize(
        object.contactViewAccess,
        specifiedType: const FullType(UpdateDirectoryPermissionsRequestContactViewAccessEnum),
      );
    }
    if (object.contactEditAccess != null) {
      yield r'contact_edit_access';
      yield serializers.serialize(
        object.contactEditAccess,
        specifiedType: const FullType(UpdateDirectoryPermissionsRequestContactEditAccessEnum),
      );
    }
    if (object.listManageAccess != null) {
      yield r'list_manage_access';
      yield serializers.serialize(
        object.listManageAccess,
        specifiedType: const FullType(UpdateDirectoryPermissionsRequestListManageAccessEnum),
      );
    }
    if (object.externalSharing != null) {
      yield r'external_sharing';
      yield serializers.serialize(
        object.externalSharing,
        specifiedType: const FullType(UpdateDirectoryPermissionsRequestExternalSharingEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateDirectoryPermissionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateDirectoryPermissionsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contact_view_access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateDirectoryPermissionsRequestContactViewAccessEnum),
          ) as UpdateDirectoryPermissionsRequestContactViewAccessEnum;
          result.contactViewAccess = valueDes;
          break;
        case r'contact_edit_access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateDirectoryPermissionsRequestContactEditAccessEnum),
          ) as UpdateDirectoryPermissionsRequestContactEditAccessEnum;
          result.contactEditAccess = valueDes;
          break;
        case r'list_manage_access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateDirectoryPermissionsRequestListManageAccessEnum),
          ) as UpdateDirectoryPermissionsRequestListManageAccessEnum;
          result.listManageAccess = valueDes;
          break;
        case r'external_sharing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateDirectoryPermissionsRequestExternalSharingEnum),
          ) as UpdateDirectoryPermissionsRequestExternalSharingEnum;
          result.externalSharing = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateDirectoryPermissionsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDirectoryPermissionsRequestBuilder();
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

class UpdateDirectoryPermissionsRequestContactViewAccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all_users')
  static const UpdateDirectoryPermissionsRequestContactViewAccessEnum allUsers = _$updateDirectoryPermissionsRequestContactViewAccessEnum_allUsers;
  @BuiltValueEnumConst(wireName: r'same_department')
  static const UpdateDirectoryPermissionsRequestContactViewAccessEnum sameDepartment = _$updateDirectoryPermissionsRequestContactViewAccessEnum_sameDepartment;
  @BuiltValueEnumConst(wireName: r'admins_only')
  static const UpdateDirectoryPermissionsRequestContactViewAccessEnum adminsOnly = _$updateDirectoryPermissionsRequestContactViewAccessEnum_adminsOnly;

  static Serializer<UpdateDirectoryPermissionsRequestContactViewAccessEnum> get serializer => _$updateDirectoryPermissionsRequestContactViewAccessEnumSerializer;

  const UpdateDirectoryPermissionsRequestContactViewAccessEnum._(String name): super(name);

  static BuiltSet<UpdateDirectoryPermissionsRequestContactViewAccessEnum> get values => _$updateDirectoryPermissionsRequestContactViewAccessEnumValues;
  static UpdateDirectoryPermissionsRequestContactViewAccessEnum valueOf(String name) => _$updateDirectoryPermissionsRequestContactViewAccessEnumValueOf(name);
}

class UpdateDirectoryPermissionsRequestContactEditAccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all_users')
  static const UpdateDirectoryPermissionsRequestContactEditAccessEnum allUsers = _$updateDirectoryPermissionsRequestContactEditAccessEnum_allUsers;
  @BuiltValueEnumConst(wireName: r'admins_only')
  static const UpdateDirectoryPermissionsRequestContactEditAccessEnum adminsOnly = _$updateDirectoryPermissionsRequestContactEditAccessEnum_adminsOnly;

  static Serializer<UpdateDirectoryPermissionsRequestContactEditAccessEnum> get serializer => _$updateDirectoryPermissionsRequestContactEditAccessEnumSerializer;

  const UpdateDirectoryPermissionsRequestContactEditAccessEnum._(String name): super(name);

  static BuiltSet<UpdateDirectoryPermissionsRequestContactEditAccessEnum> get values => _$updateDirectoryPermissionsRequestContactEditAccessEnumValues;
  static UpdateDirectoryPermissionsRequestContactEditAccessEnum valueOf(String name) => _$updateDirectoryPermissionsRequestContactEditAccessEnumValueOf(name);
}

class UpdateDirectoryPermissionsRequestListManageAccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all_users')
  static const UpdateDirectoryPermissionsRequestListManageAccessEnum allUsers = _$updateDirectoryPermissionsRequestListManageAccessEnum_allUsers;
  @BuiltValueEnumConst(wireName: r'list_owners')
  static const UpdateDirectoryPermissionsRequestListManageAccessEnum listOwners = _$updateDirectoryPermissionsRequestListManageAccessEnum_listOwners;
  @BuiltValueEnumConst(wireName: r'admins_only')
  static const UpdateDirectoryPermissionsRequestListManageAccessEnum adminsOnly = _$updateDirectoryPermissionsRequestListManageAccessEnum_adminsOnly;

  static Serializer<UpdateDirectoryPermissionsRequestListManageAccessEnum> get serializer => _$updateDirectoryPermissionsRequestListManageAccessEnumSerializer;

  const UpdateDirectoryPermissionsRequestListManageAccessEnum._(String name): super(name);

  static BuiltSet<UpdateDirectoryPermissionsRequestListManageAccessEnum> get values => _$updateDirectoryPermissionsRequestListManageAccessEnumValues;
  static UpdateDirectoryPermissionsRequestListManageAccessEnum valueOf(String name) => _$updateDirectoryPermissionsRequestListManageAccessEnumValueOf(name);
}

class UpdateDirectoryPermissionsRequestExternalSharingEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'allowed')
  static const UpdateDirectoryPermissionsRequestExternalSharingEnum allowed = _$updateDirectoryPermissionsRequestExternalSharingEnum_allowed;
  @BuiltValueEnumConst(wireName: r'restricted')
  static const UpdateDirectoryPermissionsRequestExternalSharingEnum restricted = _$updateDirectoryPermissionsRequestExternalSharingEnum_restricted;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const UpdateDirectoryPermissionsRequestExternalSharingEnum disabled = _$updateDirectoryPermissionsRequestExternalSharingEnum_disabled;

  static Serializer<UpdateDirectoryPermissionsRequestExternalSharingEnum> get serializer => _$updateDirectoryPermissionsRequestExternalSharingEnumSerializer;

  const UpdateDirectoryPermissionsRequestExternalSharingEnum._(String name): super(name);

  static BuiltSet<UpdateDirectoryPermissionsRequestExternalSharingEnum> get values => _$updateDirectoryPermissionsRequestExternalSharingEnumValues;
  static UpdateDirectoryPermissionsRequestExternalSharingEnum valueOf(String name) => _$updateDirectoryPermissionsRequestExternalSharingEnumValueOf(name);
}


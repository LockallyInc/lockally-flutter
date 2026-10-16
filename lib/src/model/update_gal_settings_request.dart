//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_gal_settings_request.g.dart';

/// UpdateGALSettingsRequest
///
/// Properties:
/// * [galEnabled] 
/// * [hideFromDirectory] 
/// * [departmentGrouping] 
/// * [searchVisibility] 
/// * [includeExternalContacts] 
@BuiltValue()
abstract class UpdateGALSettingsRequest implements Built<UpdateGALSettingsRequest, UpdateGALSettingsRequestBuilder> {
  @BuiltValueField(wireName: r'gal_enabled')
  bool? get galEnabled;

  @BuiltValueField(wireName: r'hide_from_directory')
  bool? get hideFromDirectory;

  @BuiltValueField(wireName: r'department_grouping')
  bool? get departmentGrouping;

  @BuiltValueField(wireName: r'search_visibility')
  UpdateGALSettingsRequestSearchVisibilityEnum? get searchVisibility;
  // enum searchVisibilityEnum {  all_users,  same_department,  admins_only,  };

  @BuiltValueField(wireName: r'include_external_contacts')
  bool? get includeExternalContacts;

  UpdateGALSettingsRequest._();

  factory UpdateGALSettingsRequest([void updates(UpdateGALSettingsRequestBuilder b)]) = _$UpdateGALSettingsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateGALSettingsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateGALSettingsRequest> get serializer => _$UpdateGALSettingsRequestSerializer();
}

class _$UpdateGALSettingsRequestSerializer implements PrimitiveSerializer<UpdateGALSettingsRequest> {
  @override
  final Iterable<Type> types = const [UpdateGALSettingsRequest, _$UpdateGALSettingsRequest];

  @override
  final String wireName = r'UpdateGALSettingsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateGALSettingsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.galEnabled != null) {
      yield r'gal_enabled';
      yield serializers.serialize(
        object.galEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hideFromDirectory != null) {
      yield r'hide_from_directory';
      yield serializers.serialize(
        object.hideFromDirectory,
        specifiedType: const FullType(bool),
      );
    }
    if (object.departmentGrouping != null) {
      yield r'department_grouping';
      yield serializers.serialize(
        object.departmentGrouping,
        specifiedType: const FullType(bool),
      );
    }
    if (object.searchVisibility != null) {
      yield r'search_visibility';
      yield serializers.serialize(
        object.searchVisibility,
        specifiedType: const FullType(UpdateGALSettingsRequestSearchVisibilityEnum),
      );
    }
    if (object.includeExternalContacts != null) {
      yield r'include_external_contacts';
      yield serializers.serialize(
        object.includeExternalContacts,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateGALSettingsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateGALSettingsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'gal_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.galEnabled = valueDes;
          break;
        case r'hide_from_directory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideFromDirectory = valueDes;
          break;
        case r'department_grouping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.departmentGrouping = valueDes;
          break;
        case r'search_visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateGALSettingsRequestSearchVisibilityEnum),
          ) as UpdateGALSettingsRequestSearchVisibilityEnum;
          result.searchVisibility = valueDes;
          break;
        case r'include_external_contacts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.includeExternalContacts = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateGALSettingsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateGALSettingsRequestBuilder();
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

class UpdateGALSettingsRequestSearchVisibilityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all_users')
  static const UpdateGALSettingsRequestSearchVisibilityEnum allUsers = _$updateGALSettingsRequestSearchVisibilityEnum_allUsers;
  @BuiltValueEnumConst(wireName: r'same_department')
  static const UpdateGALSettingsRequestSearchVisibilityEnum sameDepartment = _$updateGALSettingsRequestSearchVisibilityEnum_sameDepartment;
  @BuiltValueEnumConst(wireName: r'admins_only')
  static const UpdateGALSettingsRequestSearchVisibilityEnum adminsOnly = _$updateGALSettingsRequestSearchVisibilityEnum_adminsOnly;

  static Serializer<UpdateGALSettingsRequestSearchVisibilityEnum> get serializer => _$updateGALSettingsRequestSearchVisibilityEnumSerializer;

  const UpdateGALSettingsRequestSearchVisibilityEnum._(String name): super(name);

  static BuiltSet<UpdateGALSettingsRequestSearchVisibilityEnum> get values => _$updateGALSettingsRequestSearchVisibilityEnumValues;
  static UpdateGALSettingsRequestSearchVisibilityEnum valueOf(String name) => _$updateGALSettingsRequestSearchVisibilityEnumValueOf(name);
}


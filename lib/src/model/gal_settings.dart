//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gal_settings.g.dart';

/// GALSettings
///
/// Properties:
/// * [tenantId] 
/// * [galEnabled] 
/// * [hideFromDirectory] 
/// * [departmentGrouping] 
/// * [searchVisibility] 
/// * [includeExternalContacts] 
/// * [lastIndexRebuiltAt] 
/// * [lastSyncedAt] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class GALSettings implements Built<GALSettings, GALSettingsBuilder> {
  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'gal_enabled')
  bool get galEnabled;

  @BuiltValueField(wireName: r'hide_from_directory')
  bool get hideFromDirectory;

  @BuiltValueField(wireName: r'department_grouping')
  bool get departmentGrouping;

  @BuiltValueField(wireName: r'search_visibility')
  GALSettingsSearchVisibilityEnum get searchVisibility;
  // enum searchVisibilityEnum {  all_users,  same_department,  admins_only,  };

  @BuiltValueField(wireName: r'include_external_contacts')
  bool get includeExternalContacts;

  @BuiltValueField(wireName: r'last_index_rebuilt_at')
  DateTime? get lastIndexRebuiltAt;

  @BuiltValueField(wireName: r'last_synced_at')
  DateTime? get lastSyncedAt;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  GALSettings._();

  factory GALSettings([void updates(GALSettingsBuilder b)]) = _$GALSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GALSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GALSettings> get serializer => _$GALSettingsSerializer();
}

class _$GALSettingsSerializer implements PrimitiveSerializer<GALSettings> {
  @override
  final Iterable<Type> types = const [GALSettings, _$GALSettings];

  @override
  final String wireName = r'GALSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GALSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'gal_enabled';
    yield serializers.serialize(
      object.galEnabled,
      specifiedType: const FullType(bool),
    );
    yield r'hide_from_directory';
    yield serializers.serialize(
      object.hideFromDirectory,
      specifiedType: const FullType(bool),
    );
    yield r'department_grouping';
    yield serializers.serialize(
      object.departmentGrouping,
      specifiedType: const FullType(bool),
    );
    yield r'search_visibility';
    yield serializers.serialize(
      object.searchVisibility,
      specifiedType: const FullType(GALSettingsSearchVisibilityEnum),
    );
    yield r'include_external_contacts';
    yield serializers.serialize(
      object.includeExternalContacts,
      specifiedType: const FullType(bool),
    );
    if (object.lastIndexRebuiltAt != null) {
      yield r'last_index_rebuilt_at';
      yield serializers.serialize(
        object.lastIndexRebuiltAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastSyncedAt != null) {
      yield r'last_synced_at';
      yield serializers.serialize(
        object.lastSyncedAt,
        specifiedType: const FullType(DateTime),
      );
    }
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
    GALSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GALSettingsBuilder result,
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
            specifiedType: const FullType(GALSettingsSearchVisibilityEnum),
          ) as GALSettingsSearchVisibilityEnum;
          result.searchVisibility = valueDes;
          break;
        case r'include_external_contacts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.includeExternalContacts = valueDes;
          break;
        case r'last_index_rebuilt_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastIndexRebuiltAt = valueDes;
          break;
        case r'last_synced_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastSyncedAt = valueDes;
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
  GALSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GALSettingsBuilder();
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

class GALSettingsSearchVisibilityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all_users')
  static const GALSettingsSearchVisibilityEnum allUsers = _$gALSettingsSearchVisibilityEnum_allUsers;
  @BuiltValueEnumConst(wireName: r'same_department')
  static const GALSettingsSearchVisibilityEnum sameDepartment = _$gALSettingsSearchVisibilityEnum_sameDepartment;
  @BuiltValueEnumConst(wireName: r'admins_only')
  static const GALSettingsSearchVisibilityEnum adminsOnly = _$gALSettingsSearchVisibilityEnum_adminsOnly;

  static Serializer<GALSettingsSearchVisibilityEnum> get serializer => _$gALSettingsSearchVisibilityEnumSerializer;

  const GALSettingsSearchVisibilityEnum._(String name): super(name);

  static BuiltSet<GALSettingsSearchVisibilityEnum> get values => _$gALSettingsSearchVisibilityEnumValues;
  static GALSettingsSearchVisibilityEnum valueOf(String name) => _$gALSettingsSearchVisibilityEnumValueOf(name);
}


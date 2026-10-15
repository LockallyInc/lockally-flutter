//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calendar.g.dart';

/// Calendar
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [name] 
/// * [color] 
/// * [ownerEmail] 
/// * [description] 
/// * [calendarType] - What the calendar is for. Separate from visibility, which is who may see it: a team calendar can be open to everyone and a department one restricted to named people. \"personal\" is a person's own and is not listed in the console's management table. 
/// * [ownerUnit] - The owning department or office. Empty on a personal calendar, which is owned by owner_email.
/// * [visibility] 
/// * [accessDepartment] - Which department may see it, when visibility is \"department\". Matched against the department recorded on a user, so access follows a person between departments with no membership list to maintain. 
/// * [status] - Archived keeps the calendar, its events and its feed, and stops it taking new events.
/// * [feedUrl] 
/// * [eventCount] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Calendar implements Built<Calendar, CalendarBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'owner_email')
  String? get ownerEmail;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// What the calendar is for. Separate from visibility, which is who may see it: a team calendar can be open to everyone and a department one restricted to named people. \"personal\" is a person's own and is not listed in the console's management table. 
  @BuiltValueField(wireName: r'calendar_type')
  CalendarCalendarTypeEnum? get calendarType;
  // enum calendarTypeEnum {  personal,  organization,  department,  team,  shared,  };

  /// The owning department or office. Empty on a personal calendar, which is owned by owner_email.
  @BuiltValueField(wireName: r'owner_unit')
  String? get ownerUnit;

  @BuiltValueField(wireName: r'visibility')
  CalendarVisibilityEnum get visibility;
  // enum visibilityEnum {  private,  tenant,  department,  };

  /// Which department may see it, when visibility is \"department\". Matched against the department recorded on a user, so access follows a person between departments with no membership list to maintain. 
  @BuiltValueField(wireName: r'access_department')
  String? get accessDepartment;

  /// Archived keeps the calendar, its events and its feed, and stops it taking new events.
  @BuiltValueField(wireName: r'status')
  CalendarStatusEnum? get status;
  // enum statusEnum {  active,  archived,  };

  @BuiltValueField(wireName: r'feed_url')
  String? get feedUrl;

  @BuiltValueField(wireName: r'event_count')
  int? get eventCount;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  Calendar._();

  factory Calendar([void updates(CalendarBuilder b)]) = _$Calendar;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CalendarBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Calendar> get serializer => _$CalendarSerializer();
}

class _$CalendarSerializer implements PrimitiveSerializer<Calendar> {
  @override
  final Iterable<Type> types = const [Calendar, _$Calendar];

  @override
  final String wireName = r'Calendar';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Calendar object, {
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
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerEmail != null) {
      yield r'owner_email';
      yield serializers.serialize(
        object.ownerEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.calendarType != null) {
      yield r'calendar_type';
      yield serializers.serialize(
        object.calendarType,
        specifiedType: const FullType(CalendarCalendarTypeEnum),
      );
    }
    if (object.ownerUnit != null) {
      yield r'owner_unit';
      yield serializers.serialize(
        object.ownerUnit,
        specifiedType: const FullType(String),
      );
    }
    yield r'visibility';
    yield serializers.serialize(
      object.visibility,
      specifiedType: const FullType(CalendarVisibilityEnum),
    );
    if (object.accessDepartment != null) {
      yield r'access_department';
      yield serializers.serialize(
        object.accessDepartment,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(CalendarStatusEnum),
      );
    }
    if (object.feedUrl != null) {
      yield r'feed_url';
      yield serializers.serialize(
        object.feedUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.eventCount != null) {
      yield r'event_count';
      yield serializers.serialize(
        object.eventCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Calendar object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CalendarBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        case r'owner_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerEmail = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'calendar_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CalendarCalendarTypeEnum),
          ) as CalendarCalendarTypeEnum;
          result.calendarType = valueDes;
          break;
        case r'owner_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerUnit = valueDes;
          break;
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CalendarVisibilityEnum),
          ) as CalendarVisibilityEnum;
          result.visibility = valueDes;
          break;
        case r'access_department':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessDepartment = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CalendarStatusEnum),
          ) as CalendarStatusEnum;
          result.status = valueDes;
          break;
        case r'feed_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.feedUrl = valueDes;
          break;
        case r'event_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.eventCount = valueDes;
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
  Calendar deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CalendarBuilder();
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

class CalendarCalendarTypeEnum extends EnumClass {

  /// What the calendar is for. Separate from visibility, which is who may see it: a team calendar can be open to everyone and a department one restricted to named people. \"personal\" is a person's own and is not listed in the console's management table. 
  @BuiltValueEnumConst(wireName: r'personal')
  static const CalendarCalendarTypeEnum personal = _$calendarCalendarTypeEnum_personal;
  /// What the calendar is for. Separate from visibility, which is who may see it: a team calendar can be open to everyone and a department one restricted to named people. \"personal\" is a person's own and is not listed in the console's management table. 
  @BuiltValueEnumConst(wireName: r'organization')
  static const CalendarCalendarTypeEnum organization = _$calendarCalendarTypeEnum_organization;
  /// What the calendar is for. Separate from visibility, which is who may see it: a team calendar can be open to everyone and a department one restricted to named people. \"personal\" is a person's own and is not listed in the console's management table. 
  @BuiltValueEnumConst(wireName: r'department')
  static const CalendarCalendarTypeEnum department = _$calendarCalendarTypeEnum_department;
  /// What the calendar is for. Separate from visibility, which is who may see it: a team calendar can be open to everyone and a department one restricted to named people. \"personal\" is a person's own and is not listed in the console's management table. 
  @BuiltValueEnumConst(wireName: r'team')
  static const CalendarCalendarTypeEnum team = _$calendarCalendarTypeEnum_team;
  /// What the calendar is for. Separate from visibility, which is who may see it: a team calendar can be open to everyone and a department one restricted to named people. \"personal\" is a person's own and is not listed in the console's management table. 
  @BuiltValueEnumConst(wireName: r'shared')
  static const CalendarCalendarTypeEnum shared = _$calendarCalendarTypeEnum_shared;

  static Serializer<CalendarCalendarTypeEnum> get serializer => _$calendarCalendarTypeEnumSerializer;

  const CalendarCalendarTypeEnum._(String name): super(name);

  static BuiltSet<CalendarCalendarTypeEnum> get values => _$calendarCalendarTypeEnumValues;
  static CalendarCalendarTypeEnum valueOf(String name) => _$calendarCalendarTypeEnumValueOf(name);
}

class CalendarVisibilityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'private')
  static const CalendarVisibilityEnum private = _$calendarVisibilityEnum_private;
  @BuiltValueEnumConst(wireName: r'tenant')
  static const CalendarVisibilityEnum tenant = _$calendarVisibilityEnum_tenant;
  @BuiltValueEnumConst(wireName: r'department')
  static const CalendarVisibilityEnum department = _$calendarVisibilityEnum_department;

  static Serializer<CalendarVisibilityEnum> get serializer => _$calendarVisibilityEnumSerializer;

  const CalendarVisibilityEnum._(String name): super(name);

  static BuiltSet<CalendarVisibilityEnum> get values => _$calendarVisibilityEnumValues;
  static CalendarVisibilityEnum valueOf(String name) => _$calendarVisibilityEnumValueOf(name);
}

class CalendarStatusEnum extends EnumClass {

  /// Archived keeps the calendar, its events and its feed, and stops it taking new events.
  @BuiltValueEnumConst(wireName: r'active')
  static const CalendarStatusEnum active = _$calendarStatusEnum_active;
  /// Archived keeps the calendar, its events and its feed, and stops it taking new events.
  @BuiltValueEnumConst(wireName: r'archived')
  static const CalendarStatusEnum archived = _$calendarStatusEnum_archived;

  static Serializer<CalendarStatusEnum> get serializer => _$calendarStatusEnumSerializer;

  const CalendarStatusEnum._(String name): super(name);

  static BuiltSet<CalendarStatusEnum> get values => _$calendarStatusEnumValues;
  static CalendarStatusEnum valueOf(String name) => _$calendarStatusEnumValueOf(name);
}


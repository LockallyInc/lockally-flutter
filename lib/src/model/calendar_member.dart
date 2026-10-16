//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calendar_member.g.dart';

/// CalendarMember
///
/// Properties:
/// * [id] 
/// * [calendarId] 
/// * [tenantId] 
/// * [userEmail] 
/// * [role] 
/// * [createdAt] 
@BuiltValue()
abstract class CalendarMember implements Built<CalendarMember, CalendarMemberBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'calendar_id')
  String get calendarId;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'user_email')
  String get userEmail;

  @BuiltValueField(wireName: r'role')
  CalendarMemberRoleEnum get role;
  // enum roleEnum {  viewer,  editor,  owner,  };

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  CalendarMember._();

  factory CalendarMember([void updates(CalendarMemberBuilder b)]) = _$CalendarMember;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CalendarMemberBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CalendarMember> get serializer => _$CalendarMemberSerializer();
}

class _$CalendarMemberSerializer implements PrimitiveSerializer<CalendarMember> {
  @override
  final Iterable<Type> types = const [CalendarMember, _$CalendarMember];

  @override
  final String wireName = r'CalendarMember';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CalendarMember object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'calendar_id';
    yield serializers.serialize(
      object.calendarId,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'user_email';
    yield serializers.serialize(
      object.userEmail,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(CalendarMemberRoleEnum),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CalendarMember object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CalendarMemberBuilder result,
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
        case r'calendar_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.calendarId = valueDes;
          break;
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'user_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userEmail = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CalendarMemberRoleEnum),
          ) as CalendarMemberRoleEnum;
          result.role = valueDes;
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
  CalendarMember deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CalendarMemberBuilder();
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

class CalendarMemberRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'viewer')
  static const CalendarMemberRoleEnum viewer = _$calendarMemberRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'editor')
  static const CalendarMemberRoleEnum editor = _$calendarMemberRoleEnum_editor;
  @BuiltValueEnumConst(wireName: r'owner')
  static const CalendarMemberRoleEnum owner = _$calendarMemberRoleEnum_owner;

  static Serializer<CalendarMemberRoleEnum> get serializer => _$calendarMemberRoleEnumSerializer;

  const CalendarMemberRoleEnum._(String name): super(name);

  static BuiltSet<CalendarMemberRoleEnum> get values => _$calendarMemberRoleEnumValues;
  static CalendarMemberRoleEnum valueOf(String name) => _$calendarMemberRoleEnumValueOf(name);
}


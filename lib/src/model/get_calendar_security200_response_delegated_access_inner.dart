//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_calendar_security200_response_delegated_access_inner.g.dart';

/// GetCalendarSecurity200ResponseDelegatedAccessInner
///
/// Properties:
/// * [calendarId] 
/// * [calendarName] 
/// * [userEmail] 
/// * [role] 
/// * [grantedAt] 
@BuiltValue()
abstract class GetCalendarSecurity200ResponseDelegatedAccessInner implements Built<GetCalendarSecurity200ResponseDelegatedAccessInner, GetCalendarSecurity200ResponseDelegatedAccessInnerBuilder> {
  @BuiltValueField(wireName: r'calendar_id')
  String? get calendarId;

  @BuiltValueField(wireName: r'calendar_name')
  String? get calendarName;

  @BuiltValueField(wireName: r'user_email')
  String? get userEmail;

  @BuiltValueField(wireName: r'role')
  String? get role;

  @BuiltValueField(wireName: r'granted_at')
  DateTime? get grantedAt;

  GetCalendarSecurity200ResponseDelegatedAccessInner._();

  factory GetCalendarSecurity200ResponseDelegatedAccessInner([void updates(GetCalendarSecurity200ResponseDelegatedAccessInnerBuilder b)]) = _$GetCalendarSecurity200ResponseDelegatedAccessInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCalendarSecurity200ResponseDelegatedAccessInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCalendarSecurity200ResponseDelegatedAccessInner> get serializer => _$GetCalendarSecurity200ResponseDelegatedAccessInnerSerializer();
}

class _$GetCalendarSecurity200ResponseDelegatedAccessInnerSerializer implements PrimitiveSerializer<GetCalendarSecurity200ResponseDelegatedAccessInner> {
  @override
  final Iterable<Type> types = const [GetCalendarSecurity200ResponseDelegatedAccessInner, _$GetCalendarSecurity200ResponseDelegatedAccessInner];

  @override
  final String wireName = r'GetCalendarSecurity200ResponseDelegatedAccessInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCalendarSecurity200ResponseDelegatedAccessInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.calendarId != null) {
      yield r'calendar_id';
      yield serializers.serialize(
        object.calendarId,
        specifiedType: const FullType(String),
      );
    }
    if (object.calendarName != null) {
      yield r'calendar_name';
      yield serializers.serialize(
        object.calendarName,
        specifiedType: const FullType(String),
      );
    }
    if (object.userEmail != null) {
      yield r'user_email';
      yield serializers.serialize(
        object.userEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(String),
      );
    }
    if (object.grantedAt != null) {
      yield r'granted_at';
      yield serializers.serialize(
        object.grantedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCalendarSecurity200ResponseDelegatedAccessInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCalendarSecurity200ResponseDelegatedAccessInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'calendar_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.calendarId = valueDes;
          break;
        case r'calendar_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.calendarName = valueDes;
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
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        case r'granted_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.grantedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCalendarSecurity200ResponseDelegatedAccessInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCalendarSecurity200ResponseDelegatedAccessInnerBuilder();
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


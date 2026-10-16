//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_event.g.dart';

/// UserEvent
///
/// Properties:
/// * [email] 
/// * [eventAt] 
/// * [daysInactive] 
@BuiltValue()
abstract class UserEvent implements Built<UserEvent, UserEventBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'event_at')
  DateTime? get eventAt;

  @BuiltValueField(wireName: r'days_inactive')
  int? get daysInactive;

  UserEvent._();

  factory UserEvent([void updates(UserEventBuilder b)]) = _$UserEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserEvent> get serializer => _$UserEventSerializer();
}

class _$UserEventSerializer implements PrimitiveSerializer<UserEvent> {
  @override
  final Iterable<Type> types = const [UserEvent, _$UserEvent];

  @override
  final String wireName = r'UserEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.eventAt != null) {
      yield r'event_at';
      yield serializers.serialize(
        object.eventAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.daysInactive != null) {
      yield r'days_inactive';
      yield serializers.serialize(
        object.daysInactive,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserEventBuilder result,
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
        case r'event_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.eventAt = valueDes;
          break;
        case r'days_inactive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.daysInactive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserEventBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_event.g.dart';

/// AuditEvent
///
/// Properties:
/// * [email] 
/// * [eventType] 
/// * [detail] 
/// * [ip] 
/// * [time] 
@BuiltValue()
abstract class AuditEvent implements Built<AuditEvent, AuditEventBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'event_type')
  String? get eventType;

  @BuiltValueField(wireName: r'detail')
  String? get detail;

  @BuiltValueField(wireName: r'ip')
  String? get ip;

  @BuiltValueField(wireName: r'time')
  DateTime? get time;

  AuditEvent._();

  factory AuditEvent([void updates(AuditEventBuilder b)]) = _$AuditEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuditEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuditEvent> get serializer => _$AuditEventSerializer();
}

class _$AuditEventSerializer implements PrimitiveSerializer<AuditEvent> {
  @override
  final Iterable<Type> types = const [AuditEvent, _$AuditEvent];

  @override
  final String wireName = r'AuditEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuditEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.eventType != null) {
      yield r'event_type';
      yield serializers.serialize(
        object.eventType,
        specifiedType: const FullType(String),
      );
    }
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType(String),
      );
    }
    if (object.ip != null) {
      yield r'ip';
      yield serializers.serialize(
        object.ip,
        specifiedType: const FullType(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuditEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuditEventBuilder result,
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
        case r'event_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventType = valueDes;
          break;
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detail = valueDes;
          break;
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ip = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuditEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuditEventBuilder();
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


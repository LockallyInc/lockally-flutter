//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'migration_event.g.dart';

/// MigrationEvent
///
/// Properties:
/// * [id] 
/// * [migrationId] 
/// * [tenantId] 
/// * [mailboxId] 
/// * [eventType] 
/// * [actor] 
/// * [oldStatus] 
/// * [newStatus] 
/// * [detail] 
/// * [createdAt] 
@BuiltValue()
abstract class MigrationEvent implements Built<MigrationEvent, MigrationEventBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'migration_id')
  String get migrationId;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'mailbox_id')
  String? get mailboxId;

  @BuiltValueField(wireName: r'event_type')
  String get eventType;

  @BuiltValueField(wireName: r'actor')
  String get actor;

  @BuiltValueField(wireName: r'old_status')
  String? get oldStatus;

  @BuiltValueField(wireName: r'new_status')
  String? get newStatus;

  @BuiltValueField(wireName: r'detail')
  String? get detail;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  MigrationEvent._();

  factory MigrationEvent([void updates(MigrationEventBuilder b)]) = _$MigrationEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MigrationEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MigrationEvent> get serializer => _$MigrationEventSerializer();
}

class _$MigrationEventSerializer implements PrimitiveSerializer<MigrationEvent> {
  @override
  final Iterable<Type> types = const [MigrationEvent, _$MigrationEvent];

  @override
  final String wireName = r'MigrationEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MigrationEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'migration_id';
    yield serializers.serialize(
      object.migrationId,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    if (object.mailboxId != null) {
      yield r'mailbox_id';
      yield serializers.serialize(
        object.mailboxId,
        specifiedType: const FullType(String),
      );
    }
    yield r'event_type';
    yield serializers.serialize(
      object.eventType,
      specifiedType: const FullType(String),
    );
    yield r'actor';
    yield serializers.serialize(
      object.actor,
      specifiedType: const FullType(String),
    );
    if (object.oldStatus != null) {
      yield r'old_status';
      yield serializers.serialize(
        object.oldStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.newStatus != null) {
      yield r'new_status';
      yield serializers.serialize(
        object.newStatus,
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
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MigrationEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MigrationEventBuilder result,
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
        case r'migration_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.migrationId = valueDes;
          break;
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'mailbox_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailboxId = valueDes;
          break;
        case r'event_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventType = valueDes;
          break;
        case r'actor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.actor = valueDes;
          break;
        case r'old_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.oldStatus = valueDes;
          break;
        case r'new_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newStatus = valueDes;
          break;
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detail = valueDes;
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
  MigrationEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MigrationEventBuilder();
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


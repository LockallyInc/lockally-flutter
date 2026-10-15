//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'migration_mailbox.g.dart';

/// MigrationMailbox
///
/// Properties:
/// * [id] 
/// * [migrationId] 
/// * [tenantId] 
/// * [sourceEmail] 
/// * [destEmail] 
/// * [destMailboxId] 
/// * [status] 
/// * [sourceMessageCount] 
/// * [syncedMessageCount] 
/// * [failedMessageCount] 
/// * [sourceSizeBytes] 
/// * [syncedSizeBytes] 
/// * [lastSyncedUid] 
/// * [lastSyncedAt] 
/// * [errorMessage] 
/// * [startedAt] 
/// * [completedAt] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class MigrationMailbox implements Built<MigrationMailbox, MigrationMailboxBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'migration_id')
  String get migrationId;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'source_email')
  String get sourceEmail;

  @BuiltValueField(wireName: r'dest_email')
  String? get destEmail;

  @BuiltValueField(wireName: r'dest_mailbox_id')
  String? get destMailboxId;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'source_message_count')
  int? get sourceMessageCount;

  @BuiltValueField(wireName: r'synced_message_count')
  int get syncedMessageCount;

  @BuiltValueField(wireName: r'failed_message_count')
  int get failedMessageCount;

  @BuiltValueField(wireName: r'source_size_bytes')
  int? get sourceSizeBytes;

  @BuiltValueField(wireName: r'synced_size_bytes')
  int? get syncedSizeBytes;

  @BuiltValueField(wireName: r'last_synced_uid')
  String? get lastSyncedUid;

  @BuiltValueField(wireName: r'last_synced_at')
  DateTime? get lastSyncedAt;

  @BuiltValueField(wireName: r'error_message')
  String? get errorMessage;

  @BuiltValueField(wireName: r'started_at')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'completed_at')
  DateTime? get completedAt;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  MigrationMailbox._();

  factory MigrationMailbox([void updates(MigrationMailboxBuilder b)]) = _$MigrationMailbox;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MigrationMailboxBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MigrationMailbox> get serializer => _$MigrationMailboxSerializer();
}

class _$MigrationMailboxSerializer implements PrimitiveSerializer<MigrationMailbox> {
  @override
  final Iterable<Type> types = const [MigrationMailbox, _$MigrationMailbox];

  @override
  final String wireName = r'MigrationMailbox';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MigrationMailbox object, {
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
    yield r'source_email';
    yield serializers.serialize(
      object.sourceEmail,
      specifiedType: const FullType(String),
    );
    if (object.destEmail != null) {
      yield r'dest_email';
      yield serializers.serialize(
        object.destEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.destMailboxId != null) {
      yield r'dest_mailbox_id';
      yield serializers.serialize(
        object.destMailboxId,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    if (object.sourceMessageCount != null) {
      yield r'source_message_count';
      yield serializers.serialize(
        object.sourceMessageCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'synced_message_count';
    yield serializers.serialize(
      object.syncedMessageCount,
      specifiedType: const FullType(int),
    );
    yield r'failed_message_count';
    yield serializers.serialize(
      object.failedMessageCount,
      specifiedType: const FullType(int),
    );
    if (object.sourceSizeBytes != null) {
      yield r'source_size_bytes';
      yield serializers.serialize(
        object.sourceSizeBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.syncedSizeBytes != null) {
      yield r'synced_size_bytes';
      yield serializers.serialize(
        object.syncedSizeBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastSyncedUid != null) {
      yield r'last_synced_uid';
      yield serializers.serialize(
        object.lastSyncedUid,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastSyncedAt != null) {
      yield r'last_synced_at';
      yield serializers.serialize(
        object.lastSyncedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.errorMessage != null) {
      yield r'error_message';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType(String),
      );
    }
    if (object.startedAt != null) {
      yield r'started_at';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.completedAt != null) {
      yield r'completed_at';
      yield serializers.serialize(
        object.completedAt,
        specifiedType: const FullType(DateTime),
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
    MigrationMailbox object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MigrationMailboxBuilder result,
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
        case r'source_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceEmail = valueDes;
          break;
        case r'dest_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destEmail = valueDes;
          break;
        case r'dest_mailbox_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destMailboxId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'source_message_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sourceMessageCount = valueDes;
          break;
        case r'synced_message_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.syncedMessageCount = valueDes;
          break;
        case r'failed_message_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failedMessageCount = valueDes;
          break;
        case r'source_size_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sourceSizeBytes = valueDes;
          break;
        case r'synced_size_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.syncedSizeBytes = valueDes;
          break;
        case r'last_synced_uid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastSyncedUid = valueDes;
          break;
        case r'last_synced_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastSyncedAt = valueDes;
          break;
        case r'error_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        case r'started_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startedAt = valueDes;
          break;
        case r'completed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.completedAt = valueDes;
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
  MigrationMailbox deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MigrationMailboxBuilder();
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


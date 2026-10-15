//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/migration_progress_mailboxes_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'migration_progress.g.dart';

/// MigrationProgress
///
/// Properties:
/// * [migrationId] 
/// * [status] 
/// * [totalMailboxes] 
/// * [completedMailboxes] 
/// * [failedMailboxes] 
/// * [totalMessages] 
/// * [syncedMessages] 
/// * [failedMessages] 
/// * [percentComplete] 
/// * [mailboxes] 
@BuiltValue()
abstract class MigrationProgress implements Built<MigrationProgress, MigrationProgressBuilder> {
  @BuiltValueField(wireName: r'migration_id')
  String get migrationId;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'total_mailboxes')
  int get totalMailboxes;

  @BuiltValueField(wireName: r'completed_mailboxes')
  int get completedMailboxes;

  @BuiltValueField(wireName: r'failed_mailboxes')
  int get failedMailboxes;

  @BuiltValueField(wireName: r'total_messages')
  int get totalMessages;

  @BuiltValueField(wireName: r'synced_messages')
  int get syncedMessages;

  @BuiltValueField(wireName: r'failed_messages')
  int get failedMessages;

  @BuiltValueField(wireName: r'percent_complete')
  num get percentComplete;

  @BuiltValueField(wireName: r'mailboxes')
  BuiltList<MigrationProgressMailboxesInner> get mailboxes;

  MigrationProgress._();

  factory MigrationProgress([void updates(MigrationProgressBuilder b)]) = _$MigrationProgress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MigrationProgressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MigrationProgress> get serializer => _$MigrationProgressSerializer();
}

class _$MigrationProgressSerializer implements PrimitiveSerializer<MigrationProgress> {
  @override
  final Iterable<Type> types = const [MigrationProgress, _$MigrationProgress];

  @override
  final String wireName = r'MigrationProgress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MigrationProgress object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'migration_id';
    yield serializers.serialize(
      object.migrationId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'total_mailboxes';
    yield serializers.serialize(
      object.totalMailboxes,
      specifiedType: const FullType(int),
    );
    yield r'completed_mailboxes';
    yield serializers.serialize(
      object.completedMailboxes,
      specifiedType: const FullType(int),
    );
    yield r'failed_mailboxes';
    yield serializers.serialize(
      object.failedMailboxes,
      specifiedType: const FullType(int),
    );
    yield r'total_messages';
    yield serializers.serialize(
      object.totalMessages,
      specifiedType: const FullType(int),
    );
    yield r'synced_messages';
    yield serializers.serialize(
      object.syncedMessages,
      specifiedType: const FullType(int),
    );
    yield r'failed_messages';
    yield serializers.serialize(
      object.failedMessages,
      specifiedType: const FullType(int),
    );
    yield r'percent_complete';
    yield serializers.serialize(
      object.percentComplete,
      specifiedType: const FullType(num),
    );
    yield r'mailboxes';
    yield serializers.serialize(
      object.mailboxes,
      specifiedType: const FullType(BuiltList, [FullType(MigrationProgressMailboxesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MigrationProgress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MigrationProgressBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'migration_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.migrationId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'total_mailboxes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalMailboxes = valueDes;
          break;
        case r'completed_mailboxes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.completedMailboxes = valueDes;
          break;
        case r'failed_mailboxes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failedMailboxes = valueDes;
          break;
        case r'total_messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalMessages = valueDes;
          break;
        case r'synced_messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.syncedMessages = valueDes;
          break;
        case r'failed_messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failedMessages = valueDes;
          break;
        case r'percent_complete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.percentComplete = valueDes;
          break;
        case r'mailboxes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MigrationProgressMailboxesInner)]),
          ) as BuiltList<MigrationProgressMailboxesInner>;
          result.mailboxes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MigrationProgress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MigrationProgressBuilder();
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


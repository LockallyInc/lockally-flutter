//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/migration_settings.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'migration.g.dart';

/// Migration
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [credentialId] 
/// * [name] 
/// * [status] 
/// * [sourceProvider] 
/// * [sourceSummary] 
/// * [settings] 
/// * [errorMessage] 
/// * [startedAt] 
/// * [completedAt] 
/// * [mailboxCount] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Migration implements Built<Migration, MigrationBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'credential_id')
  String get credentialId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'status')
  MigrationStatusEnum get status;
  // enum statusEnum {  draft,  discovering,  discovered,  mapped,  pilot_running,  pilot_complete,  running,  staged,  cutover_pending,  final_syncing,  validating,  completed,  failed,  cancelled,  };

  @BuiltValueField(wireName: r'source_provider')
  String get sourceProvider;

  @BuiltValueField(wireName: r'source_summary')
  String? get sourceSummary;

  @BuiltValueField(wireName: r'settings')
  MigrationSettings? get settings;

  @BuiltValueField(wireName: r'error_message')
  String? get errorMessage;

  @BuiltValueField(wireName: r'started_at')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'completed_at')
  DateTime? get completedAt;

  @BuiltValueField(wireName: r'mailbox_count')
  int get mailboxCount;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  Migration._();

  factory Migration([void updates(MigrationBuilder b)]) = _$Migration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MigrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Migration> get serializer => _$MigrationSerializer();
}

class _$MigrationSerializer implements PrimitiveSerializer<Migration> {
  @override
  final Iterable<Type> types = const [Migration, _$Migration];

  @override
  final String wireName = r'Migration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Migration object, {
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
    yield r'credential_id';
    yield serializers.serialize(
      object.credentialId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(MigrationStatusEnum),
    );
    yield r'source_provider';
    yield serializers.serialize(
      object.sourceProvider,
      specifiedType: const FullType(String),
    );
    if (object.sourceSummary != null) {
      yield r'source_summary';
      yield serializers.serialize(
        object.sourceSummary,
        specifiedType: const FullType(String),
      );
    }
    if (object.settings != null) {
      yield r'settings';
      yield serializers.serialize(
        object.settings,
        specifiedType: const FullType(MigrationSettings),
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
    yield r'mailbox_count';
    yield serializers.serialize(
      object.mailboxCount,
      specifiedType: const FullType(int),
    );
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
    Migration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MigrationBuilder result,
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
        case r'credential_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MigrationStatusEnum),
          ) as MigrationStatusEnum;
          result.status = valueDes;
          break;
        case r'source_provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceProvider = valueDes;
          break;
        case r'source_summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceSummary = valueDes;
          break;
        case r'settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MigrationSettings),
          ) as MigrationSettings;
          result.settings.replace(valueDes);
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
        case r'mailbox_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mailboxCount = valueDes;
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
  Migration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MigrationBuilder();
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

class MigrationStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'draft')
  static const MigrationStatusEnum draft = _$migrationStatusEnum_draft;
  @BuiltValueEnumConst(wireName: r'discovering')
  static const MigrationStatusEnum discovering = _$migrationStatusEnum_discovering;
  @BuiltValueEnumConst(wireName: r'discovered')
  static const MigrationStatusEnum discovered = _$migrationStatusEnum_discovered;
  @BuiltValueEnumConst(wireName: r'mapped')
  static const MigrationStatusEnum mapped = _$migrationStatusEnum_mapped;
  @BuiltValueEnumConst(wireName: r'pilot_running')
  static const MigrationStatusEnum pilotRunning = _$migrationStatusEnum_pilotRunning;
  @BuiltValueEnumConst(wireName: r'pilot_complete')
  static const MigrationStatusEnum pilotComplete = _$migrationStatusEnum_pilotComplete;
  @BuiltValueEnumConst(wireName: r'running')
  static const MigrationStatusEnum running = _$migrationStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'staged')
  static const MigrationStatusEnum staged = _$migrationStatusEnum_staged;
  @BuiltValueEnumConst(wireName: r'cutover_pending')
  static const MigrationStatusEnum cutoverPending = _$migrationStatusEnum_cutoverPending;
  @BuiltValueEnumConst(wireName: r'final_syncing')
  static const MigrationStatusEnum finalSyncing = _$migrationStatusEnum_finalSyncing;
  @BuiltValueEnumConst(wireName: r'validating')
  static const MigrationStatusEnum validating = _$migrationStatusEnum_validating;
  @BuiltValueEnumConst(wireName: r'completed')
  static const MigrationStatusEnum completed = _$migrationStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const MigrationStatusEnum failed = _$migrationStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const MigrationStatusEnum cancelled = _$migrationStatusEnum_cancelled;

  static Serializer<MigrationStatusEnum> get serializer => _$migrationStatusEnumSerializer;

  const MigrationStatusEnum._(String name): super(name);

  static BuiltSet<MigrationStatusEnum> get values => _$migrationStatusEnumValues;
  static MigrationStatusEnum valueOf(String name) => _$migrationStatusEnumValueOf(name);
}


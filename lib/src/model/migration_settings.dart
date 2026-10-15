//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'migration_settings.g.dart';

/// MigrationSettings
///
/// Properties:
/// * [maxConcurrentMailboxes] 
/// * [maxConcurrentMessages] 
/// * [sourceRateLimit] 
/// * [batchSize] 
/// * [skipFolders] 
@BuiltValue()
abstract class MigrationSettings implements Built<MigrationSettings, MigrationSettingsBuilder> {
  @BuiltValueField(wireName: r'max_concurrent_mailboxes')
  int? get maxConcurrentMailboxes;

  @BuiltValueField(wireName: r'max_concurrent_messages')
  int? get maxConcurrentMessages;

  @BuiltValueField(wireName: r'source_rate_limit')
  int? get sourceRateLimit;

  @BuiltValueField(wireName: r'batch_size')
  int? get batchSize;

  @BuiltValueField(wireName: r'skip_folders')
  BuiltList<String>? get skipFolders;

  MigrationSettings._();

  factory MigrationSettings([void updates(MigrationSettingsBuilder b)]) = _$MigrationSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MigrationSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MigrationSettings> get serializer => _$MigrationSettingsSerializer();
}

class _$MigrationSettingsSerializer implements PrimitiveSerializer<MigrationSettings> {
  @override
  final Iterable<Type> types = const [MigrationSettings, _$MigrationSettings];

  @override
  final String wireName = r'MigrationSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MigrationSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxConcurrentMailboxes != null) {
      yield r'max_concurrent_mailboxes';
      yield serializers.serialize(
        object.maxConcurrentMailboxes,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxConcurrentMessages != null) {
      yield r'max_concurrent_messages';
      yield serializers.serialize(
        object.maxConcurrentMessages,
        specifiedType: const FullType(int),
      );
    }
    if (object.sourceRateLimit != null) {
      yield r'source_rate_limit';
      yield serializers.serialize(
        object.sourceRateLimit,
        specifiedType: const FullType(int),
      );
    }
    if (object.batchSize != null) {
      yield r'batch_size';
      yield serializers.serialize(
        object.batchSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.skipFolders != null) {
      yield r'skip_folders';
      yield serializers.serialize(
        object.skipFolders,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MigrationSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MigrationSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'max_concurrent_mailboxes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxConcurrentMailboxes = valueDes;
          break;
        case r'max_concurrent_messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxConcurrentMessages = valueDes;
          break;
        case r'source_rate_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sourceRateLimit = valueDes;
          break;
        case r'batch_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.batchSize = valueDes;
          break;
        case r'skip_folders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.skipFolders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MigrationSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MigrationSettingsBuilder();
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


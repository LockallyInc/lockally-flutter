//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'migration_progress_mailboxes_inner.g.dart';

/// MigrationProgressMailboxesInner
///
/// Properties:
/// * [sourceEmail] 
/// * [destEmail] 
/// * [status] 
/// * [sourceMessageCount] 
/// * [syncedMessageCount] 
/// * [failedMessageCount] 
/// * [percentComplete] 
@BuiltValue()
abstract class MigrationProgressMailboxesInner implements Built<MigrationProgressMailboxesInner, MigrationProgressMailboxesInnerBuilder> {
  @BuiltValueField(wireName: r'source_email')
  String get sourceEmail;

  @BuiltValueField(wireName: r'dest_email')
  String? get destEmail;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'source_message_count')
  int? get sourceMessageCount;

  @BuiltValueField(wireName: r'synced_message_count')
  int get syncedMessageCount;

  @BuiltValueField(wireName: r'failed_message_count')
  int get failedMessageCount;

  @BuiltValueField(wireName: r'percent_complete')
  num get percentComplete;

  MigrationProgressMailboxesInner._();

  factory MigrationProgressMailboxesInner([void updates(MigrationProgressMailboxesInnerBuilder b)]) = _$MigrationProgressMailboxesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MigrationProgressMailboxesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MigrationProgressMailboxesInner> get serializer => _$MigrationProgressMailboxesInnerSerializer();
}

class _$MigrationProgressMailboxesInnerSerializer implements PrimitiveSerializer<MigrationProgressMailboxesInner> {
  @override
  final Iterable<Type> types = const [MigrationProgressMailboxesInner, _$MigrationProgressMailboxesInner];

  @override
  final String wireName = r'MigrationProgressMailboxesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MigrationProgressMailboxesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'percent_complete';
    yield serializers.serialize(
      object.percentComplete,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MigrationProgressMailboxesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MigrationProgressMailboxesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'percent_complete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.percentComplete = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MigrationProgressMailboxesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MigrationProgressMailboxesInnerBuilder();
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


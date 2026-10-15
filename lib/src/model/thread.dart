//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/thread_summary.dart';
import 'package:lockally/src/model/thread_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread.g.dart';

/// Thread
///
/// Properties:
/// * [thread] 
/// * [mailbox] 
/// * [messages] - Chronological. Reading never marks a message read.
@BuiltValue()
abstract class Thread implements Built<Thread, ThreadBuilder> {
  @BuiltValueField(wireName: r'thread')
  ThreadSummary get thread;

  @BuiltValueField(wireName: r'mailbox')
  String get mailbox;

  /// Chronological. Reading never marks a message read.
  @BuiltValueField(wireName: r'messages')
  BuiltList<ThreadMessage> get messages;

  Thread._();

  factory Thread([void updates(ThreadBuilder b)]) = _$Thread;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThreadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Thread> get serializer => _$ThreadSerializer();
}

class _$ThreadSerializer implements PrimitiveSerializer<Thread> {
  @override
  final Iterable<Type> types = const [Thread, _$Thread];

  @override
  final String wireName = r'Thread';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Thread object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'thread';
    yield serializers.serialize(
      object.thread,
      specifiedType: const FullType(ThreadSummary),
    );
    yield r'mailbox';
    yield serializers.serialize(
      object.mailbox,
      specifiedType: const FullType(String),
    );
    yield r'messages';
    yield serializers.serialize(
      object.messages,
      specifiedType: const FullType(BuiltList, [FullType(ThreadMessage)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Thread object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThreadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'thread':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ThreadSummary),
          ) as ThreadSummary;
          result.thread.replace(valueDes);
          break;
        case r'mailbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailbox = valueDes;
          break;
        case r'messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ThreadMessage)]),
          ) as BuiltList<ThreadMessage>;
          result.messages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Thread deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThreadBuilder();
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


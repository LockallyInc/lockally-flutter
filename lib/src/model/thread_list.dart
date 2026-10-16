//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/thread_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread_list.g.dart';

/// ThreadList
///
/// Properties:
/// * [mailbox] 
/// * [threads] 
@BuiltValue()
abstract class ThreadList implements Built<ThreadList, ThreadListBuilder> {
  @BuiltValueField(wireName: r'mailbox')
  String get mailbox;

  @BuiltValueField(wireName: r'threads')
  BuiltList<ThreadSummary> get threads;

  ThreadList._();

  factory ThreadList([void updates(ThreadListBuilder b)]) = _$ThreadList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThreadListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThreadList> get serializer => _$ThreadListSerializer();
}

class _$ThreadListSerializer implements PrimitiveSerializer<ThreadList> {
  @override
  final Iterable<Type> types = const [ThreadList, _$ThreadList];

  @override
  final String wireName = r'ThreadList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThreadList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mailbox';
    yield serializers.serialize(
      object.mailbox,
      specifiedType: const FullType(String),
    );
    yield r'threads';
    yield serializers.serialize(
      object.threads,
      specifiedType: const FullType(BuiltList, [FullType(ThreadSummary)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ThreadList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThreadListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mailbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailbox = valueDes;
          break;
        case r'threads':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ThreadSummary)]),
          ) as BuiltList<ThreadSummary>;
          result.threads.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThreadList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThreadListBuilder();
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


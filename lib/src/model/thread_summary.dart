//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread_summary.g.dart';

/// ThreadSummary
///
/// Properties:
/// * [id] 
/// * [subject] 
/// * [participants] 
/// * [messageCount] 
/// * [lastMessageAt] 
/// * [lastDirection] 
@BuiltValue()
abstract class ThreadSummary implements Built<ThreadSummary, ThreadSummaryBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'subject')
  String? get subject;

  @BuiltValueField(wireName: r'participants')
  BuiltList<String> get participants;

  @BuiltValueField(wireName: r'message_count')
  int get messageCount;

  @BuiltValueField(wireName: r'last_message_at')
  DateTime? get lastMessageAt;

  @BuiltValueField(wireName: r'last_direction')
  ThreadSummaryLastDirectionEnum? get lastDirection;
  // enum lastDirectionEnum {  inbound,  outbound,  ,  };

  ThreadSummary._();

  factory ThreadSummary([void updates(ThreadSummaryBuilder b)]) = _$ThreadSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThreadSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThreadSummary> get serializer => _$ThreadSummarySerializer();
}

class _$ThreadSummarySerializer implements PrimitiveSerializer<ThreadSummary> {
  @override
  final Iterable<Type> types = const [ThreadSummary, _$ThreadSummary];

  @override
  final String wireName = r'ThreadSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThreadSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
    yield r'participants';
    yield serializers.serialize(
      object.participants,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'message_count';
    yield serializers.serialize(
      object.messageCount,
      specifiedType: const FullType(int),
    );
    if (object.lastMessageAt != null) {
      yield r'last_message_at';
      yield serializers.serialize(
        object.lastMessageAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastDirection != null) {
      yield r'last_direction';
      yield serializers.serialize(
        object.lastDirection,
        specifiedType: const FullType.nullable(ThreadSummaryLastDirectionEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ThreadSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThreadSummaryBuilder result,
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
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'participants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.participants.replace(valueDes);
          break;
        case r'message_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.messageCount = valueDes;
          break;
        case r'last_message_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastMessageAt = valueDes;
          break;
        case r'last_direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ThreadSummaryLastDirectionEnum),
          ) as ThreadSummaryLastDirectionEnum?;
          if (valueDes == null) continue;
          result.lastDirection = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThreadSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThreadSummaryBuilder();
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

class ThreadSummaryLastDirectionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'inbound')
  static const ThreadSummaryLastDirectionEnum inbound = _$threadSummaryLastDirectionEnum_inbound;
  @BuiltValueEnumConst(wireName: r'outbound')
  static const ThreadSummaryLastDirectionEnum outbound = _$threadSummaryLastDirectionEnum_outbound;

  static Serializer<ThreadSummaryLastDirectionEnum> get serializer => _$threadSummaryLastDirectionEnumSerializer;

  const ThreadSummaryLastDirectionEnum._(String name): super(name);

  static BuiltSet<ThreadSummaryLastDirectionEnum> get values => _$threadSummaryLastDirectionEnumValues;
  static ThreadSummaryLastDirectionEnum valueOf(String name) => _$threadSummaryLastDirectionEnumValueOf(name);
}


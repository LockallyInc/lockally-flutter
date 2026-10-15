//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inbox.g.dart';

/// Inbox
///
/// Properties:
/// * [id] 
/// * [email] 
/// * [lastMessageAt] 
/// * [threadCount] 
@BuiltValue()
abstract class Inbox implements Built<Inbox, InboxBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'last_message_at')
  DateTime? get lastMessageAt;

  @BuiltValueField(wireName: r'thread_count')
  int get threadCount;

  Inbox._();

  factory Inbox([void updates(InboxBuilder b)]) = _$Inbox;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InboxBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Inbox> get serializer => _$InboxSerializer();
}

class _$InboxSerializer implements PrimitiveSerializer<Inbox> {
  @override
  final Iterable<Type> types = const [Inbox, _$Inbox];

  @override
  final String wireName = r'Inbox';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Inbox object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.lastMessageAt != null) {
      yield r'last_message_at';
      yield serializers.serialize(
        object.lastMessageAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'thread_count';
    yield serializers.serialize(
      object.threadCount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Inbox object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InboxBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'last_message_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastMessageAt = valueDes;
          break;
        case r'thread_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.threadCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Inbox deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InboxBuilder();
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


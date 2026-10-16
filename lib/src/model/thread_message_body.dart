//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/thread_message.dart';
import 'package:lockally/src/model/thread_message_body_body.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread_message_body.g.dart';

/// ThreadMessageBody
///
/// Properties:
/// * [threadId] 
/// * [mailbox] 
/// * [message] 
/// * [body] 
/// * [bodyUnavailable] - Present instead of body when the message could not be located in the mailbox.
@BuiltValue()
abstract class ThreadMessageBody implements Built<ThreadMessageBody, ThreadMessageBodyBuilder> {
  @BuiltValueField(wireName: r'thread_id')
  String get threadId;

  @BuiltValueField(wireName: r'mailbox')
  String get mailbox;

  @BuiltValueField(wireName: r'message')
  ThreadMessage get message;

  @BuiltValueField(wireName: r'body')
  ThreadMessageBodyBody? get body;

  /// Present instead of body when the message could not be located in the mailbox.
  @BuiltValueField(wireName: r'body_unavailable')
  String? get bodyUnavailable;

  ThreadMessageBody._();

  factory ThreadMessageBody([void updates(ThreadMessageBodyBuilder b)]) = _$ThreadMessageBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThreadMessageBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThreadMessageBody> get serializer => _$ThreadMessageBodySerializer();
}

class _$ThreadMessageBodySerializer implements PrimitiveSerializer<ThreadMessageBody> {
  @override
  final Iterable<Type> types = const [ThreadMessageBody, _$ThreadMessageBody];

  @override
  final String wireName = r'ThreadMessageBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThreadMessageBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'thread_id';
    yield serializers.serialize(
      object.threadId,
      specifiedType: const FullType(String),
    );
    yield r'mailbox';
    yield serializers.serialize(
      object.mailbox,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(ThreadMessage),
    );
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(ThreadMessageBodyBody),
      );
    }
    if (object.bodyUnavailable != null) {
      yield r'body_unavailable';
      yield serializers.serialize(
        object.bodyUnavailable,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ThreadMessageBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThreadMessageBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'thread_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.threadId = valueDes;
          break;
        case r'mailbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailbox = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ThreadMessage),
          ) as ThreadMessage;
          result.message.replace(valueDes);
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ThreadMessageBodyBody),
          ) as ThreadMessageBodyBody;
          result.body.replace(valueDes);
          break;
        case r'body_unavailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bodyUnavailable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThreadMessageBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThreadMessageBodyBuilder();
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


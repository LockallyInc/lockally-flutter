//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/thread_message_body_all_of_body.dart';
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/thread_message.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread_message_body.g.dart';

/// ThreadMessageBody
///
/// Properties:
/// * [id] 
/// * [direction] 
/// * [rfcMessageId] - The Internet Message-ID
/// * [inReplyTo] 
/// * [subject] 
/// * [from] 
/// * [to] 
/// * [snippet] 
/// * [hasAttachments] 
/// * [attachments] 
/// * [annotations] - Signals computed at ingest
/// * [receivedAt] 
/// * [body] 
@BuiltValue()
abstract class ThreadMessageBody implements ThreadMessage, Built<ThreadMessageBody, ThreadMessageBodyBuilder> {
  @BuiltValueField(wireName: r'body')
  ThreadMessageBodyAllOfBody? get body;

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
    if (object.snippet != null) {
      yield r'snippet';
      yield serializers.serialize(
        object.snippet,
        specifiedType: const FullType(String),
      );
    }
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
    if (object.inReplyTo != null) {
      yield r'in_reply_to';
      yield serializers.serialize(
        object.inReplyTo,
        specifiedType: const FullType(String),
      );
    }
    if (object.annotations != null) {
      yield r'annotations';
      yield serializers.serialize(
        object.annotations,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(ThreadMessageBodyAllOfBody),
      );
    }
    yield r'received_at';
    yield serializers.serialize(
      object.receivedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'rfc_message_id';
    yield serializers.serialize(
      object.rfcMessageId,
      specifiedType: const FullType(String),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'has_attachments';
    yield serializers.serialize(
      object.hasAttachments,
      specifiedType: const FullType(bool),
    );
    yield r'direction';
    yield serializers.serialize(
      object.direction,
      specifiedType: const FullType(ThreadMessageDirectionEnum),
    );
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
        case r'snippet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.snippet = valueDes;
          break;
        case r'attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.attachments.replace(valueDes);
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'in_reply_to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inReplyTo = valueDes;
          break;
        case r'annotations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.annotations.replace(valueDes);
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ThreadMessageBodyAllOfBody),
          ) as ThreadMessageBodyAllOfBody;
          result.body.replace(valueDes);
          break;
        case r'received_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.receivedAt = valueDes;
          break;
        case r'rfc_message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rfcMessageId = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.to.replace(valueDes);
          break;
        case r'has_attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasAttachments = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ThreadMessageDirectionEnum),
          ) as ThreadMessageDirectionEnum;
          result.direction = valueDes;
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

class ThreadMessageBodyDirectionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'inbound')
  static const ThreadMessageBodyDirectionEnum inbound = _$threadMessageBodyDirectionEnum_inbound;
  @BuiltValueEnumConst(wireName: r'outbound')
  static const ThreadMessageBodyDirectionEnum outbound = _$threadMessageBodyDirectionEnum_outbound;

  static Serializer<ThreadMessageBodyDirectionEnum> get serializer => _$threadMessageBodyDirectionEnumSerializer;

  const ThreadMessageBodyDirectionEnum._(String name): super(name);

  static BuiltSet<ThreadMessageBodyDirectionEnum> get values => _$threadMessageBodyDirectionEnumValues;
  static ThreadMessageBodyDirectionEnum valueOf(String name) => _$threadMessageBodyDirectionEnumValueOf(name);
}


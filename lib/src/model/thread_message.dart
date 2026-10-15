//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/annotations.dart';
import 'package:lockally/src/model/attachment.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread_message.g.dart';

/// ThreadMessage
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
/// * [annotations] 
/// * [receivedAt] 
@BuiltValue()
abstract class ThreadMessage implements Built<ThreadMessage, ThreadMessageBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'direction')
  ThreadMessageDirectionEnum get direction;
  // enum directionEnum {  inbound,  outbound,  };

  /// The Internet Message-ID
  @BuiltValueField(wireName: r'rfc_message_id')
  String get rfcMessageId;

  @BuiltValueField(wireName: r'in_reply_to')
  String? get inReplyTo;

  @BuiltValueField(wireName: r'subject')
  String? get subject;

  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  BuiltList<String> get to;

  @BuiltValueField(wireName: r'snippet')
  String? get snippet;

  @BuiltValueField(wireName: r'has_attachments')
  bool get hasAttachments;

  @BuiltValueField(wireName: r'attachments')
  BuiltList<Attachment>? get attachments;

  @BuiltValueField(wireName: r'annotations')
  Annotations? get annotations;

  @BuiltValueField(wireName: r'received_at')
  DateTime get receivedAt;

  ThreadMessage._();

  factory ThreadMessage([void updates(ThreadMessageBuilder b)]) = _$ThreadMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThreadMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThreadMessage> get serializer => _$ThreadMessageSerializer();
}

class _$ThreadMessageSerializer implements PrimitiveSerializer<ThreadMessage> {
  @override
  final Iterable<Type> types = const [ThreadMessage, _$ThreadMessage];

  @override
  final String wireName = r'ThreadMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThreadMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'direction';
    yield serializers.serialize(
      object.direction,
      specifiedType: const FullType(ThreadMessageDirectionEnum),
    );
    yield r'rfc_message_id';
    yield serializers.serialize(
      object.rfcMessageId,
      specifiedType: const FullType(String),
    );
    if (object.inReplyTo != null) {
      yield r'in_reply_to';
      yield serializers.serialize(
        object.inReplyTo,
        specifiedType: const FullType(String),
      );
    }
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.snippet != null) {
      yield r'snippet';
      yield serializers.serialize(
        object.snippet,
        specifiedType: const FullType(String),
      );
    }
    yield r'has_attachments';
    yield serializers.serialize(
      object.hasAttachments,
      specifiedType: const FullType(bool),
    );
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(BuiltList, [FullType(Attachment)]),
      );
    }
    if (object.annotations != null) {
      yield r'annotations';
      yield serializers.serialize(
        object.annotations,
        specifiedType: const FullType(Annotations),
      );
    }
    yield r'received_at';
    yield serializers.serialize(
      object.receivedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ThreadMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThreadMessageBuilder result,
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
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ThreadMessageDirectionEnum),
          ) as ThreadMessageDirectionEnum;
          result.direction = valueDes;
          break;
        case r'rfc_message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rfcMessageId = valueDes;
          break;
        case r'in_reply_to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inReplyTo = valueDes;
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.to.replace(valueDes);
          break;
        case r'snippet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.snippet = valueDes;
          break;
        case r'has_attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasAttachments = valueDes;
          break;
        case r'attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Attachment)]),
          ) as BuiltList<Attachment>;
          result.attachments.replace(valueDes);
          break;
        case r'annotations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Annotations),
          ) as Annotations;
          result.annotations.replace(valueDes);
          break;
        case r'received_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.receivedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThreadMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThreadMessageBuilder();
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

class ThreadMessageDirectionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'inbound')
  static const ThreadMessageDirectionEnum inbound = _$threadMessageDirectionEnum_inbound;
  @BuiltValueEnumConst(wireName: r'outbound')
  static const ThreadMessageDirectionEnum outbound = _$threadMessageDirectionEnum_outbound;

  static Serializer<ThreadMessageDirectionEnum> get serializer => _$threadMessageDirectionEnumSerializer;

  const ThreadMessageDirectionEnum._(String name): super(name);

  static BuiltSet<ThreadMessageDirectionEnum> get values => _$threadMessageDirectionEnumValues;
  static ThreadMessageDirectionEnum valueOf(String name) => _$threadMessageDirectionEnumValueOf(name);
}


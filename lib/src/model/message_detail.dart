//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_detail.g.dart';

/// A single message with the content captured at send time. Returned only by GET /v1/messages/{id} (the list stays summary-only). Attachments are not returned. 
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [messageId] - RFC 5322 Message-ID header, including angle brackets.
/// * [sender] 
/// * [recipients] 
/// * [subject] 
/// * [status] 
/// * [queuedAt] 
/// * [updatedAt] 
/// * [bounceReason] 
/// * [sizeBytes] 
/// * [from] 
/// * [to] 
/// * [cc] 
/// * [bcc] 
/// * [text] 
/// * [html] 
/// * [headers] 
@BuiltValue()
abstract class MessageDetail implements Message, Built<MessageDetail, MessageDetailBuilder> {
  @BuiltValueField(wireName: r'cc')
  BuiltList<String>? get cc;

  @BuiltValueField(wireName: r'headers')
  BuiltMap<String, String>? get headers;

  @BuiltValueField(wireName: r'bcc')
  BuiltList<String>? get bcc;

  @BuiltValueField(wireName: r'from')
  String? get from;

  @BuiltValueField(wireName: r'html')
  String? get html;

  @BuiltValueField(wireName: r'to')
  BuiltList<String>? get to;

  @BuiltValueField(wireName: r'text')
  String? get text;

  MessageDetail._();

  factory MessageDetail([void updates(MessageDetailBuilder b)]) = _$MessageDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MessageDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MessageDetail> get serializer => _$MessageDetailSerializer();
}

class _$MessageDetailSerializer implements PrimitiveSerializer<MessageDetail> {
  @override
  final Iterable<Type> types = const [MessageDetail, _$MessageDetail];

  @override
  final String wireName = r'MessageDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MessageDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cc != null) {
      yield r'cc';
      yield serializers.serialize(
        object.cc,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.headers != null) {
      yield r'headers';
      yield serializers.serialize(
        object.headers,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.bcc != null) {
      yield r'bcc';
      yield serializers.serialize(
        object.bcc,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
    yield r'message_id';
    yield serializers.serialize(
      object.messageId,
      specifiedType: const FullType(String),
    );
    if (object.sizeBytes != null) {
      yield r'size_bytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType(int),
      );
    }
    yield r'queued_at';
    yield serializers.serialize(
      object.queuedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'sender';
    yield serializers.serialize(
      object.sender,
      specifiedType: const FullType(String),
    );
    yield r'recipients';
    yield serializers.serialize(
      object.recipients,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(String),
      );
    }
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType(String),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.bounceReason != null) {
      yield r'bounce_reason';
      yield serializers.serialize(
        object.bounceReason,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(MessageStatusEnum),
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
    MessageDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessageDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.cc.replace(valueDes);
          break;
        case r'headers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.headers.replace(valueDes);
          break;
        case r'bcc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.bcc.replace(valueDes);
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageId = valueDes;
          break;
        case r'size_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sizeBytes = valueDes;
          break;
        case r'queued_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.queuedAt = valueDes;
          break;
        case r'sender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sender = valueDes;
          break;
        case r'recipients':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.recipients.replace(valueDes);
          break;
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.html = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.to.replace(valueDes);
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'bounce_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bounceReason = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MessageStatusEnum),
          ) as MessageStatusEnum;
          result.status = valueDes;
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
  MessageDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessageDetailBuilder();
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

class MessageDetailStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'queued')
  static const MessageDetailStatusEnum queued = _$messageDetailStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'sending')
  static const MessageDetailStatusEnum sending = _$messageDetailStatusEnum_sending;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const MessageDetailStatusEnum delivered = _$messageDetailStatusEnum_delivered;
  @BuiltValueEnumConst(wireName: r'bounced')
  static const MessageDetailStatusEnum bounced = _$messageDetailStatusEnum_bounced;
  @BuiltValueEnumConst(wireName: r'deferred')
  static const MessageDetailStatusEnum deferred_ = _$messageDetailStatusEnum_deferred_;
  @BuiltValueEnumConst(wireName: r'complaint')
  static const MessageDetailStatusEnum complaint = _$messageDetailStatusEnum_complaint;

  static Serializer<MessageDetailStatusEnum> get serializer => _$messageDetailStatusEnumSerializer;

  const MessageDetailStatusEnum._(String name): super(name);

  static BuiltSet<MessageDetailStatusEnum> get values => _$messageDetailStatusEnumValues;
  static MessageDetailStatusEnum valueOf(String name) => _$messageDetailStatusEnumValueOf(name);
}


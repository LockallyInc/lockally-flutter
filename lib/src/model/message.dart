//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message.g.dart';

/// Message
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
@BuiltValue(instantiable: false)
abstract class Message  {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  /// RFC 5322 Message-ID header, including angle brackets.
  @BuiltValueField(wireName: r'message_id')
  String get messageId;

  @BuiltValueField(wireName: r'sender')
  String get sender;

  @BuiltValueField(wireName: r'recipients')
  BuiltList<String> get recipients;

  @BuiltValueField(wireName: r'subject')
  String? get subject;

  @BuiltValueField(wireName: r'status')
  MessageStatusEnum get status;
  // enum statusEnum {  queued,  sending,  delivered,  bounced,  deferred,  complaint,  };

  @BuiltValueField(wireName: r'queued_at')
  DateTime get queuedAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'bounce_reason')
  String? get bounceReason;

  @BuiltValueField(wireName: r'size_bytes')
  int? get sizeBytes;

  @BuiltValueSerializer(custom: true)
  static Serializer<Message> get serializer => _$MessageSerializer();
}

class _$MessageSerializer implements PrimitiveSerializer<Message> {
  @override
  final Iterable<Type> types = const [Message];

  @override
  final String wireName = r'Message';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Message object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'message_id';
    yield serializers.serialize(
      object.messageId,
      specifiedType: const FullType(String),
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
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(MessageStatusEnum),
    );
    yield r'queued_at';
    yield serializers.serialize(
      object.queuedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.bounceReason != null) {
      yield r'bounce_reason';
      yield serializers.serialize(
        object.bounceReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.sizeBytes != null) {
      yield r'size_bytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Message object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Message deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Message)) as $Message;
  }
}

/// a concrete implementation of [Message], since [Message] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Message implements Message, Built<$Message, $MessageBuilder> {
  $Message._();

  factory $Message([void Function($MessageBuilder)? updates]) = _$$Message;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Message> get serializer => _$$MessageSerializer();
}

class _$$MessageSerializer implements PrimitiveSerializer<$Message> {
  @override
  final Iterable<Type> types = const [$Message, _$$Message];

  @override
  final String wireName = r'$Message';

  @override
  Object serialize(
    Serializers serializers,
    $Message object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Message))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessageBuilder result,
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
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageId = valueDes;
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
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MessageStatusEnum),
          ) as MessageStatusEnum;
          result.status = valueDes;
          break;
        case r'queued_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.queuedAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'bounce_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bounceReason = valueDes;
          break;
        case r'size_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sizeBytes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Message deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MessageBuilder();
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

class MessageStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'queued')
  static const MessageStatusEnum queued = _$messageStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'sending')
  static const MessageStatusEnum sending = _$messageStatusEnum_sending;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const MessageStatusEnum delivered = _$messageStatusEnum_delivered;
  @BuiltValueEnumConst(wireName: r'bounced')
  static const MessageStatusEnum bounced = _$messageStatusEnum_bounced;
  @BuiltValueEnumConst(wireName: r'deferred')
  static const MessageStatusEnum deferred_ = _$messageStatusEnum_deferred_;
  @BuiltValueEnumConst(wireName: r'complaint')
  static const MessageStatusEnum complaint = _$messageStatusEnum_complaint;

  static Serializer<MessageStatusEnum> get serializer => _$messageStatusEnumSerializer;

  const MessageStatusEnum._(String name): super(name);

  static BuiltSet<MessageStatusEnum> get values => _$messageStatusEnumValues;
  static MessageStatusEnum valueOf(String name) => _$messageStatusEnumValueOf(name);
}


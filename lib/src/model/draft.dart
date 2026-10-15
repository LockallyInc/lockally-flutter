//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/policy_flags.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'draft.g.dart';

/// Draft
///
/// Properties:
/// * [id] 
/// * [mailboxId] 
/// * [mailbox] 
/// * [threadId] 
/// * [to] 
/// * [cc] 
/// * [subject] 
/// * [bodyText] 
/// * [status] 
/// * [policyFlags] 
/// * [reviewedAt] 
/// * [sentMessageId] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Draft implements Built<Draft, DraftBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'mailbox_id')
  String get mailboxId;

  @BuiltValueField(wireName: r'mailbox')
  String? get mailbox;

  @BuiltValueField(wireName: r'thread_id')
  String? get threadId;

  @BuiltValueField(wireName: r'to')
  BuiltList<String> get to;

  @BuiltValueField(wireName: r'cc')
  BuiltList<String>? get cc;

  @BuiltValueField(wireName: r'subject')
  String? get subject;

  @BuiltValueField(wireName: r'body_text')
  String? get bodyText;

  @BuiltValueField(wireName: r'status')
  DraftStatusEnum get status;
  // enum statusEnum {  pending_approval,  sent,  rejected,  cancelled,  };

  @BuiltValueField(wireName: r'policy_flags')
  PolicyFlags get policyFlags;

  @BuiltValueField(wireName: r'reviewed_at')
  DateTime? get reviewedAt;

  @BuiltValueField(wireName: r'sent_message_id')
  String? get sentMessageId;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  Draft._();

  factory Draft([void updates(DraftBuilder b)]) = _$Draft;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DraftBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Draft> get serializer => _$DraftSerializer();
}

class _$DraftSerializer implements PrimitiveSerializer<Draft> {
  @override
  final Iterable<Type> types = const [Draft, _$Draft];

  @override
  final String wireName = r'Draft';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Draft object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'mailbox_id';
    yield serializers.serialize(
      object.mailboxId,
      specifiedType: const FullType(String),
    );
    if (object.mailbox != null) {
      yield r'mailbox';
      yield serializers.serialize(
        object.mailbox,
        specifiedType: const FullType(String),
      );
    }
    if (object.threadId != null) {
      yield r'thread_id';
      yield serializers.serialize(
        object.threadId,
        specifiedType: const FullType(String),
      );
    }
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.cc != null) {
      yield r'cc';
      yield serializers.serialize(
        object.cc,
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
    if (object.bodyText != null) {
      yield r'body_text';
      yield serializers.serialize(
        object.bodyText,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DraftStatusEnum),
    );
    yield r'policy_flags';
    yield serializers.serialize(
      object.policyFlags,
      specifiedType: const FullType(PolicyFlags),
    );
    if (object.reviewedAt != null) {
      yield r'reviewed_at';
      yield serializers.serialize(
        object.reviewedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.sentMessageId != null) {
      yield r'sent_message_id';
      yield serializers.serialize(
        object.sentMessageId,
        specifiedType: const FullType(String),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
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
    Draft object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DraftBuilder result,
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
        case r'mailbox_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailboxId = valueDes;
          break;
        case r'mailbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailbox = valueDes;
          break;
        case r'thread_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.threadId = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.to.replace(valueDes);
          break;
        case r'cc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.cc.replace(valueDes);
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'body_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bodyText = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DraftStatusEnum),
          ) as DraftStatusEnum;
          result.status = valueDes;
          break;
        case r'policy_flags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PolicyFlags),
          ) as PolicyFlags;
          result.policyFlags.replace(valueDes);
          break;
        case r'reviewed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.reviewedAt = valueDes;
          break;
        case r'sent_message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sentMessageId = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
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
  Draft deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DraftBuilder();
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

class DraftStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending_approval')
  static const DraftStatusEnum pendingApproval = _$draftStatusEnum_pendingApproval;
  @BuiltValueEnumConst(wireName: r'sent')
  static const DraftStatusEnum sent = _$draftStatusEnum_sent;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const DraftStatusEnum rejected = _$draftStatusEnum_rejected;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const DraftStatusEnum cancelled = _$draftStatusEnum_cancelled;

  static Serializer<DraftStatusEnum> get serializer => _$draftStatusEnumSerializer;

  const DraftStatusEnum._(String name): super(name);

  static BuiltSet<DraftStatusEnum> get values => _$draftStatusEnumValues;
  static DraftStatusEnum valueOf(String name) => _$draftStatusEnumValueOf(name);
}


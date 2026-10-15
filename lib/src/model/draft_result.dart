//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/agent_send_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'draft_result.g.dart';

/// DraftResult
///
/// Properties:
/// * [draftId] 
/// * [status] 
/// * [policyFlags] 
/// * [threadId] 
/// * [sent] 
@BuiltValue()
abstract class DraftResult implements Built<DraftResult, DraftResultBuilder> {
  @BuiltValueField(wireName: r'draft_id')
  String get draftId;

  @BuiltValueField(wireName: r'status')
  DraftResultStatusEnum get status;
  // enum statusEnum {  pending_approval,  sent,  };

  @BuiltValueField(wireName: r'policy_flags')
  BuiltMap<String, JsonObject?> get policyFlags;

  @BuiltValueField(wireName: r'thread_id')
  String? get threadId;

  @BuiltValueField(wireName: r'sent')
  AgentSendResult? get sent;

  DraftResult._();

  factory DraftResult([void updates(DraftResultBuilder b)]) = _$DraftResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DraftResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DraftResult> get serializer => _$DraftResultSerializer();
}

class _$DraftResultSerializer implements PrimitiveSerializer<DraftResult> {
  @override
  final Iterable<Type> types = const [DraftResult, _$DraftResult];

  @override
  final String wireName = r'DraftResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DraftResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'draft_id';
    yield serializers.serialize(
      object.draftId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DraftResultStatusEnum),
    );
    yield r'policy_flags';
    yield serializers.serialize(
      object.policyFlags,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    if (object.threadId != null) {
      yield r'thread_id';
      yield serializers.serialize(
        object.threadId,
        specifiedType: const FullType(String),
      );
    }
    if (object.sent != null) {
      yield r'sent';
      yield serializers.serialize(
        object.sent,
        specifiedType: const FullType(AgentSendResult),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DraftResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DraftResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'draft_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.draftId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DraftResultStatusEnum),
          ) as DraftResultStatusEnum;
          result.status = valueDes;
          break;
        case r'policy_flags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.policyFlags.replace(valueDes);
          break;
        case r'thread_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.threadId = valueDes;
          break;
        case r'sent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AgentSendResult),
          ) as AgentSendResult;
          result.sent.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DraftResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DraftResultBuilder();
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

class DraftResultStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending_approval')
  static const DraftResultStatusEnum pendingApproval = _$draftResultStatusEnum_pendingApproval;
  @BuiltValueEnumConst(wireName: r'sent')
  static const DraftResultStatusEnum sent = _$draftResultStatusEnum_sent;

  static Serializer<DraftResultStatusEnum> get serializer => _$draftResultStatusEnumSerializer;

  const DraftResultStatusEnum._(String name): super(name);

  static BuiltSet<DraftResultStatusEnum> get values => _$draftResultStatusEnumValues;
  static DraftResultStatusEnum valueOf(String name) => _$draftResultStatusEnumValueOf(name);
}


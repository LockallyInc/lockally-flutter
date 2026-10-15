//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_flags.g.dart';

/// Why a draft was held. A key is absent when that check passed. The set is closed: a flag added to the policy engine must be added here too, or typed clients will drop it. 
///
/// Properties:
/// * [alwaysApprove] 
/// * [injectionRisk] 
/// * [newRecipient] 
/// * [newThread] 
/// * [pii] 
/// * [recipientCount] 
@BuiltValue()
abstract class PolicyFlags implements Built<PolicyFlags, PolicyFlagsBuilder> {
  @BuiltValueField(wireName: r'always_approve')
  bool? get alwaysApprove;

  @BuiltValueField(wireName: r'injection_risk')
  bool? get injectionRisk;

  @BuiltValueField(wireName: r'new_recipient')
  BuiltList<String>? get newRecipient;

  @BuiltValueField(wireName: r'new_thread')
  bool? get newThread;

  @BuiltValueField(wireName: r'pii')
  BuiltList<String>? get pii;

  @BuiltValueField(wireName: r'recipient_count')
  int? get recipientCount;

  PolicyFlags._();

  factory PolicyFlags([void updates(PolicyFlagsBuilder b)]) = _$PolicyFlags;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyFlagsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyFlags> get serializer => _$PolicyFlagsSerializer();
}

class _$PolicyFlagsSerializer implements PrimitiveSerializer<PolicyFlags> {
  @override
  final Iterable<Type> types = const [PolicyFlags, _$PolicyFlags];

  @override
  final String wireName = r'PolicyFlags';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyFlags object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alwaysApprove != null) {
      yield r'always_approve';
      yield serializers.serialize(
        object.alwaysApprove,
        specifiedType: const FullType(bool),
      );
    }
    if (object.injectionRisk != null) {
      yield r'injection_risk';
      yield serializers.serialize(
        object.injectionRisk,
        specifiedType: const FullType(bool),
      );
    }
    if (object.newRecipient != null) {
      yield r'new_recipient';
      yield serializers.serialize(
        object.newRecipient,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.newThread != null) {
      yield r'new_thread';
      yield serializers.serialize(
        object.newThread,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pii != null) {
      yield r'pii';
      yield serializers.serialize(
        object.pii,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.recipientCount != null) {
      yield r'recipient_count';
      yield serializers.serialize(
        object.recipientCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyFlags object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PolicyFlagsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'always_approve':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.alwaysApprove = valueDes;
          break;
        case r'injection_risk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.injectionRisk = valueDes;
          break;
        case r'new_recipient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.newRecipient.replace(valueDes);
          break;
        case r'new_thread':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.newThread = valueDes;
          break;
        case r'pii':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.pii.replace(valueDes);
          break;
        case r'recipient_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.recipientCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyFlags deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyFlagsBuilder();
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


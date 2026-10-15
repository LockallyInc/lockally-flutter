//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_send_result.g.dart';

/// AgentSendResult
///
/// Properties:
/// * [id] - The Lockally message id.
/// * [messageId] - The Internet Message-ID.
/// * [status] 
/// * [warning] - Set when the send is accepted but worth noting
/// * [threadId] - The conversation the message joined.
@BuiltValue()
abstract class AgentSendResult implements Built<AgentSendResult, AgentSendResultBuilder> {
  /// The Lockally message id.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The Internet Message-ID.
  @BuiltValueField(wireName: r'message_id')
  String get messageId;

  @BuiltValueField(wireName: r'status')
  String get status;

  /// Set when the send is accepted but worth noting
  @BuiltValueField(wireName: r'warning')
  String? get warning;

  /// The conversation the message joined.
  @BuiltValueField(wireName: r'thread_id')
  String get threadId;

  AgentSendResult._();

  factory AgentSendResult([void updates(AgentSendResultBuilder b)]) = _$AgentSendResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentSendResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentSendResult> get serializer => _$AgentSendResultSerializer();
}

class _$AgentSendResultSerializer implements PrimitiveSerializer<AgentSendResult> {
  @override
  final Iterable<Type> types = const [AgentSendResult, _$AgentSendResult];

  @override
  final String wireName = r'AgentSendResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentSendResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'message_id';
    yield serializers.serialize(
      object.messageId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    if (object.warning != null) {
      yield r'warning';
      yield serializers.serialize(
        object.warning,
        specifiedType: const FullType(String),
      );
    }
    yield r'thread_id';
    yield serializers.serialize(
      object.threadId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentSendResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentSendResultBuilder result,
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
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'warning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.warning = valueDes;
          break;
        case r'thread_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.threadId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentSendResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentSendResultBuilder();
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


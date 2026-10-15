//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simulated_inbound.g.dart';

/// SimulatedInbound
///
/// Properties:
/// * [threadId] 
/// * [messageId] 
/// * [annotations] 
@BuiltValue()
abstract class SimulatedInbound implements Built<SimulatedInbound, SimulatedInboundBuilder> {
  @BuiltValueField(wireName: r'thread_id')
  String? get threadId;

  @BuiltValueField(wireName: r'message_id')
  String? get messageId;

  @BuiltValueField(wireName: r'annotations')
  BuiltMap<String, JsonObject?>? get annotations;

  SimulatedInbound._();

  factory SimulatedInbound([void updates(SimulatedInboundBuilder b)]) = _$SimulatedInbound;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SimulatedInboundBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SimulatedInbound> get serializer => _$SimulatedInboundSerializer();
}

class _$SimulatedInboundSerializer implements PrimitiveSerializer<SimulatedInbound> {
  @override
  final Iterable<Type> types = const [SimulatedInbound, _$SimulatedInbound];

  @override
  final String wireName = r'SimulatedInbound';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SimulatedInbound object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.threadId != null) {
      yield r'thread_id';
      yield serializers.serialize(
        object.threadId,
        specifiedType: const FullType(String),
      );
    }
    if (object.messageId != null) {
      yield r'message_id';
      yield serializers.serialize(
        object.messageId,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SimulatedInbound object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SimulatedInboundBuilder result,
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
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageId = valueDes;
          break;
        case r'annotations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.annotations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SimulatedInbound deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimulatedInboundBuilder();
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


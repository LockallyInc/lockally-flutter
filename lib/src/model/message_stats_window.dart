//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_stats_window.g.dart';

/// MessageStatsWindow
///
/// Properties:
/// * [from] 
/// * [to] 
@BuiltValue()
abstract class MessageStatsWindow implements Built<MessageStatsWindow, MessageStatsWindowBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  MessageStatsWindow._();

  factory MessageStatsWindow([void updates(MessageStatsWindowBuilder b)]) = _$MessageStatsWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MessageStatsWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MessageStatsWindow> get serializer => _$MessageStatsWindowSerializer();
}

class _$MessageStatsWindowSerializer implements PrimitiveSerializer<MessageStatsWindow> {
  @override
  final Iterable<Type> types = const [MessageStatsWindow, _$MessageStatsWindow];

  @override
  final String wireName = r'MessageStatsWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MessageStatsWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MessageStatsWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessageStatsWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MessageStatsWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessageStatsWindowBuilder();
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


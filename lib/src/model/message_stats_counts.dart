//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_stats_counts.g.dart';

/// MessageStatsCounts
///
/// Properties:
/// * [delivered] 
/// * [bounced] 
/// * [deferred_] 
/// * [complaint] 
@BuiltValue()
abstract class MessageStatsCounts implements Built<MessageStatsCounts, MessageStatsCountsBuilder> {
  @BuiltValueField(wireName: r'delivered')
  int? get delivered;

  @BuiltValueField(wireName: r'bounced')
  int? get bounced;

  @BuiltValueField(wireName: r'deferred')
  int? get deferred_;

  @BuiltValueField(wireName: r'complaint')
  int? get complaint;

  MessageStatsCounts._();

  factory MessageStatsCounts([void updates(MessageStatsCountsBuilder b)]) = _$MessageStatsCounts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MessageStatsCountsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MessageStatsCounts> get serializer => _$MessageStatsCountsSerializer();
}

class _$MessageStatsCountsSerializer implements PrimitiveSerializer<MessageStatsCounts> {
  @override
  final Iterable<Type> types = const [MessageStatsCounts, _$MessageStatsCounts];

  @override
  final String wireName = r'MessageStatsCounts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MessageStatsCounts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.delivered != null) {
      yield r'delivered';
      yield serializers.serialize(
        object.delivered,
        specifiedType: const FullType(int),
      );
    }
    if (object.bounced != null) {
      yield r'bounced';
      yield serializers.serialize(
        object.bounced,
        specifiedType: const FullType(int),
      );
    }
    if (object.deferred_ != null) {
      yield r'deferred';
      yield serializers.serialize(
        object.deferred_,
        specifiedType: const FullType(int),
      );
    }
    if (object.complaint != null) {
      yield r'complaint';
      yield serializers.serialize(
        object.complaint,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MessageStatsCounts object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessageStatsCountsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.delivered = valueDes;
          break;
        case r'bounced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bounced = valueDes;
          break;
        case r'deferred':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deferred_ = valueDes;
          break;
        case r'complaint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.complaint = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MessageStatsCounts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessageStatsCountsBuilder();
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


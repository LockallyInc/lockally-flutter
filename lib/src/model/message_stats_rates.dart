//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_stats_rates.g.dart';

/// MessageStatsRates
///
/// Properties:
/// * [delivered] 
/// * [bounced] 
/// * [deferred_] 
/// * [complaint] 
@BuiltValue()
abstract class MessageStatsRates implements Built<MessageStatsRates, MessageStatsRatesBuilder> {
  @BuiltValueField(wireName: r'delivered')
  double? get delivered;

  @BuiltValueField(wireName: r'bounced')
  double? get bounced;

  @BuiltValueField(wireName: r'deferred')
  double? get deferred_;

  @BuiltValueField(wireName: r'complaint')
  double? get complaint;

  MessageStatsRates._();

  factory MessageStatsRates([void updates(MessageStatsRatesBuilder b)]) = _$MessageStatsRates;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MessageStatsRatesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MessageStatsRates> get serializer => _$MessageStatsRatesSerializer();
}

class _$MessageStatsRatesSerializer implements PrimitiveSerializer<MessageStatsRates> {
  @override
  final Iterable<Type> types = const [MessageStatsRates, _$MessageStatsRates];

  @override
  final String wireName = r'MessageStatsRates';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MessageStatsRates object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.delivered != null) {
      yield r'delivered';
      yield serializers.serialize(
        object.delivered,
        specifiedType: const FullType(double),
      );
    }
    if (object.bounced != null) {
      yield r'bounced';
      yield serializers.serialize(
        object.bounced,
        specifiedType: const FullType(double),
      );
    }
    if (object.deferred_ != null) {
      yield r'deferred';
      yield serializers.serialize(
        object.deferred_,
        specifiedType: const FullType(double),
      );
    }
    if (object.complaint != null) {
      yield r'complaint';
      yield serializers.serialize(
        object.complaint,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MessageStatsRates object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessageStatsRatesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.delivered = valueDes;
          break;
        case r'bounced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.bounced = valueDes;
          break;
        case r'deferred':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.deferred_ = valueDes;
          break;
        case r'complaint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
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
  MessageStatsRates deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessageStatsRatesBuilder();
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


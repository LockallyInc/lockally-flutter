//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/message_stats_rates.dart';
import 'package:lockally/src/model/message_stats_window.dart';
import 'package:lockally/src/model/message_stats_counts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_stats.g.dart';

/// MessageStats
///
/// Properties:
/// * [window] 
/// * [domain] 
/// * [sent] 
/// * [counts] 
/// * [rates] 
@BuiltValue()
abstract class MessageStats implements Built<MessageStats, MessageStatsBuilder> {
  @BuiltValueField(wireName: r'window')
  MessageStatsWindow? get window;

  @BuiltValueField(wireName: r'domain')
  String? get domain;

  @BuiltValueField(wireName: r'sent')
  int? get sent;

  @BuiltValueField(wireName: r'counts')
  MessageStatsCounts? get counts;

  @BuiltValueField(wireName: r'rates')
  MessageStatsRates? get rates;

  MessageStats._();

  factory MessageStats([void updates(MessageStatsBuilder b)]) = _$MessageStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MessageStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MessageStats> get serializer => _$MessageStatsSerializer();
}

class _$MessageStatsSerializer implements PrimitiveSerializer<MessageStats> {
  @override
  final Iterable<Type> types = const [MessageStats, _$MessageStats];

  @override
  final String wireName = r'MessageStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MessageStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType(MessageStatsWindow),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(String),
      );
    }
    if (object.sent != null) {
      yield r'sent';
      yield serializers.serialize(
        object.sent,
        specifiedType: const FullType(int),
      );
    }
    if (object.counts != null) {
      yield r'counts';
      yield serializers.serialize(
        object.counts,
        specifiedType: const FullType(MessageStatsCounts),
      );
    }
    if (object.rates != null) {
      yield r'rates';
      yield serializers.serialize(
        object.rates,
        specifiedType: const FullType(MessageStatsRates),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MessageStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessageStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MessageStatsWindow),
          ) as MessageStatsWindow;
          result.window.replace(valueDes);
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'sent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sent = valueDes;
          break;
        case r'counts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MessageStatsCounts),
          ) as MessageStatsCounts;
          result.counts.replace(valueDes);
          break;
        case r'rates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MessageStatsRates),
          ) as MessageStatsRates;
          result.rates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MessageStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessageStatsBuilder();
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


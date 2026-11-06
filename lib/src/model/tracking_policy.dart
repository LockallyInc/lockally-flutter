//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tracking_policy.g.dart';

/// TrackingPolicy
///
/// Properties:
/// * [trackOpens] 
/// * [trackClicks] 
/// * [updatedAt] - Absent until a policy has been set.
/// * [configured] - Whether this deployment holds a tracking signing secret. False means tracking cannot work whatever the flags say.
@BuiltValue()
abstract class TrackingPolicy implements Built<TrackingPolicy, TrackingPolicyBuilder> {
  @BuiltValueField(wireName: r'track_opens')
  bool get trackOpens;

  @BuiltValueField(wireName: r'track_clicks')
  bool get trackClicks;

  /// Absent until a policy has been set.
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  /// Whether this deployment holds a tracking signing secret. False means tracking cannot work whatever the flags say.
  @BuiltValueField(wireName: r'configured')
  bool get configured;

  TrackingPolicy._();

  factory TrackingPolicy([void updates(TrackingPolicyBuilder b)]) = _$TrackingPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackingPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackingPolicy> get serializer => _$TrackingPolicySerializer();
}

class _$TrackingPolicySerializer implements PrimitiveSerializer<TrackingPolicy> {
  @override
  final Iterable<Type> types = const [TrackingPolicy, _$TrackingPolicy];

  @override
  final String wireName = r'TrackingPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackingPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'track_opens';
    yield serializers.serialize(
      object.trackOpens,
      specifiedType: const FullType(bool),
    );
    yield r'track_clicks';
    yield serializers.serialize(
      object.trackClicks,
      specifiedType: const FullType(bool),
    );
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'configured';
    yield serializers.serialize(
      object.configured,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackingPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackingPolicyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'track_opens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.trackOpens = valueDes;
          break;
        case r'track_clicks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.trackClicks = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'configured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.configured = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackingPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackingPolicyBuilder();
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


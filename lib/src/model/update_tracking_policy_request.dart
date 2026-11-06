//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_tracking_policy_request.g.dart';

/// UpdateTrackingPolicyRequest
///
/// Properties:
/// * [trackOpens] 
/// * [trackClicks] 
@BuiltValue()
abstract class UpdateTrackingPolicyRequest implements Built<UpdateTrackingPolicyRequest, UpdateTrackingPolicyRequestBuilder> {
  @BuiltValueField(wireName: r'track_opens')
  bool? get trackOpens;

  @BuiltValueField(wireName: r'track_clicks')
  bool? get trackClicks;

  UpdateTrackingPolicyRequest._();

  factory UpdateTrackingPolicyRequest([void updates(UpdateTrackingPolicyRequestBuilder b)]) = _$UpdateTrackingPolicyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTrackingPolicyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTrackingPolicyRequest> get serializer => _$UpdateTrackingPolicyRequestSerializer();
}

class _$UpdateTrackingPolicyRequestSerializer implements PrimitiveSerializer<UpdateTrackingPolicyRequest> {
  @override
  final Iterable<Type> types = const [UpdateTrackingPolicyRequest, _$UpdateTrackingPolicyRequest];

  @override
  final String wireName = r'UpdateTrackingPolicyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTrackingPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.trackOpens != null) {
      yield r'track_opens';
      yield serializers.serialize(
        object.trackOpens,
        specifiedType: const FullType(bool),
      );
    }
    if (object.trackClicks != null) {
      yield r'track_clicks';
      yield serializers.serialize(
        object.trackClicks,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTrackingPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTrackingPolicyRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTrackingPolicyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTrackingPolicyRequestBuilder();
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


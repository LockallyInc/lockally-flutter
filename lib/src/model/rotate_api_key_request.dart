//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rotate_api_key_request.g.dart';

/// RotateApiKeyRequest
///
/// Properties:
/// * [graceSeconds] - How long the old key keeps working. Defaults to 24 hours, which is long enough to cut over without a scramble. Capped at 30 days, because beyond that \"rotated\" stops meaning anything. 
@BuiltValue()
abstract class RotateApiKeyRequest implements Built<RotateApiKeyRequest, RotateApiKeyRequestBuilder> {
  /// How long the old key keeps working. Defaults to 24 hours, which is long enough to cut over without a scramble. Capped at 30 days, because beyond that \"rotated\" stops meaning anything. 
  @BuiltValueField(wireName: r'grace_seconds')
  int? get graceSeconds;

  RotateApiKeyRequest._();

  factory RotateApiKeyRequest([void updates(RotateApiKeyRequestBuilder b)]) = _$RotateApiKeyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RotateApiKeyRequestBuilder b) => b
      ..graceSeconds = 86400;

  @BuiltValueSerializer(custom: true)
  static Serializer<RotateApiKeyRequest> get serializer => _$RotateApiKeyRequestSerializer();
}

class _$RotateApiKeyRequestSerializer implements PrimitiveSerializer<RotateApiKeyRequest> {
  @override
  final Iterable<Type> types = const [RotateApiKeyRequest, _$RotateApiKeyRequest];

  @override
  final String wireName = r'RotateApiKeyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RotateApiKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.graceSeconds != null) {
      yield r'grace_seconds';
      yield serializers.serialize(
        object.graceSeconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RotateApiKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RotateApiKeyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'grace_seconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.graceSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RotateApiKeyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RotateApiKeyRequestBuilder();
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


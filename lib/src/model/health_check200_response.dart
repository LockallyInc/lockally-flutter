//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_check200_response.g.dart';

/// HealthCheck200Response
///
/// Properties:
/// * [status] 
/// * [time] 
@BuiltValue()
abstract class HealthCheck200Response implements Built<HealthCheck200Response, HealthCheck200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  HealthCheck200ResponseStatusEnum get status;
  // enum statusEnum {  ok,  };

  @BuiltValueField(wireName: r'time')
  DateTime get time;

  HealthCheck200Response._();

  factory HealthCheck200Response([void updates(HealthCheck200ResponseBuilder b)]) = _$HealthCheck200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthCheck200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HealthCheck200Response> get serializer => _$HealthCheck200ResponseSerializer();
}

class _$HealthCheck200ResponseSerializer implements PrimitiveSerializer<HealthCheck200Response> {
  @override
  final Iterable<Type> types = const [HealthCheck200Response, _$HealthCheck200Response];

  @override
  final String wireName = r'HealthCheck200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HealthCheck200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(HealthCheck200ResponseStatusEnum),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HealthCheck200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthCheck200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HealthCheck200ResponseStatusEnum),
          ) as HealthCheck200ResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HealthCheck200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthCheck200ResponseBuilder();
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

class HealthCheck200ResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ok')
  static const HealthCheck200ResponseStatusEnum ok = _$healthCheck200ResponseStatusEnum_ok;

  static Serializer<HealthCheck200ResponseStatusEnum> get serializer => _$healthCheck200ResponseStatusEnumSerializer;

  const HealthCheck200ResponseStatusEnum._(String name): super(name);

  static BuiltSet<HealthCheck200ResponseStatusEnum> get values => _$healthCheck200ResponseStatusEnumValues;
  static HealthCheck200ResponseStatusEnum valueOf(String name) => _$healthCheck200ResponseStatusEnumValueOf(name);
}


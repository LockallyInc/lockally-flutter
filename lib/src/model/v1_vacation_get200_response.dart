//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/vacation_responder.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_vacation_get200_response.g.dart';

/// V1VacationGet200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class V1VacationGet200Response implements Built<V1VacationGet200Response, V1VacationGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<VacationResponder> get data;

  V1VacationGet200Response._();

  factory V1VacationGet200Response([void updates(V1VacationGet200ResponseBuilder b)]) = _$V1VacationGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1VacationGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1VacationGet200Response> get serializer => _$V1VacationGet200ResponseSerializer();
}

class _$V1VacationGet200ResponseSerializer implements PrimitiveSerializer<V1VacationGet200Response> {
  @override
  final Iterable<Type> types = const [V1VacationGet200Response, _$V1VacationGet200Response];

  @override
  final String wireName = r'V1VacationGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1VacationGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(VacationResponder)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1VacationGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1VacationGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(VacationResponder)]),
          ) as BuiltList<VacationResponder>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1VacationGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1VacationGet200ResponseBuilder();
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


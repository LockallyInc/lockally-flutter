//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/batch_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_send_batch_post200_response.g.dart';

/// V1SendBatchPost200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class V1SendBatchPost200Response implements Built<V1SendBatchPost200Response, V1SendBatchPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<BatchResult>? get data;

  V1SendBatchPost200Response._();

  factory V1SendBatchPost200Response([void updates(V1SendBatchPost200ResponseBuilder b)]) = _$V1SendBatchPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1SendBatchPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1SendBatchPost200Response> get serializer => _$V1SendBatchPost200ResponseSerializer();
}

class _$V1SendBatchPost200ResponseSerializer implements PrimitiveSerializer<V1SendBatchPost200Response> {
  @override
  final Iterable<Type> types = const [V1SendBatchPost200Response, _$V1SendBatchPost200Response];

  @override
  final String wireName = r'V1SendBatchPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1SendBatchPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(BatchResult)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1SendBatchPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1SendBatchPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BatchResult)]),
          ) as BuiltList<BatchResult>;
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
  V1SendBatchPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1SendBatchPost200ResponseBuilder();
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


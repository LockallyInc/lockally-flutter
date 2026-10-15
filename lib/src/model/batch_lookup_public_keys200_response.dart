//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/batch_lookup_public_keys200_response_data_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_lookup_public_keys200_response.g.dart';

/// BatchLookupPublicKeys200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class BatchLookupPublicKeys200Response implements Built<BatchLookupPublicKeys200Response, BatchLookupPublicKeys200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<BatchLookupPublicKeys200ResponseDataInner>? get data;

  BatchLookupPublicKeys200Response._();

  factory BatchLookupPublicKeys200Response([void updates(BatchLookupPublicKeys200ResponseBuilder b)]) = _$BatchLookupPublicKeys200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchLookupPublicKeys200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchLookupPublicKeys200Response> get serializer => _$BatchLookupPublicKeys200ResponseSerializer();
}

class _$BatchLookupPublicKeys200ResponseSerializer implements PrimitiveSerializer<BatchLookupPublicKeys200Response> {
  @override
  final Iterable<Type> types = const [BatchLookupPublicKeys200Response, _$BatchLookupPublicKeys200Response];

  @override
  final String wireName = r'BatchLookupPublicKeys200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchLookupPublicKeys200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(BatchLookupPublicKeys200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchLookupPublicKeys200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchLookupPublicKeys200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BatchLookupPublicKeys200ResponseDataInner)]),
          ) as BuiltList<BatchLookupPublicKeys200ResponseDataInner>;
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
  BatchLookupPublicKeys200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchLookupPublicKeys200ResponseBuilder();
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


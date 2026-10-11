//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/api_key.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_api_keys_get200_response.g.dart';

/// V1ApiKeysGet200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class V1ApiKeysGet200Response implements Built<V1ApiKeysGet200Response, V1ApiKeysGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<APIKey> get data;

  V1ApiKeysGet200Response._();

  factory V1ApiKeysGet200Response([void updates(V1ApiKeysGet200ResponseBuilder b)]) = _$V1ApiKeysGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ApiKeysGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ApiKeysGet200Response> get serializer => _$V1ApiKeysGet200ResponseSerializer();
}

class _$V1ApiKeysGet200ResponseSerializer implements PrimitiveSerializer<V1ApiKeysGet200Response> {
  @override
  final Iterable<Type> types = const [V1ApiKeysGet200Response, _$V1ApiKeysGet200Response];

  @override
  final String wireName = r'V1ApiKeysGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ApiKeysGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(APIKey)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ApiKeysGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ApiKeysGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(APIKey)]),
          ) as BuiltList<APIKey>;
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
  V1ApiKeysGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ApiKeysGet200ResponseBuilder();
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


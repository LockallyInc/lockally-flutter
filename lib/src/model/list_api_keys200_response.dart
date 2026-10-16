//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/api_key.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_api_keys200_response.g.dart';

/// ListApiKeys200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListApiKeys200Response implements Built<ListApiKeys200Response, ListApiKeys200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<APIKey> get data;

  ListApiKeys200Response._();

  factory ListApiKeys200Response([void updates(ListApiKeys200ResponseBuilder b)]) = _$ListApiKeys200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListApiKeys200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListApiKeys200Response> get serializer => _$ListApiKeys200ResponseSerializer();
}

class _$ListApiKeys200ResponseSerializer implements PrimitiveSerializer<ListApiKeys200Response> {
  @override
  final Iterable<Type> types = const [ListApiKeys200Response, _$ListApiKeys200Response];

  @override
  final String wireName = r'ListApiKeys200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListApiKeys200Response object, {
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
    ListApiKeys200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListApiKeys200ResponseBuilder result,
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
  ListApiKeys200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListApiKeys200ResponseBuilder();
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


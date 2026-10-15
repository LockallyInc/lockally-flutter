//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/resource.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_resources200_response.g.dart';

/// ListResources200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListResources200Response implements Built<ListResources200Response, ListResources200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Resource>? get data;

  ListResources200Response._();

  factory ListResources200Response([void updates(ListResources200ResponseBuilder b)]) = _$ListResources200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListResources200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListResources200Response> get serializer => _$ListResources200ResponseSerializer();
}

class _$ListResources200ResponseSerializer implements PrimitiveSerializer<ListResources200Response> {
  @override
  final Iterable<Type> types = const [ListResources200Response, _$ListResources200Response];

  @override
  final String wireName = r'ListResources200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListResources200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Resource)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListResources200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListResources200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Resource)]),
          ) as BuiltList<Resource>;
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
  ListResources200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListResources200ResponseBuilder();
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


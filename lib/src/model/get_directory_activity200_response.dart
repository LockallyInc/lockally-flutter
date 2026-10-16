//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/get_directory_activity200_response_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_directory_activity200_response.g.dart';

/// GetDirectoryActivity200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class GetDirectoryActivity200Response implements Built<GetDirectoryActivity200Response, GetDirectoryActivity200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<GetDirectoryActivity200ResponseDataInner>? get data;

  GetDirectoryActivity200Response._();

  factory GetDirectoryActivity200Response([void updates(GetDirectoryActivity200ResponseBuilder b)]) = _$GetDirectoryActivity200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDirectoryActivity200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDirectoryActivity200Response> get serializer => _$GetDirectoryActivity200ResponseSerializer();
}

class _$GetDirectoryActivity200ResponseSerializer implements PrimitiveSerializer<GetDirectoryActivity200Response> {
  @override
  final Iterable<Type> types = const [GetDirectoryActivity200Response, _$GetDirectoryActivity200Response];

  @override
  final String wireName = r'GetDirectoryActivity200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDirectoryActivity200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(GetDirectoryActivity200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDirectoryActivity200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetDirectoryActivity200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetDirectoryActivity200ResponseDataInner)]),
          ) as BuiltList<GetDirectoryActivity200ResponseDataInner>;
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
  GetDirectoryActivity200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDirectoryActivity200ResponseBuilder();
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


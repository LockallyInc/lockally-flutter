//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/get_contact_lists200_response_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_contact_lists200_response.g.dart';

/// GetContactLists200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class GetContactLists200Response implements Built<GetContactLists200Response, GetContactLists200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<GetContactLists200ResponseDataInner>? get data;

  GetContactLists200Response._();

  factory GetContactLists200Response([void updates(GetContactLists200ResponseBuilder b)]) = _$GetContactLists200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetContactLists200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetContactLists200Response> get serializer => _$GetContactLists200ResponseSerializer();
}

class _$GetContactLists200ResponseSerializer implements PrimitiveSerializer<GetContactLists200Response> {
  @override
  final Iterable<Type> types = const [GetContactLists200Response, _$GetContactLists200Response];

  @override
  final String wireName = r'GetContactLists200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetContactLists200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(GetContactLists200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetContactLists200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetContactLists200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetContactLists200ResponseDataInner)]),
          ) as BuiltList<GetContactLists200ResponseDataInner>;
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
  GetContactLists200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetContactLists200ResponseBuilder();
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


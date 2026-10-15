//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/dedicated_ip_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_dedicated_ip_requests200_response.g.dart';

/// ListDedicatedIPRequests200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListDedicatedIPRequests200Response implements Built<ListDedicatedIPRequests200Response, ListDedicatedIPRequests200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<DedicatedIPRequest> get data;

  ListDedicatedIPRequests200Response._();

  factory ListDedicatedIPRequests200Response([void updates(ListDedicatedIPRequests200ResponseBuilder b)]) = _$ListDedicatedIPRequests200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListDedicatedIPRequests200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListDedicatedIPRequests200Response> get serializer => _$ListDedicatedIPRequests200ResponseSerializer();
}

class _$ListDedicatedIPRequests200ResponseSerializer implements PrimitiveSerializer<ListDedicatedIPRequests200Response> {
  @override
  final Iterable<Type> types = const [ListDedicatedIPRequests200Response, _$ListDedicatedIPRequests200Response];

  @override
  final String wireName = r'ListDedicatedIPRequests200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListDedicatedIPRequests200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(DedicatedIPRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListDedicatedIPRequests200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListDedicatedIPRequests200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DedicatedIPRequest)]),
          ) as BuiltList<DedicatedIPRequest>;
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
  ListDedicatedIPRequests200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListDedicatedIPRequests200ResponseBuilder();
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


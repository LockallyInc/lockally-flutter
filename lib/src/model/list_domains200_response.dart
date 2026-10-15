//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/domain.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_domains200_response.g.dart';

/// ListDomains200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListDomains200Response implements Built<ListDomains200Response, ListDomains200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Domain> get data;

  ListDomains200Response._();

  factory ListDomains200Response([void updates(ListDomains200ResponseBuilder b)]) = _$ListDomains200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListDomains200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListDomains200Response> get serializer => _$ListDomains200ResponseSerializer();
}

class _$ListDomains200ResponseSerializer implements PrimitiveSerializer<ListDomains200Response> {
  @override
  final Iterable<Type> types = const [ListDomains200Response, _$ListDomains200Response];

  @override
  final String wireName = r'ListDomains200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListDomains200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(Domain)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListDomains200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListDomains200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Domain)]),
          ) as BuiltList<Domain>;
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
  ListDomains200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListDomains200ResponseBuilder();
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


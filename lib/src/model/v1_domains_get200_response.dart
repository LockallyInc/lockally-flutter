//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/domain.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_domains_get200_response.g.dart';

/// V1DomainsGet200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class V1DomainsGet200Response implements Built<V1DomainsGet200Response, V1DomainsGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Domain> get data;

  V1DomainsGet200Response._();

  factory V1DomainsGet200Response([void updates(V1DomainsGet200ResponseBuilder b)]) = _$V1DomainsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1DomainsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1DomainsGet200Response> get serializer => _$V1DomainsGet200ResponseSerializer();
}

class _$V1DomainsGet200ResponseSerializer implements PrimitiveSerializer<V1DomainsGet200Response> {
  @override
  final Iterable<Type> types = const [V1DomainsGet200Response, _$V1DomainsGet200Response];

  @override
  final String wireName = r'V1DomainsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1DomainsGet200Response object, {
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
    V1DomainsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1DomainsGet200ResponseBuilder result,
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
  V1DomainsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1DomainsGet200ResponseBuilder();
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


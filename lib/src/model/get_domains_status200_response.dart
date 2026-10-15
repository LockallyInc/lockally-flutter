//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/get_domains_status200_response_domains_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_domains_status200_response.g.dart';

/// GetDomainsStatus200Response
///
/// Properties:
/// * [domains] 
/// * [generatedAt] 
@BuiltValue()
abstract class GetDomainsStatus200Response implements Built<GetDomainsStatus200Response, GetDomainsStatus200ResponseBuilder> {
  @BuiltValueField(wireName: r'domains')
  BuiltList<GetDomainsStatus200ResponseDomainsInner>? get domains;

  @BuiltValueField(wireName: r'generated_at')
  DateTime? get generatedAt;

  GetDomainsStatus200Response._();

  factory GetDomainsStatus200Response([void updates(GetDomainsStatus200ResponseBuilder b)]) = _$GetDomainsStatus200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDomainsStatus200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDomainsStatus200Response> get serializer => _$GetDomainsStatus200ResponseSerializer();
}

class _$GetDomainsStatus200ResponseSerializer implements PrimitiveSerializer<GetDomainsStatus200Response> {
  @override
  final Iterable<Type> types = const [GetDomainsStatus200Response, _$GetDomainsStatus200Response];

  @override
  final String wireName = r'GetDomainsStatus200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDomainsStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.domains != null) {
      yield r'domains';
      yield serializers.serialize(
        object.domains,
        specifiedType: const FullType(BuiltList, [FullType(GetDomainsStatus200ResponseDomainsInner)]),
      );
    }
    if (object.generatedAt != null) {
      yield r'generated_at';
      yield serializers.serialize(
        object.generatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDomainsStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetDomainsStatus200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetDomainsStatus200ResponseDomainsInner)]),
          ) as BuiltList<GetDomainsStatus200ResponseDomainsInner>;
          result.domains.replace(valueDes);
          break;
        case r'generated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetDomainsStatus200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDomainsStatus200ResponseBuilder();
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


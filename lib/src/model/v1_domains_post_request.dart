//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_domains_post_request.g.dart';

/// V1DomainsPostRequest
///
/// Properties:
/// * [domain] 
@BuiltValue()
abstract class V1DomainsPostRequest implements Built<V1DomainsPostRequest, V1DomainsPostRequestBuilder> {
  @BuiltValueField(wireName: r'domain')
  String get domain;

  V1DomainsPostRequest._();

  factory V1DomainsPostRequest([void updates(V1DomainsPostRequestBuilder b)]) = _$V1DomainsPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1DomainsPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1DomainsPostRequest> get serializer => _$V1DomainsPostRequestSerializer();
}

class _$V1DomainsPostRequestSerializer implements PrimitiveSerializer<V1DomainsPostRequest> {
  @override
  final Iterable<Type> types = const [V1DomainsPostRequest, _$V1DomainsPostRequest];

  @override
  final String wireName = r'V1DomainsPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1DomainsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1DomainsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1DomainsPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1DomainsPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1DomainsPostRequestBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_aliases_post_request.g.dart';

/// V1AliasesPostRequest
///
/// Properties:
/// * [aliasAddress] 
/// * [aliasTarget] 
@BuiltValue()
abstract class V1AliasesPostRequest implements Built<V1AliasesPostRequest, V1AliasesPostRequestBuilder> {
  @BuiltValueField(wireName: r'alias_address')
  String get aliasAddress;

  @BuiltValueField(wireName: r'alias_target')
  String get aliasTarget;

  V1AliasesPostRequest._();

  factory V1AliasesPostRequest([void updates(V1AliasesPostRequestBuilder b)]) = _$V1AliasesPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AliasesPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AliasesPostRequest> get serializer => _$V1AliasesPostRequestSerializer();
}

class _$V1AliasesPostRequestSerializer implements PrimitiveSerializer<V1AliasesPostRequest> {
  @override
  final Iterable<Type> types = const [V1AliasesPostRequest, _$V1AliasesPostRequest];

  @override
  final String wireName = r'V1AliasesPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AliasesPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'alias_address';
    yield serializers.serialize(
      object.aliasAddress,
      specifiedType: const FullType(String),
    );
    yield r'alias_target';
    yield serializers.serialize(
      object.aliasTarget,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AliasesPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AliasesPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alias_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.aliasAddress = valueDes;
          break;
        case r'alias_target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.aliasTarget = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AliasesPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AliasesPostRequestBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_alias_request.g.dart';

/// CreateAliasRequest
///
/// Properties:
/// * [aliasAddress] 
/// * [aliasTarget] 
@BuiltValue()
abstract class CreateAliasRequest implements Built<CreateAliasRequest, CreateAliasRequestBuilder> {
  @BuiltValueField(wireName: r'alias_address')
  String get aliasAddress;

  @BuiltValueField(wireName: r'alias_target')
  String get aliasTarget;

  CreateAliasRequest._();

  factory CreateAliasRequest([void updates(CreateAliasRequestBuilder b)]) = _$CreateAliasRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAliasRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAliasRequest> get serializer => _$CreateAliasRequestSerializer();
}

class _$CreateAliasRequestSerializer implements PrimitiveSerializer<CreateAliasRequest> {
  @override
  final Iterable<Type> types = const [CreateAliasRequest, _$CreateAliasRequest];

  @override
  final String wireName = r'CreateAliasRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAliasRequest object, {
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
    CreateAliasRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateAliasRequestBuilder result,
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
  CreateAliasRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAliasRequestBuilder();
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


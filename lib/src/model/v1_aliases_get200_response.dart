//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/alias.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_aliases_get200_response.g.dart';

/// V1AliasesGet200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class V1AliasesGet200Response implements Built<V1AliasesGet200Response, V1AliasesGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Alias> get data;

  V1AliasesGet200Response._();

  factory V1AliasesGet200Response([void updates(V1AliasesGet200ResponseBuilder b)]) = _$V1AliasesGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AliasesGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AliasesGet200Response> get serializer => _$V1AliasesGet200ResponseSerializer();
}

class _$V1AliasesGet200ResponseSerializer implements PrimitiveSerializer<V1AliasesGet200Response> {
  @override
  final Iterable<Type> types = const [V1AliasesGet200Response, _$V1AliasesGet200Response];

  @override
  final String wireName = r'V1AliasesGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AliasesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(Alias)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AliasesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AliasesGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Alias)]),
          ) as BuiltList<Alias>;
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
  V1AliasesGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AliasesGet200ResponseBuilder();
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


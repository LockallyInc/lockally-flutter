//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/alias.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_aliases200_response.g.dart';

/// ListAliases200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListAliases200Response implements Built<ListAliases200Response, ListAliases200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Alias> get data;

  ListAliases200Response._();

  factory ListAliases200Response([void updates(ListAliases200ResponseBuilder b)]) = _$ListAliases200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListAliases200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListAliases200Response> get serializer => _$ListAliases200ResponseSerializer();
}

class _$ListAliases200ResponseSerializer implements PrimitiveSerializer<ListAliases200Response> {
  @override
  final Iterable<Type> types = const [ListAliases200Response, _$ListAliases200Response];

  @override
  final String wireName = r'ListAliases200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListAliases200Response object, {
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
    ListAliases200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListAliases200ResponseBuilder result,
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
  ListAliases200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListAliases200ResponseBuilder();
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


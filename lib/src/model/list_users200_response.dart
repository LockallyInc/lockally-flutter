//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_users200_response.g.dart';

/// ListUsers200Response
///
/// Properties:
/// * [data] 
/// * [limit] 
@BuiltValue()
abstract class ListUsers200Response implements Built<ListUsers200Response, ListUsers200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<User> get data;

  @BuiltValueField(wireName: r'limit')
  int get limit;

  ListUsers200Response._();

  factory ListUsers200Response([void updates(ListUsers200ResponseBuilder b)]) = _$ListUsers200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListUsers200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListUsers200Response> get serializer => _$ListUsers200ResponseSerializer();
}

class _$ListUsers200ResponseSerializer implements PrimitiveSerializer<ListUsers200Response> {
  @override
  final Iterable<Type> types = const [ListUsers200Response, _$ListUsers200Response];

  @override
  final String wireName = r'ListUsers200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListUsers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(User)]),
    );
    yield r'limit';
    yield serializers.serialize(
      object.limit,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListUsers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListUsers200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(User)]),
          ) as BuiltList<User>;
          result.data.replace(valueDes);
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListUsers200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListUsers200ResponseBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/migration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_migrations200_response.g.dart';

/// ListMigrations200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListMigrations200Response implements Built<ListMigrations200Response, ListMigrations200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Migration> get data;

  ListMigrations200Response._();

  factory ListMigrations200Response([void updates(ListMigrations200ResponseBuilder b)]) = _$ListMigrations200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListMigrations200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListMigrations200Response> get serializer => _$ListMigrations200ResponseSerializer();
}

class _$ListMigrations200ResponseSerializer implements PrimitiveSerializer<ListMigrations200Response> {
  @override
  final Iterable<Type> types = const [ListMigrations200Response, _$ListMigrations200Response];

  @override
  final String wireName = r'ListMigrations200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListMigrations200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(Migration)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListMigrations200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListMigrations200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Migration)]),
          ) as BuiltList<Migration>;
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
  ListMigrations200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMigrations200ResponseBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/migration_event.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_migration_events200_response.g.dart';

/// ListMigrationEvents200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListMigrationEvents200Response implements Built<ListMigrationEvents200Response, ListMigrationEvents200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<MigrationEvent> get data;

  ListMigrationEvents200Response._();

  factory ListMigrationEvents200Response([void updates(ListMigrationEvents200ResponseBuilder b)]) = _$ListMigrationEvents200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListMigrationEvents200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListMigrationEvents200Response> get serializer => _$ListMigrationEvents200ResponseSerializer();
}

class _$ListMigrationEvents200ResponseSerializer implements PrimitiveSerializer<ListMigrationEvents200Response> {
  @override
  final Iterable<Type> types = const [ListMigrationEvents200Response, _$ListMigrationEvents200Response];

  @override
  final String wireName = r'ListMigrationEvents200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListMigrationEvents200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(MigrationEvent)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListMigrationEvents200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListMigrationEvents200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MigrationEvent)]),
          ) as BuiltList<MigrationEvent>;
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
  ListMigrationEvents200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMigrationEvents200ResponseBuilder();
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


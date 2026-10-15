//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/map_migration_request_mappings_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'map_migration_request.g.dart';

/// MapMigrationRequest
///
/// Properties:
/// * [mappings] 
@BuiltValue()
abstract class MapMigrationRequest implements Built<MapMigrationRequest, MapMigrationRequestBuilder> {
  @BuiltValueField(wireName: r'mappings')
  BuiltList<MapMigrationRequestMappingsInner> get mappings;

  MapMigrationRequest._();

  factory MapMigrationRequest([void updates(MapMigrationRequestBuilder b)]) = _$MapMigrationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MapMigrationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MapMigrationRequest> get serializer => _$MapMigrationRequestSerializer();
}

class _$MapMigrationRequestSerializer implements PrimitiveSerializer<MapMigrationRequest> {
  @override
  final Iterable<Type> types = const [MapMigrationRequest, _$MapMigrationRequest];

  @override
  final String wireName = r'MapMigrationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MapMigrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mappings';
    yield serializers.serialize(
      object.mappings,
      specifiedType: const FullType(BuiltList, [FullType(MapMigrationRequestMappingsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MapMigrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MapMigrationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mappings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MapMigrationRequestMappingsInner)]),
          ) as BuiltList<MapMigrationRequestMappingsInner>;
          result.mappings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MapMigrationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MapMigrationRequestBuilder();
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


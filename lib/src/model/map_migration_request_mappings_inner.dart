//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'map_migration_request_mappings_inner.g.dart';

/// MapMigrationRequestMappingsInner
///
/// Properties:
/// * [sourceEmail] 
/// * [destEmail] 
@BuiltValue()
abstract class MapMigrationRequestMappingsInner implements Built<MapMigrationRequestMappingsInner, MapMigrationRequestMappingsInnerBuilder> {
  @BuiltValueField(wireName: r'source_email')
  String get sourceEmail;

  @BuiltValueField(wireName: r'dest_email')
  String get destEmail;

  MapMigrationRequestMappingsInner._();

  factory MapMigrationRequestMappingsInner([void updates(MapMigrationRequestMappingsInnerBuilder b)]) = _$MapMigrationRequestMappingsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MapMigrationRequestMappingsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MapMigrationRequestMappingsInner> get serializer => _$MapMigrationRequestMappingsInnerSerializer();
}

class _$MapMigrationRequestMappingsInnerSerializer implements PrimitiveSerializer<MapMigrationRequestMappingsInner> {
  @override
  final Iterable<Type> types = const [MapMigrationRequestMappingsInner, _$MapMigrationRequestMappingsInner];

  @override
  final String wireName = r'MapMigrationRequestMappingsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MapMigrationRequestMappingsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'source_email';
    yield serializers.serialize(
      object.sourceEmail,
      specifiedType: const FullType(String),
    );
    yield r'dest_email';
    yield serializers.serialize(
      object.destEmail,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MapMigrationRequestMappingsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MapMigrationRequestMappingsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceEmail = valueDes;
          break;
        case r'dest_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destEmail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MapMigrationRequestMappingsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MapMigrationRequestMappingsInnerBuilder();
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


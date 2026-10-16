//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/migration_settings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_migration_request.g.dart';

/// UpdateMigrationRequest
///
/// Properties:
/// * [name] 
/// * [settings] 
@BuiltValue()
abstract class UpdateMigrationRequest implements Built<UpdateMigrationRequest, UpdateMigrationRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'settings')
  MigrationSettings? get settings;

  UpdateMigrationRequest._();

  factory UpdateMigrationRequest([void updates(UpdateMigrationRequestBuilder b)]) = _$UpdateMigrationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateMigrationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateMigrationRequest> get serializer => _$UpdateMigrationRequestSerializer();
}

class _$UpdateMigrationRequestSerializer implements PrimitiveSerializer<UpdateMigrationRequest> {
  @override
  final Iterable<Type> types = const [UpdateMigrationRequest, _$UpdateMigrationRequest];

  @override
  final String wireName = r'UpdateMigrationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateMigrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.settings != null) {
      yield r'settings';
      yield serializers.serialize(
        object.settings,
        specifiedType: const FullType(MigrationSettings),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateMigrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateMigrationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MigrationSettings),
          ) as MigrationSettings;
          result.settings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateMigrationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateMigrationRequestBuilder();
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


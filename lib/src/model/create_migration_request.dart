//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/migration_settings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_migration_request.g.dart';

/// CreateMigrationRequest
///
/// Properties:
/// * [name] 
/// * [credentialId] 
/// * [sourceProvider] 
/// * [settings] 
@BuiltValue()
abstract class CreateMigrationRequest implements Built<CreateMigrationRequest, CreateMigrationRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'credential_id')
  String get credentialId;

  @BuiltValueField(wireName: r'source_provider')
  String get sourceProvider;

  @BuiltValueField(wireName: r'settings')
  MigrationSettings? get settings;

  CreateMigrationRequest._();

  factory CreateMigrationRequest([void updates(CreateMigrationRequestBuilder b)]) = _$CreateMigrationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateMigrationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateMigrationRequest> get serializer => _$CreateMigrationRequestSerializer();
}

class _$CreateMigrationRequestSerializer implements PrimitiveSerializer<CreateMigrationRequest> {
  @override
  final Iterable<Type> types = const [CreateMigrationRequest, _$CreateMigrationRequest];

  @override
  final String wireName = r'CreateMigrationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateMigrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'credential_id';
    yield serializers.serialize(
      object.credentialId,
      specifiedType: const FullType(String),
    );
    yield r'source_provider';
    yield serializers.serialize(
      object.sourceProvider,
      specifiedType: const FullType(String),
    );
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
    CreateMigrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateMigrationRequestBuilder result,
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
        case r'credential_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialId = valueDes;
          break;
        case r'source_provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceProvider = valueDes;
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
  CreateMigrationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateMigrationRequestBuilder();
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


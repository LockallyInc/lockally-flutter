//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'migration_credential.g.dart';

/// MigrationCredential
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [provider] 
/// * [encryptionKeyId] 
/// * [label] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class MigrationCredential implements Built<MigrationCredential, MigrationCredentialBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'provider')
  MigrationCredentialProviderEnum get provider;
  // enum providerEnum {  imap,  google,  microsoft,  generic,  };

  @BuiltValueField(wireName: r'encryption_key_id')
  String? get encryptionKeyId;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  MigrationCredential._();

  factory MigrationCredential([void updates(MigrationCredentialBuilder b)]) = _$MigrationCredential;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MigrationCredentialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MigrationCredential> get serializer => _$MigrationCredentialSerializer();
}

class _$MigrationCredentialSerializer implements PrimitiveSerializer<MigrationCredential> {
  @override
  final Iterable<Type> types = const [MigrationCredential, _$MigrationCredential];

  @override
  final String wireName = r'MigrationCredential';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MigrationCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(MigrationCredentialProviderEnum),
    );
    if (object.encryptionKeyId != null) {
      yield r'encryption_key_id';
      yield serializers.serialize(
        object.encryptionKeyId,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MigrationCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MigrationCredentialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MigrationCredentialProviderEnum),
          ) as MigrationCredentialProviderEnum;
          result.provider = valueDes;
          break;
        case r'encryption_key_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.encryptionKeyId = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MigrationCredential deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MigrationCredentialBuilder();
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

class MigrationCredentialProviderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'imap')
  static const MigrationCredentialProviderEnum imap = _$migrationCredentialProviderEnum_imap;
  @BuiltValueEnumConst(wireName: r'google')
  static const MigrationCredentialProviderEnum google = _$migrationCredentialProviderEnum_google;
  @BuiltValueEnumConst(wireName: r'microsoft')
  static const MigrationCredentialProviderEnum microsoft = _$migrationCredentialProviderEnum_microsoft;
  @BuiltValueEnumConst(wireName: r'generic')
  static const MigrationCredentialProviderEnum generic = _$migrationCredentialProviderEnum_generic;

  static Serializer<MigrationCredentialProviderEnum> get serializer => _$migrationCredentialProviderEnumSerializer;

  const MigrationCredentialProviderEnum._(String name): super(name);

  static BuiltSet<MigrationCredentialProviderEnum> get values => _$migrationCredentialProviderEnumValues;
  static MigrationCredentialProviderEnum valueOf(String name) => _$migrationCredentialProviderEnumValueOf(name);
}


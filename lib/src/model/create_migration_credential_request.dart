//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/create_migration_credential_request_credentials.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_migration_credential_request.g.dart';

/// CreateMigrationCredentialRequest
///
/// Properties:
/// * [provider] 
/// * [label] 
/// * [credentials] 
@BuiltValue()
abstract class CreateMigrationCredentialRequest implements Built<CreateMigrationCredentialRequest, CreateMigrationCredentialRequestBuilder> {
  @BuiltValueField(wireName: r'provider')
  CreateMigrationCredentialRequestProviderEnum get provider;
  // enum providerEnum {  imap,  google,  microsoft,  generic,  };

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'credentials')
  CreateMigrationCredentialRequestCredentials get credentials;

  CreateMigrationCredentialRequest._();

  factory CreateMigrationCredentialRequest([void updates(CreateMigrationCredentialRequestBuilder b)]) = _$CreateMigrationCredentialRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateMigrationCredentialRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateMigrationCredentialRequest> get serializer => _$CreateMigrationCredentialRequestSerializer();
}

class _$CreateMigrationCredentialRequestSerializer implements PrimitiveSerializer<CreateMigrationCredentialRequest> {
  @override
  final Iterable<Type> types = const [CreateMigrationCredentialRequest, _$CreateMigrationCredentialRequest];

  @override
  final String wireName = r'CreateMigrationCredentialRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateMigrationCredentialRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(CreateMigrationCredentialRequestProviderEnum),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    yield r'credentials';
    yield serializers.serialize(
      object.credentials,
      specifiedType: const FullType(CreateMigrationCredentialRequestCredentials),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateMigrationCredentialRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateMigrationCredentialRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateMigrationCredentialRequestProviderEnum),
          ) as CreateMigrationCredentialRequestProviderEnum;
          result.provider = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'credentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateMigrationCredentialRequestCredentials),
          ) as CreateMigrationCredentialRequestCredentials;
          result.credentials.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateMigrationCredentialRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateMigrationCredentialRequestBuilder();
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

class CreateMigrationCredentialRequestProviderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'imap')
  static const CreateMigrationCredentialRequestProviderEnum imap = _$createMigrationCredentialRequestProviderEnum_imap;
  @BuiltValueEnumConst(wireName: r'google')
  static const CreateMigrationCredentialRequestProviderEnum google = _$createMigrationCredentialRequestProviderEnum_google;
  @BuiltValueEnumConst(wireName: r'microsoft')
  static const CreateMigrationCredentialRequestProviderEnum microsoft = _$createMigrationCredentialRequestProviderEnum_microsoft;
  @BuiltValueEnumConst(wireName: r'generic')
  static const CreateMigrationCredentialRequestProviderEnum generic = _$createMigrationCredentialRequestProviderEnum_generic;

  static Serializer<CreateMigrationCredentialRequestProviderEnum> get serializer => _$createMigrationCredentialRequestProviderEnumSerializer;

  const CreateMigrationCredentialRequestProviderEnum._(String name): super(name);

  static BuiltSet<CreateMigrationCredentialRequestProviderEnum> get values => _$createMigrationCredentialRequestProviderEnumValues;
  static CreateMigrationCredentialRequestProviderEnum valueOf(String name) => _$createMigrationCredentialRequestProviderEnumValueOf(name);
}


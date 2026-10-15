//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_migration_credential_request_credentials.g.dart';

/// CreateMigrationCredentialRequestCredentials
///
/// Properties:
/// * [host] 
/// * [port] 
/// * [username] 
/// * [password] 
/// * [oauthToken] 
@BuiltValue()
abstract class CreateMigrationCredentialRequestCredentials implements Built<CreateMigrationCredentialRequestCredentials, CreateMigrationCredentialRequestCredentialsBuilder> {
  @BuiltValueField(wireName: r'host')
  String get host;

  @BuiltValueField(wireName: r'port')
  int get port;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'oauth_token')
  String? get oauthToken;

  CreateMigrationCredentialRequestCredentials._();

  factory CreateMigrationCredentialRequestCredentials([void updates(CreateMigrationCredentialRequestCredentialsBuilder b)]) = _$CreateMigrationCredentialRequestCredentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateMigrationCredentialRequestCredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateMigrationCredentialRequestCredentials> get serializer => _$CreateMigrationCredentialRequestCredentialsSerializer();
}

class _$CreateMigrationCredentialRequestCredentialsSerializer implements PrimitiveSerializer<CreateMigrationCredentialRequestCredentials> {
  @override
  final Iterable<Type> types = const [CreateMigrationCredentialRequestCredentials, _$CreateMigrationCredentialRequestCredentials];

  @override
  final String wireName = r'CreateMigrationCredentialRequestCredentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateMigrationCredentialRequestCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'host';
    yield serializers.serialize(
      object.host,
      specifiedType: const FullType(String),
    );
    yield r'port';
    yield serializers.serialize(
      object.port,
      specifiedType: const FullType(int),
    );
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.oauthToken != null) {
      yield r'oauth_token';
      yield serializers.serialize(
        object.oauthToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateMigrationCredentialRequestCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateMigrationCredentialRequestCredentialsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.host = valueDes;
          break;
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.port = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'oauth_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.oauthToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateMigrationCredentialRequestCredentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateMigrationCredentialRequestCredentialsBuilder();
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


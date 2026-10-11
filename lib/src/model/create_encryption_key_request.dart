//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_encryption_key_request.g.dart';

/// CreateEncryptionKeyRequest
///
/// Properties:
/// * [mailboxEmail] 
/// * [publicKey] 
/// * [encryptedPrivateKey] 
/// * [kdfParams] 
@BuiltValue()
abstract class CreateEncryptionKeyRequest implements Built<CreateEncryptionKeyRequest, CreateEncryptionKeyRequestBuilder> {
  @BuiltValueField(wireName: r'mailbox_email')
  String get mailboxEmail;

  @BuiltValueField(wireName: r'public_key')
  String get publicKey;

  @BuiltValueField(wireName: r'encrypted_private_key')
  String get encryptedPrivateKey;

  @BuiltValueField(wireName: r'kdf_params')
  JsonObject? get kdfParams;

  CreateEncryptionKeyRequest._();

  factory CreateEncryptionKeyRequest([void updates(CreateEncryptionKeyRequestBuilder b)]) = _$CreateEncryptionKeyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateEncryptionKeyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateEncryptionKeyRequest> get serializer => _$CreateEncryptionKeyRequestSerializer();
}

class _$CreateEncryptionKeyRequestSerializer implements PrimitiveSerializer<CreateEncryptionKeyRequest> {
  @override
  final Iterable<Type> types = const [CreateEncryptionKeyRequest, _$CreateEncryptionKeyRequest];

  @override
  final String wireName = r'CreateEncryptionKeyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateEncryptionKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mailbox_email';
    yield serializers.serialize(
      object.mailboxEmail,
      specifiedType: const FullType(String),
    );
    yield r'public_key';
    yield serializers.serialize(
      object.publicKey,
      specifiedType: const FullType(String),
    );
    yield r'encrypted_private_key';
    yield serializers.serialize(
      object.encryptedPrivateKey,
      specifiedType: const FullType(String),
    );
    if (object.kdfParams != null) {
      yield r'kdf_params';
      yield serializers.serialize(
        object.kdfParams,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateEncryptionKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateEncryptionKeyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mailbox_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailboxEmail = valueDes;
          break;
        case r'public_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.publicKey = valueDes;
          break;
        case r'encrypted_private_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.encryptedPrivateKey = valueDes;
          break;
        case r'kdf_params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.kdfParams = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateEncryptionKeyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateEncryptionKeyRequestBuilder();
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


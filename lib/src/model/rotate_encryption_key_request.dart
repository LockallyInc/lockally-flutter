//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rotate_encryption_key_request.g.dart';

/// RotateEncryptionKeyRequest
///
/// Properties:
/// * [mailboxEmail] 
/// * [encryptedPrivateKey] 
/// * [kdfParams] 
@BuiltValue()
abstract class RotateEncryptionKeyRequest implements Built<RotateEncryptionKeyRequest, RotateEncryptionKeyRequestBuilder> {
  @BuiltValueField(wireName: r'mailbox_email')
  String get mailboxEmail;

  @BuiltValueField(wireName: r'encrypted_private_key')
  String get encryptedPrivateKey;

  @BuiltValueField(wireName: r'kdf_params')
  JsonObject? get kdfParams;

  RotateEncryptionKeyRequest._();

  factory RotateEncryptionKeyRequest([void updates(RotateEncryptionKeyRequestBuilder b)]) = _$RotateEncryptionKeyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RotateEncryptionKeyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RotateEncryptionKeyRequest> get serializer => _$RotateEncryptionKeyRequestSerializer();
}

class _$RotateEncryptionKeyRequestSerializer implements PrimitiveSerializer<RotateEncryptionKeyRequest> {
  @override
  final Iterable<Type> types = const [RotateEncryptionKeyRequest, _$RotateEncryptionKeyRequest];

  @override
  final String wireName = r'RotateEncryptionKeyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RotateEncryptionKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mailbox_email';
    yield serializers.serialize(
      object.mailboxEmail,
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
    RotateEncryptionKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RotateEncryptionKeyRequestBuilder result,
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
  RotateEncryptionKeyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RotateEncryptionKeyRequestBuilder();
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


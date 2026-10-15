//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_encryption_key200_response.g.dart';

/// GetEncryptionKey200Response
///
/// Properties:
/// * [id] 
/// * [email] 
/// * [publicKey] 
/// * [encryptedPrivateKey] 
/// * [kdfParams] 
/// * [version] 
@BuiltValue()
abstract class GetEncryptionKey200Response implements Built<GetEncryptionKey200Response, GetEncryptionKey200ResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'public_key')
  String? get publicKey;

  @BuiltValueField(wireName: r'encrypted_private_key')
  String? get encryptedPrivateKey;

  @BuiltValueField(wireName: r'kdf_params')
  JsonObject? get kdfParams;

  @BuiltValueField(wireName: r'version')
  int? get version;

  GetEncryptionKey200Response._();

  factory GetEncryptionKey200Response([void updates(GetEncryptionKey200ResponseBuilder b)]) = _$GetEncryptionKey200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetEncryptionKey200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetEncryptionKey200Response> get serializer => _$GetEncryptionKey200ResponseSerializer();
}

class _$GetEncryptionKey200ResponseSerializer implements PrimitiveSerializer<GetEncryptionKey200Response> {
  @override
  final Iterable<Type> types = const [GetEncryptionKey200Response, _$GetEncryptionKey200Response];

  @override
  final String wireName = r'GetEncryptionKey200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetEncryptionKey200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.publicKey != null) {
      yield r'public_key';
      yield serializers.serialize(
        object.publicKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.encryptedPrivateKey != null) {
      yield r'encrypted_private_key';
      yield serializers.serialize(
        object.encryptedPrivateKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.kdfParams != null) {
      yield r'kdf_params';
      yield serializers.serialize(
        object.kdfParams,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetEncryptionKey200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetEncryptionKey200ResponseBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
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
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetEncryptionKey200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetEncryptionKey200ResponseBuilder();
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


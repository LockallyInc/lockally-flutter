//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_encryption_recovery_request.g.dart';

/// CreateEncryptionRecoveryRequest
///
/// Properties:
/// * [mailboxEmail] 
/// * [recoveryBlob] 
@BuiltValue()
abstract class CreateEncryptionRecoveryRequest implements Built<CreateEncryptionRecoveryRequest, CreateEncryptionRecoveryRequestBuilder> {
  @BuiltValueField(wireName: r'mailbox_email')
  String get mailboxEmail;

  @BuiltValueField(wireName: r'recovery_blob')
  String get recoveryBlob;

  CreateEncryptionRecoveryRequest._();

  factory CreateEncryptionRecoveryRequest([void updates(CreateEncryptionRecoveryRequestBuilder b)]) = _$CreateEncryptionRecoveryRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateEncryptionRecoveryRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateEncryptionRecoveryRequest> get serializer => _$CreateEncryptionRecoveryRequestSerializer();
}

class _$CreateEncryptionRecoveryRequestSerializer implements PrimitiveSerializer<CreateEncryptionRecoveryRequest> {
  @override
  final Iterable<Type> types = const [CreateEncryptionRecoveryRequest, _$CreateEncryptionRecoveryRequest];

  @override
  final String wireName = r'CreateEncryptionRecoveryRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateEncryptionRecoveryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mailbox_email';
    yield serializers.serialize(
      object.mailboxEmail,
      specifiedType: const FullType(String),
    );
    yield r'recovery_blob';
    yield serializers.serialize(
      object.recoveryBlob,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateEncryptionRecoveryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateEncryptionRecoveryRequestBuilder result,
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
        case r'recovery_blob':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recoveryBlob = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateEncryptionRecoveryRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateEncryptionRecoveryRequestBuilder();
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


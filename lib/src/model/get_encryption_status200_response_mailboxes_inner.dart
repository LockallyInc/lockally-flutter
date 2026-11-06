//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_encryption_status200_response_mailboxes_inner.g.dart';

/// GetEncryptionStatus200ResponseMailboxesInner
///
/// Properties:
/// * [email] 
/// * [hasKey] 
/// * [keyCreatedAt] 
/// * [hasRecovery] 
/// * [recoverySetAt] 
@BuiltValue()
abstract class GetEncryptionStatus200ResponseMailboxesInner implements Built<GetEncryptionStatus200ResponseMailboxesInner, GetEncryptionStatus200ResponseMailboxesInnerBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'has_key')
  bool? get hasKey;

  @BuiltValueField(wireName: r'key_created_at')
  DateTime? get keyCreatedAt;

  @BuiltValueField(wireName: r'has_recovery')
  bool? get hasRecovery;

  @BuiltValueField(wireName: r'recovery_set_at')
  DateTime? get recoverySetAt;

  GetEncryptionStatus200ResponseMailboxesInner._();

  factory GetEncryptionStatus200ResponseMailboxesInner([void updates(GetEncryptionStatus200ResponseMailboxesInnerBuilder b)]) = _$GetEncryptionStatus200ResponseMailboxesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetEncryptionStatus200ResponseMailboxesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetEncryptionStatus200ResponseMailboxesInner> get serializer => _$GetEncryptionStatus200ResponseMailboxesInnerSerializer();
}

class _$GetEncryptionStatus200ResponseMailboxesInnerSerializer implements PrimitiveSerializer<GetEncryptionStatus200ResponseMailboxesInner> {
  @override
  final Iterable<Type> types = const [GetEncryptionStatus200ResponseMailboxesInner, _$GetEncryptionStatus200ResponseMailboxesInner];

  @override
  final String wireName = r'GetEncryptionStatus200ResponseMailboxesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetEncryptionStatus200ResponseMailboxesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.hasKey != null) {
      yield r'has_key';
      yield serializers.serialize(
        object.hasKey,
        specifiedType: const FullType(bool),
      );
    }
    if (object.keyCreatedAt != null) {
      yield r'key_created_at';
      yield serializers.serialize(
        object.keyCreatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.hasRecovery != null) {
      yield r'has_recovery';
      yield serializers.serialize(
        object.hasRecovery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.recoverySetAt != null) {
      yield r'recovery_set_at';
      yield serializers.serialize(
        object.recoverySetAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetEncryptionStatus200ResponseMailboxesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetEncryptionStatus200ResponseMailboxesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'has_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasKey = valueDes;
          break;
        case r'key_created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.keyCreatedAt = valueDes;
          break;
        case r'has_recovery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasRecovery = valueDes;
          break;
        case r'recovery_set_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.recoverySetAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetEncryptionStatus200ResponseMailboxesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetEncryptionStatus200ResponseMailboxesInnerBuilder();
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


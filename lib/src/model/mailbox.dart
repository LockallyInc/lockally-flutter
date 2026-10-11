//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mailbox.g.dart';

/// Mailbox
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [domainId] 
/// * [email] 
/// * [quotaBytes] 
/// * [disabled] 
/// * [disabledAt] 
/// * [softDeletedAt] 
/// * [hardDeleteAfter] 
/// * [createdAt] 
/// * [password] - ONLY present on POST response when lockally generated the password. Shown once.
@BuiltValue()
abstract class Mailbox implements Built<Mailbox, MailboxBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'domain_id')
  String get domainId;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'quota_bytes')
  int get quotaBytes;

  @BuiltValueField(wireName: r'disabled')
  bool get disabled;

  @BuiltValueField(wireName: r'disabled_at')
  DateTime? get disabledAt;

  @BuiltValueField(wireName: r'soft_deleted_at')
  DateTime? get softDeletedAt;

  @BuiltValueField(wireName: r'hard_delete_after')
  DateTime? get hardDeleteAfter;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// ONLY present on POST response when lockally generated the password. Shown once.
  @BuiltValueField(wireName: r'password')
  String? get password;

  Mailbox._();

  factory Mailbox([void updates(MailboxBuilder b)]) = _$Mailbox;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MailboxBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Mailbox> get serializer => _$MailboxSerializer();
}

class _$MailboxSerializer implements PrimitiveSerializer<Mailbox> {
  @override
  final Iterable<Type> types = const [Mailbox, _$Mailbox];

  @override
  final String wireName = r'Mailbox';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Mailbox object, {
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
    yield r'domain_id';
    yield serializers.serialize(
      object.domainId,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'quota_bytes';
    yield serializers.serialize(
      object.quotaBytes,
      specifiedType: const FullType(int),
    );
    yield r'disabled';
    yield serializers.serialize(
      object.disabled,
      specifiedType: const FullType(bool),
    );
    if (object.disabledAt != null) {
      yield r'disabled_at';
      yield serializers.serialize(
        object.disabledAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.softDeletedAt != null) {
      yield r'soft_deleted_at';
      yield serializers.serialize(
        object.softDeletedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.hardDeleteAfter != null) {
      yield r'hard_delete_after';
      yield serializers.serialize(
        object.hardDeleteAfter,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Mailbox object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MailboxBuilder result,
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
        case r'domain_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domainId = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'quota_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quotaBytes = valueDes;
          break;
        case r'disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disabled = valueDes;
          break;
        case r'disabled_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.disabledAt = valueDes;
          break;
        case r'soft_deleted_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.softDeletedAt = valueDes;
          break;
        case r'hard_delete_after':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.hardDeleteAfter = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Mailbox deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MailboxBuilder();
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


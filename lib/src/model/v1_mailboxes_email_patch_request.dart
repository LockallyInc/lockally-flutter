//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_mailboxes_email_patch_request.g.dart';

/// V1MailboxesEmailPatchRequest
///
/// Properties:
/// * [password] 
/// * [quotaBytes] 
/// * [disabled] 
@BuiltValue()
abstract class V1MailboxesEmailPatchRequest implements Built<V1MailboxesEmailPatchRequest, V1MailboxesEmailPatchRequestBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'quota_bytes')
  int? get quotaBytes;

  @BuiltValueField(wireName: r'disabled')
  bool? get disabled;

  V1MailboxesEmailPatchRequest._();

  factory V1MailboxesEmailPatchRequest([void updates(V1MailboxesEmailPatchRequestBuilder b)]) = _$V1MailboxesEmailPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1MailboxesEmailPatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1MailboxesEmailPatchRequest> get serializer => _$V1MailboxesEmailPatchRequestSerializer();
}

class _$V1MailboxesEmailPatchRequestSerializer implements PrimitiveSerializer<V1MailboxesEmailPatchRequest> {
  @override
  final Iterable<Type> types = const [V1MailboxesEmailPatchRequest, _$V1MailboxesEmailPatchRequest];

  @override
  final String wireName = r'V1MailboxesEmailPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1MailboxesEmailPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.quotaBytes != null) {
      yield r'quota_bytes';
      yield serializers.serialize(
        object.quotaBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.disabled != null) {
      yield r'disabled';
      yield serializers.serialize(
        object.disabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1MailboxesEmailPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1MailboxesEmailPatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1MailboxesEmailPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1MailboxesEmailPatchRequestBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_mailboxes_post_request.g.dart';

/// V1MailboxesPostRequest
///
/// Properties:
/// * [email] 
/// * [password] - Optional; lockally generates if absent.
/// * [quotaBytes] - 5 GB default.
@BuiltValue()
abstract class V1MailboxesPostRequest implements Built<V1MailboxesPostRequest, V1MailboxesPostRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Optional; lockally generates if absent.
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// 5 GB default.
  @BuiltValueField(wireName: r'quota_bytes')
  int? get quotaBytes;

  V1MailboxesPostRequest._();

  factory V1MailboxesPostRequest([void updates(V1MailboxesPostRequestBuilder b)]) = _$V1MailboxesPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1MailboxesPostRequestBuilder b) => b
      ..quotaBytes = 5368709120;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1MailboxesPostRequest> get serializer => _$V1MailboxesPostRequestSerializer();
}

class _$V1MailboxesPostRequestSerializer implements PrimitiveSerializer<V1MailboxesPostRequest> {
  @override
  final Iterable<Type> types = const [V1MailboxesPostRequest, _$V1MailboxesPostRequest];

  @override
  final String wireName = r'V1MailboxesPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1MailboxesPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    V1MailboxesPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1MailboxesPostRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1MailboxesPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1MailboxesPostRequestBuilder();
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


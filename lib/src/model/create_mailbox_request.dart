//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_mailbox_request.g.dart';

/// CreateMailboxRequest
///
/// Properties:
/// * [email] 
/// * [password] - Optional; lockally generates if absent.
/// * [quotaBytes] - 5 GB default.
@BuiltValue()
abstract class CreateMailboxRequest implements Built<CreateMailboxRequest, CreateMailboxRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Optional; lockally generates if absent.
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// 5 GB default.
  @BuiltValueField(wireName: r'quota_bytes')
  int? get quotaBytes;

  CreateMailboxRequest._();

  factory CreateMailboxRequest([void updates(CreateMailboxRequestBuilder b)]) = _$CreateMailboxRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateMailboxRequestBuilder b) => b
      ..quotaBytes = 5368709120;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateMailboxRequest> get serializer => _$CreateMailboxRequestSerializer();
}

class _$CreateMailboxRequestSerializer implements PrimitiveSerializer<CreateMailboxRequest> {
  @override
  final Iterable<Type> types = const [CreateMailboxRequest, _$CreateMailboxRequest];

  @override
  final String wireName = r'CreateMailboxRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateMailboxRequest object, {
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
    CreateMailboxRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateMailboxRequestBuilder result,
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
  CreateMailboxRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateMailboxRequestBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_mailbox_request.g.dart';

/// UpdateMailboxRequest
///
/// Properties:
/// * [password] 
/// * [quotaBytes] 
/// * [disabled] 
@BuiltValue()
abstract class UpdateMailboxRequest implements Built<UpdateMailboxRequest, UpdateMailboxRequestBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'quota_bytes')
  int? get quotaBytes;

  @BuiltValueField(wireName: r'disabled')
  bool? get disabled;

  UpdateMailboxRequest._();

  factory UpdateMailboxRequest([void updates(UpdateMailboxRequestBuilder b)]) = _$UpdateMailboxRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateMailboxRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateMailboxRequest> get serializer => _$UpdateMailboxRequestSerializer();
}

class _$UpdateMailboxRequestSerializer implements PrimitiveSerializer<UpdateMailboxRequest> {
  @override
  final Iterable<Type> types = const [UpdateMailboxRequest, _$UpdateMailboxRequest];

  @override
  final String wireName = r'UpdateMailboxRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateMailboxRequest object, {
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
    UpdateMailboxRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateMailboxRequestBuilder result,
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
  UpdateMailboxRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateMailboxRequestBuilder();
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


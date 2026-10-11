//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_admin_login_post_request.g.dart';

/// V1AdminLoginPostRequest
///
/// Properties:
/// * [email] 
/// * [password] 
@BuiltValue()
abstract class V1AdminLoginPostRequest implements Built<V1AdminLoginPostRequest, V1AdminLoginPostRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  V1AdminLoginPostRequest._();

  factory V1AdminLoginPostRequest([void updates(V1AdminLoginPostRequestBuilder b)]) = _$V1AdminLoginPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AdminLoginPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdminLoginPostRequest> get serializer => _$V1AdminLoginPostRequestSerializer();
}

class _$V1AdminLoginPostRequestSerializer implements PrimitiveSerializer<V1AdminLoginPostRequest> {
  @override
  final Iterable<Type> types = const [V1AdminLoginPostRequest, _$V1AdminLoginPostRequest];

  @override
  final String wireName = r'V1AdminLoginPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AdminLoginPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AdminLoginPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AdminLoginPostRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AdminLoginPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AdminLoginPostRequestBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signup_request.g.dart';

/// SignupRequest
///
/// Properties:
/// * [slug] 
/// * [displayName] 
/// * [adminEmail] 
/// * [password] 
/// * [mode] 
@BuiltValue()
abstract class SignupRequest implements Built<SignupRequest, SignupRequestBuilder> {
  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  @BuiltValueField(wireName: r'admin_email')
  String get adminEmail;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'mode')
  SignupRequestModeEnum? get mode;
  // enum modeEnum {  api,  business,  both,  };

  SignupRequest._();

  factory SignupRequest([void updates(SignupRequestBuilder b)]) = _$SignupRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignupRequestBuilder b) => b
      ..mode = SignupRequestModeEnum.valueOf('business');

  @BuiltValueSerializer(custom: true)
  static Serializer<SignupRequest> get serializer => _$SignupRequestSerializer();
}

class _$SignupRequestSerializer implements PrimitiveSerializer<SignupRequest> {
  @override
  final Iterable<Type> types = const [SignupRequest, _$SignupRequest];

  @override
  final String wireName = r'SignupRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    yield r'admin_email';
    yield serializers.serialize(
      object.adminEmail,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(SignupRequestModeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignupRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'admin_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adminEmail = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SignupRequestModeEnum),
          ) as SignupRequestModeEnum;
          result.mode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignupRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignupRequestBuilder();
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

class SignupRequestModeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'api')
  static const SignupRequestModeEnum api = _$signupRequestModeEnum_api;
  @BuiltValueEnumConst(wireName: r'business')
  static const SignupRequestModeEnum business = _$signupRequestModeEnum_business;
  @BuiltValueEnumConst(wireName: r'both')
  static const SignupRequestModeEnum both = _$signupRequestModeEnum_both;

  static Serializer<SignupRequestModeEnum> get serializer => _$signupRequestModeEnumSerializer;

  const SignupRequestModeEnum._(String name): super(name);

  static BuiltSet<SignupRequestModeEnum> get values => _$signupRequestModeEnumValues;
  static SignupRequestModeEnum valueOf(String name) => _$signupRequestModeEnumValueOf(name);
}


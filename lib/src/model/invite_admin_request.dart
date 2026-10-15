//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invite_admin_request.g.dart';

/// InviteAdminRequest
///
/// Properties:
/// * [email] 
/// * [password] 
/// * [displayName] 
/// * [role] 
@BuiltValue()
abstract class InviteAdminRequest implements Built<InviteAdminRequest, InviteAdminRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  @BuiltValueField(wireName: r'role')
  InviteAdminRequestRoleEnum? get role;
  // enum roleEnum {  admin,  viewer,  };

  InviteAdminRequest._();

  factory InviteAdminRequest([void updates(InviteAdminRequestBuilder b)]) = _$InviteAdminRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InviteAdminRequestBuilder b) => b
      ..role = InviteAdminRequestRoleEnum.valueOf('admin');

  @BuiltValueSerializer(custom: true)
  static Serializer<InviteAdminRequest> get serializer => _$InviteAdminRequestSerializer();
}

class _$InviteAdminRequestSerializer implements PrimitiveSerializer<InviteAdminRequest> {
  @override
  final Iterable<Type> types = const [InviteAdminRequest, _$InviteAdminRequest];

  @override
  final String wireName = r'InviteAdminRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InviteAdminRequest object, {
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
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(InviteAdminRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InviteAdminRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InviteAdminRequestBuilder result,
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
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InviteAdminRequestRoleEnum),
          ) as InviteAdminRequestRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InviteAdminRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InviteAdminRequestBuilder();
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

class InviteAdminRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'admin')
  static const InviteAdminRequestRoleEnum admin = _$inviteAdminRequestRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'viewer')
  static const InviteAdminRequestRoleEnum viewer = _$inviteAdminRequestRoleEnum_viewer;

  static Serializer<InviteAdminRequestRoleEnum> get serializer => _$inviteAdminRequestRoleEnumSerializer;

  const InviteAdminRequestRoleEnum._(String name): super(name);

  static BuiltSet<InviteAdminRequestRoleEnum> get values => _$inviteAdminRequestRoleEnumValues;
  static InviteAdminRequestRoleEnum valueOf(String name) => _$inviteAdminRequestRoleEnumValueOf(name);
}


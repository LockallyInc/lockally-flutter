//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_admin_request.g.dart';

/// UpdateAdminRequest
///
/// Properties:
/// * [password] 
/// * [displayName] 
/// * [role] 
/// * [disabled] 
@BuiltValue()
abstract class UpdateAdminRequest implements Built<UpdateAdminRequest, UpdateAdminRequestBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  @BuiltValueField(wireName: r'role')
  UpdateAdminRequestRoleEnum? get role;
  // enum roleEnum {  admin,  viewer,  };

  @BuiltValueField(wireName: r'disabled')
  bool? get disabled;

  UpdateAdminRequest._();

  factory UpdateAdminRequest([void updates(UpdateAdminRequestBuilder b)]) = _$UpdateAdminRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAdminRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAdminRequest> get serializer => _$UpdateAdminRequestSerializer();
}

class _$UpdateAdminRequestSerializer implements PrimitiveSerializer<UpdateAdminRequest> {
  @override
  final Iterable<Type> types = const [UpdateAdminRequest, _$UpdateAdminRequest];

  @override
  final String wireName = r'UpdateAdminRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAdminRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(UpdateAdminRequestRoleEnum),
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
    UpdateAdminRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateAdminRequestBuilder result,
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
            specifiedType: const FullType(UpdateAdminRequestRoleEnum),
          ) as UpdateAdminRequestRoleEnum;
          result.role = valueDes;
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
  UpdateAdminRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAdminRequestBuilder();
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

class UpdateAdminRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'admin')
  static const UpdateAdminRequestRoleEnum admin = _$updateAdminRequestRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'viewer')
  static const UpdateAdminRequestRoleEnum viewer = _$updateAdminRequestRoleEnum_viewer;

  static Serializer<UpdateAdminRequestRoleEnum> get serializer => _$updateAdminRequestRoleEnumSerializer;

  const UpdateAdminRequestRoleEnum._(String name): super(name);

  static BuiltSet<UpdateAdminRequestRoleEnum> get values => _$updateAdminRequestRoleEnumValues;
  static UpdateAdminRequestRoleEnum valueOf(String name) => _$updateAdminRequestRoleEnumValueOf(name);
}


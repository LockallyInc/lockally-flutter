//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_admins_id_patch_request.g.dart';

/// V1AdminsIdPatchRequest
///
/// Properties:
/// * [password] 
/// * [displayName] 
/// * [role] 
/// * [disabled] 
@BuiltValue()
abstract class V1AdminsIdPatchRequest implements Built<V1AdminsIdPatchRequest, V1AdminsIdPatchRequestBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  @BuiltValueField(wireName: r'role')
  V1AdminsIdPatchRequestRoleEnum? get role;
  // enum roleEnum {  admin,  viewer,  };

  @BuiltValueField(wireName: r'disabled')
  bool? get disabled;

  V1AdminsIdPatchRequest._();

  factory V1AdminsIdPatchRequest([void updates(V1AdminsIdPatchRequestBuilder b)]) = _$V1AdminsIdPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AdminsIdPatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdminsIdPatchRequest> get serializer => _$V1AdminsIdPatchRequestSerializer();
}

class _$V1AdminsIdPatchRequestSerializer implements PrimitiveSerializer<V1AdminsIdPatchRequest> {
  @override
  final Iterable<Type> types = const [V1AdminsIdPatchRequest, _$V1AdminsIdPatchRequest];

  @override
  final String wireName = r'V1AdminsIdPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AdminsIdPatchRequest object, {
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
        specifiedType: const FullType(V1AdminsIdPatchRequestRoleEnum),
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
    V1AdminsIdPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AdminsIdPatchRequestBuilder result,
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
            specifiedType: const FullType(V1AdminsIdPatchRequestRoleEnum),
          ) as V1AdminsIdPatchRequestRoleEnum;
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
  V1AdminsIdPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AdminsIdPatchRequestBuilder();
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

class V1AdminsIdPatchRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'admin')
  static const V1AdminsIdPatchRequestRoleEnum admin = _$v1AdminsIdPatchRequestRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'viewer')
  static const V1AdminsIdPatchRequestRoleEnum viewer = _$v1AdminsIdPatchRequestRoleEnum_viewer;

  static Serializer<V1AdminsIdPatchRequestRoleEnum> get serializer => _$v1AdminsIdPatchRequestRoleEnumSerializer;

  const V1AdminsIdPatchRequestRoleEnum._(String name): super(name);

  static BuiltSet<V1AdminsIdPatchRequestRoleEnum> get values => _$v1AdminsIdPatchRequestRoleEnumValues;
  static V1AdminsIdPatchRequestRoleEnum valueOf(String name) => _$v1AdminsIdPatchRequestRoleEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_user_request.g.dart';

/// UpdateUserRequest
///
/// Properties:
/// * [firstName] 
/// * [lastName] 
/// * [title] 
/// * [department] 
/// * [status] 
@BuiltValue()
abstract class UpdateUserRequest implements Built<UpdateUserRequest, UpdateUserRequestBuilder> {
  @BuiltValueField(wireName: r'first_name')
  String? get firstName;

  @BuiltValueField(wireName: r'last_name')
  String? get lastName;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'department')
  String? get department;

  @BuiltValueField(wireName: r'status')
  UpdateUserRequestStatusEnum? get status;
  // enum statusEnum {  active,  suspended,  deprovisioned,  };

  UpdateUserRequest._();

  factory UpdateUserRequest([void updates(UpdateUserRequestBuilder b)]) = _$UpdateUserRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateUserRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateUserRequest> get serializer => _$UpdateUserRequestSerializer();
}

class _$UpdateUserRequestSerializer implements PrimitiveSerializer<UpdateUserRequest> {
  @override
  final Iterable<Type> types = const [UpdateUserRequest, _$UpdateUserRequest];

  @override
  final String wireName = r'UpdateUserRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firstName != null) {
      yield r'first_name';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'last_name';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.department != null) {
      yield r'department';
      yield serializers.serialize(
        object.department,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(UpdateUserRequestStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateUserRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'department':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.department = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateUserRequestStatusEnum),
          ) as UpdateUserRequestStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateUserRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateUserRequestBuilder();
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

class UpdateUserRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const UpdateUserRequestStatusEnum active = _$updateUserRequestStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'suspended')
  static const UpdateUserRequestStatusEnum suspended = _$updateUserRequestStatusEnum_suspended;
  @BuiltValueEnumConst(wireName: r'deprovisioned')
  static const UpdateUserRequestStatusEnum deprovisioned = _$updateUserRequestStatusEnum_deprovisioned;

  static Serializer<UpdateUserRequestStatusEnum> get serializer => _$updateUserRequestStatusEnumSerializer;

  const UpdateUserRequestStatusEnum._(String name): super(name);

  static BuiltSet<UpdateUserRequestStatusEnum> get values => _$updateUserRequestStatusEnumValues;
  static UpdateUserRequestStatusEnum valueOf(String name) => _$updateUserRequestStatusEnumValueOf(name);
}


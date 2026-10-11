//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_shared_member_request.g.dart';

/// AddSharedMemberRequest
///
/// Properties:
/// * [memberEmail] 
/// * [role] 
@BuiltValue()
abstract class AddSharedMemberRequest implements Built<AddSharedMemberRequest, AddSharedMemberRequestBuilder> {
  @BuiltValueField(wireName: r'member_email')
  String get memberEmail;

  @BuiltValueField(wireName: r'role')
  AddSharedMemberRequestRoleEnum? get role;
  // enum roleEnum {  manager,  member,  };

  AddSharedMemberRequest._();

  factory AddSharedMemberRequest([void updates(AddSharedMemberRequestBuilder b)]) = _$AddSharedMemberRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddSharedMemberRequestBuilder b) => b
      ..role = AddSharedMemberRequestRoleEnum.valueOf('member');

  @BuiltValueSerializer(custom: true)
  static Serializer<AddSharedMemberRequest> get serializer => _$AddSharedMemberRequestSerializer();
}

class _$AddSharedMemberRequestSerializer implements PrimitiveSerializer<AddSharedMemberRequest> {
  @override
  final Iterable<Type> types = const [AddSharedMemberRequest, _$AddSharedMemberRequest];

  @override
  final String wireName = r'AddSharedMemberRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddSharedMemberRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'member_email';
    yield serializers.serialize(
      object.memberEmail,
      specifiedType: const FullType(String),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(AddSharedMemberRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddSharedMemberRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddSharedMemberRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'member_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.memberEmail = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AddSharedMemberRequestRoleEnum),
          ) as AddSharedMemberRequestRoleEnum;
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
  AddSharedMemberRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddSharedMemberRequestBuilder();
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

class AddSharedMemberRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'manager')
  static const AddSharedMemberRequestRoleEnum manager = _$addSharedMemberRequestRoleEnum_manager;
  @BuiltValueEnumConst(wireName: r'member')
  static const AddSharedMemberRequestRoleEnum member = _$addSharedMemberRequestRoleEnum_member;

  static Serializer<AddSharedMemberRequestRoleEnum> get serializer => _$addSharedMemberRequestRoleEnumSerializer;

  const AddSharedMemberRequestRoleEnum._(String name): super(name);

  static BuiltSet<AddSharedMemberRequestRoleEnum> get values => _$addSharedMemberRequestRoleEnumValues;
  static AddSharedMemberRequestRoleEnum valueOf(String name) => _$addSharedMemberRequestRoleEnumValueOf(name);
}


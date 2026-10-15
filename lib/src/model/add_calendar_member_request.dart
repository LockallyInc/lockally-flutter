//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_calendar_member_request.g.dart';

/// AddCalendarMemberRequest
///
/// Properties:
/// * [userEmail] 
/// * [role] 
@BuiltValue()
abstract class AddCalendarMemberRequest implements Built<AddCalendarMemberRequest, AddCalendarMemberRequestBuilder> {
  @BuiltValueField(wireName: r'user_email')
  String get userEmail;

  @BuiltValueField(wireName: r'role')
  AddCalendarMemberRequestRoleEnum? get role;
  // enum roleEnum {  viewer,  editor,  owner,  };

  AddCalendarMemberRequest._();

  factory AddCalendarMemberRequest([void updates(AddCalendarMemberRequestBuilder b)]) = _$AddCalendarMemberRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddCalendarMemberRequestBuilder b) => b
      ..role = AddCalendarMemberRequestRoleEnum.valueOf('viewer');

  @BuiltValueSerializer(custom: true)
  static Serializer<AddCalendarMemberRequest> get serializer => _$AddCalendarMemberRequestSerializer();
}

class _$AddCalendarMemberRequestSerializer implements PrimitiveSerializer<AddCalendarMemberRequest> {
  @override
  final Iterable<Type> types = const [AddCalendarMemberRequest, _$AddCalendarMemberRequest];

  @override
  final String wireName = r'AddCalendarMemberRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddCalendarMemberRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user_email';
    yield serializers.serialize(
      object.userEmail,
      specifiedType: const FullType(String),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(AddCalendarMemberRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddCalendarMemberRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddCalendarMemberRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userEmail = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AddCalendarMemberRequestRoleEnum),
          ) as AddCalendarMemberRequestRoleEnum;
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
  AddCalendarMemberRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddCalendarMemberRequestBuilder();
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

class AddCalendarMemberRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'viewer')
  static const AddCalendarMemberRequestRoleEnum viewer = _$addCalendarMemberRequestRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'editor')
  static const AddCalendarMemberRequestRoleEnum editor = _$addCalendarMemberRequestRoleEnum_editor;
  @BuiltValueEnumConst(wireName: r'owner')
  static const AddCalendarMemberRequestRoleEnum owner = _$addCalendarMemberRequestRoleEnum_owner;

  static Serializer<AddCalendarMemberRequestRoleEnum> get serializer => _$addCalendarMemberRequestRoleEnumSerializer;

  const AddCalendarMemberRequestRoleEnum._(String name): super(name);

  static BuiltSet<AddCalendarMemberRequestRoleEnum> get values => _$addCalendarMemberRequestRoleEnumValues;
  static AddCalendarMemberRequestRoleEnum valueOf(String name) => _$addCalendarMemberRequestRoleEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_calendar_member_request.g.dart';

/// UpdateCalendarMemberRequest
///
/// Properties:
/// * [role] 
@BuiltValue()
abstract class UpdateCalendarMemberRequest implements Built<UpdateCalendarMemberRequest, UpdateCalendarMemberRequestBuilder> {
  @BuiltValueField(wireName: r'role')
  UpdateCalendarMemberRequestRoleEnum get role;
  // enum roleEnum {  viewer,  editor,  owner,  };

  UpdateCalendarMemberRequest._();

  factory UpdateCalendarMemberRequest([void updates(UpdateCalendarMemberRequestBuilder b)]) = _$UpdateCalendarMemberRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateCalendarMemberRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateCalendarMemberRequest> get serializer => _$UpdateCalendarMemberRequestSerializer();
}

class _$UpdateCalendarMemberRequestSerializer implements PrimitiveSerializer<UpdateCalendarMemberRequest> {
  @override
  final Iterable<Type> types = const [UpdateCalendarMemberRequest, _$UpdateCalendarMemberRequest];

  @override
  final String wireName = r'UpdateCalendarMemberRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateCalendarMemberRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(UpdateCalendarMemberRequestRoleEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateCalendarMemberRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateCalendarMemberRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateCalendarMemberRequestRoleEnum),
          ) as UpdateCalendarMemberRequestRoleEnum;
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
  UpdateCalendarMemberRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateCalendarMemberRequestBuilder();
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

class UpdateCalendarMemberRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'viewer')
  static const UpdateCalendarMemberRequestRoleEnum viewer = _$updateCalendarMemberRequestRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'editor')
  static const UpdateCalendarMemberRequestRoleEnum editor = _$updateCalendarMemberRequestRoleEnum_editor;
  @BuiltValueEnumConst(wireName: r'owner')
  static const UpdateCalendarMemberRequestRoleEnum owner = _$updateCalendarMemberRequestRoleEnum_owner;

  static Serializer<UpdateCalendarMemberRequestRoleEnum> get serializer => _$updateCalendarMemberRequestRoleEnumSerializer;

  const UpdateCalendarMemberRequestRoleEnum._(String name): super(name);

  static BuiltSet<UpdateCalendarMemberRequestRoleEnum> get values => _$updateCalendarMemberRequestRoleEnumValues;
  static UpdateCalendarMemberRequestRoleEnum valueOf(String name) => _$updateCalendarMemberRequestRoleEnumValueOf(name);
}


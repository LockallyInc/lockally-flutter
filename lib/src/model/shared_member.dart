//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shared_member.g.dart';

/// SharedMember
///
/// Properties:
/// * [id] 
/// * [mailboxId] 
/// * [tenantId] 
/// * [memberEmail] 
/// * [role] 
/// * [createdAt] 
@BuiltValue()
abstract class SharedMember implements Built<SharedMember, SharedMemberBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'mailbox_id')
  String get mailboxId;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'member_email')
  String get memberEmail;

  @BuiltValueField(wireName: r'role')
  SharedMemberRoleEnum get role;
  // enum roleEnum {  manager,  member,  };

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  SharedMember._();

  factory SharedMember([void updates(SharedMemberBuilder b)]) = _$SharedMember;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SharedMemberBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SharedMember> get serializer => _$SharedMemberSerializer();
}

class _$SharedMemberSerializer implements PrimitiveSerializer<SharedMember> {
  @override
  final Iterable<Type> types = const [SharedMember, _$SharedMember];

  @override
  final String wireName = r'SharedMember';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SharedMember object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'mailbox_id';
    yield serializers.serialize(
      object.mailboxId,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'member_email';
    yield serializers.serialize(
      object.memberEmail,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(SharedMemberRoleEnum),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SharedMember object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SharedMemberBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'mailbox_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailboxId = valueDes;
          break;
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
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
            specifiedType: const FullType(SharedMemberRoleEnum),
          ) as SharedMemberRoleEnum;
          result.role = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SharedMember deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SharedMemberBuilder();
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

class SharedMemberRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'manager')
  static const SharedMemberRoleEnum manager = _$sharedMemberRoleEnum_manager;
  @BuiltValueEnumConst(wireName: r'member')
  static const SharedMemberRoleEnum member = _$sharedMemberRoleEnum_member;

  static Serializer<SharedMemberRoleEnum> get serializer => _$sharedMemberRoleEnumSerializer;

  const SharedMemberRoleEnum._(String name): super(name);

  static BuiltSet<SharedMemberRoleEnum> get values => _$sharedMemberRoleEnumValues;
  static SharedMemberRoleEnum valueOf(String name) => _$sharedMemberRoleEnumValueOf(name);
}


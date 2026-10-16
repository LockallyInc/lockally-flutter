//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contact_list.g.dart';

/// ContactList
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [name] 
/// * [description] 
/// * [visibility] 
/// * [memberCount] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class ContactList implements Built<ContactList, ContactListBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'visibility')
  ContactListVisibilityEnum get visibility;
  // enum visibilityEnum {  company_wide,  restricted,  };

  @BuiltValueField(wireName: r'member_count')
  int get memberCount;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  ContactList._();

  factory ContactList([void updates(ContactListBuilder b)]) = _$ContactList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContactListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContactList> get serializer => _$ContactListSerializer();
}

class _$ContactListSerializer implements PrimitiveSerializer<ContactList> {
  @override
  final Iterable<Type> types = const [ContactList, _$ContactList];

  @override
  final String wireName = r'ContactList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContactList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'visibility';
    yield serializers.serialize(
      object.visibility,
      specifiedType: const FullType(ContactListVisibilityEnum),
    );
    yield r'member_count';
    yield serializers.serialize(
      object.memberCount,
      specifiedType: const FullType(int),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ContactList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContactListBuilder result,
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
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContactListVisibilityEnum),
          ) as ContactListVisibilityEnum;
          result.visibility = valueDes;
          break;
        case r'member_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.memberCount = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContactList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContactListBuilder();
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

class ContactListVisibilityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'company_wide')
  static const ContactListVisibilityEnum companyWide = _$contactListVisibilityEnum_companyWide;
  @BuiltValueEnumConst(wireName: r'restricted')
  static const ContactListVisibilityEnum restricted = _$contactListVisibilityEnum_restricted;

  static Serializer<ContactListVisibilityEnum> get serializer => _$contactListVisibilityEnumSerializer;

  const ContactListVisibilityEnum._(String name): super(name);

  static BuiltSet<ContactListVisibilityEnum> get values => _$contactListVisibilityEnumValues;
  static ContactListVisibilityEnum valueOf(String name) => _$contactListVisibilityEnumValueOf(name);
}


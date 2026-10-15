//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contact_lookup_contact.g.dart';

/// ContactLookupContact
///
/// Properties:
/// * [name] 
/// * [company] 
/// * [department] 
/// * [role] 
/// * [contactType] 
/// * [notes] 
@BuiltValue()
abstract class ContactLookupContact implements Built<ContactLookupContact, ContactLookupContactBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'company')
  String? get company;

  @BuiltValueField(wireName: r'department')
  String? get department;

  @BuiltValueField(wireName: r'role')
  String? get role;

  @BuiltValueField(wireName: r'contact_type')
  String? get contactType;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  ContactLookupContact._();

  factory ContactLookupContact([void updates(ContactLookupContactBuilder b)]) = _$ContactLookupContact;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContactLookupContactBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContactLookupContact> get serializer => _$ContactLookupContactSerializer();
}

class _$ContactLookupContactSerializer implements PrimitiveSerializer<ContactLookupContact> {
  @override
  final Iterable<Type> types = const [ContactLookupContact, _$ContactLookupContact];

  @override
  final String wireName = r'ContactLookupContact';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContactLookupContact object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.company != null) {
      yield r'company';
      yield serializers.serialize(
        object.company,
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
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactType != null) {
      yield r'contact_type';
      yield serializers.serialize(
        object.contactType,
        specifiedType: const FullType(String),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContactLookupContact object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContactLookupContactBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'company':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.company = valueDes;
          break;
        case r'department':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.department = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        case r'contact_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactType = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContactLookupContact deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContactLookupContactBuilder();
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


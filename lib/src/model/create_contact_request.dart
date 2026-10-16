//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_contact_request.g.dart';

/// CreateContactRequest
///
/// Properties:
/// * [name] 
/// * [email] 
/// * [phone] 
/// * [company] 
/// * [notes] 
/// * [contactType] 
/// * [department] 
/// * [role] 
@BuiltValue()
abstract class CreateContactRequest implements Built<CreateContactRequest, CreateContactRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'company')
  String? get company;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'contact_type')
  CreateContactRequestContactTypeEnum? get contactType;
  // enum contactTypeEnum {  internal,  external,  };

  @BuiltValueField(wireName: r'department')
  String? get department;

  @BuiltValueField(wireName: r'role')
  String? get role;

  CreateContactRequest._();

  factory CreateContactRequest([void updates(CreateContactRequestBuilder b)]) = _$CreateContactRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateContactRequestBuilder b) => b
      ..contactType = CreateContactRequestContactTypeEnum.valueOf('external');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateContactRequest> get serializer => _$CreateContactRequestSerializer();
}

class _$CreateContactRequestSerializer implements PrimitiveSerializer<CreateContactRequest> {
  @override
  final Iterable<Type> types = const [CreateContactRequest, _$CreateContactRequest];

  @override
  final String wireName = r'CreateContactRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateContactRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
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
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactType != null) {
      yield r'contact_type';
      yield serializers.serialize(
        object.contactType,
        specifiedType: const FullType(CreateContactRequestContactTypeEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateContactRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateContactRequestBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'company':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.company = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        case r'contact_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateContactRequestContactTypeEnum),
          ) as CreateContactRequestContactTypeEnum;
          result.contactType = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateContactRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateContactRequestBuilder();
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

class CreateContactRequestContactTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'internal')
  static const CreateContactRequestContactTypeEnum internal = _$createContactRequestContactTypeEnum_internal;
  @BuiltValueEnumConst(wireName: r'external')
  static const CreateContactRequestContactTypeEnum external_ = _$createContactRequestContactTypeEnum_external_;

  static Serializer<CreateContactRequestContactTypeEnum> get serializer => _$createContactRequestContactTypeEnumSerializer;

  const CreateContactRequestContactTypeEnum._(String name): super(name);

  static BuiltSet<CreateContactRequestContactTypeEnum> get values => _$createContactRequestContactTypeEnumValues;
  static CreateContactRequestContactTypeEnum valueOf(String name) => _$createContactRequestContactTypeEnumValueOf(name);
}


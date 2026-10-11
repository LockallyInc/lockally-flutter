//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_contact_request.g.dart';

/// UpdateContactRequest
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
/// * [status] 
@BuiltValue()
abstract class UpdateContactRequest implements Built<UpdateContactRequest, UpdateContactRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'company')
  String? get company;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'contact_type')
  UpdateContactRequestContactTypeEnum? get contactType;
  // enum contactTypeEnum {  internal,  external,  };

  @BuiltValueField(wireName: r'department')
  String? get department;

  @BuiltValueField(wireName: r'role')
  String? get role;

  @BuiltValueField(wireName: r'status')
  UpdateContactRequestStatusEnum? get status;
  // enum statusEnum {  active,  disabled,  };

  UpdateContactRequest._();

  factory UpdateContactRequest([void updates(UpdateContactRequestBuilder b)]) = _$UpdateContactRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateContactRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateContactRequest> get serializer => _$UpdateContactRequestSerializer();
}

class _$UpdateContactRequestSerializer implements PrimitiveSerializer<UpdateContactRequest> {
  @override
  final Iterable<Type> types = const [UpdateContactRequest, _$UpdateContactRequest];

  @override
  final String wireName = r'UpdateContactRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateContactRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
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
        specifiedType: const FullType(UpdateContactRequestContactTypeEnum),
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(UpdateContactRequestStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateContactRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateContactRequestBuilder result,
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
            specifiedType: const FullType(UpdateContactRequestContactTypeEnum),
          ) as UpdateContactRequestContactTypeEnum;
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateContactRequestStatusEnum),
          ) as UpdateContactRequestStatusEnum;
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
  UpdateContactRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateContactRequestBuilder();
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

class UpdateContactRequestContactTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'internal')
  static const UpdateContactRequestContactTypeEnum internal = _$updateContactRequestContactTypeEnum_internal;
  @BuiltValueEnumConst(wireName: r'external')
  static const UpdateContactRequestContactTypeEnum external_ = _$updateContactRequestContactTypeEnum_external_;

  static Serializer<UpdateContactRequestContactTypeEnum> get serializer => _$updateContactRequestContactTypeEnumSerializer;

  const UpdateContactRequestContactTypeEnum._(String name): super(name);

  static BuiltSet<UpdateContactRequestContactTypeEnum> get values => _$updateContactRequestContactTypeEnumValues;
  static UpdateContactRequestContactTypeEnum valueOf(String name) => _$updateContactRequestContactTypeEnumValueOf(name);
}

class UpdateContactRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const UpdateContactRequestStatusEnum active = _$updateContactRequestStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const UpdateContactRequestStatusEnum disabled = _$updateContactRequestStatusEnum_disabled;

  static Serializer<UpdateContactRequestStatusEnum> get serializer => _$updateContactRequestStatusEnumSerializer;

  const UpdateContactRequestStatusEnum._(String name): super(name);

  static BuiltSet<UpdateContactRequestStatusEnum> get values => _$updateContactRequestStatusEnumValues;
  static UpdateContactRequestStatusEnum valueOf(String name) => _$updateContactRequestStatusEnumValueOf(name);
}


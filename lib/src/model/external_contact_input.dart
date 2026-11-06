//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_contact_input.g.dart';

/// ExternalContactInput
///
/// Properties:
/// * [email] 
/// * [name] - Defaults to the email address when empty.
/// * [phone] 
/// * [company] 
/// * [notes] 
/// * [contactType] 
/// * [department] 
/// * [role] 
/// * [status] 
@BuiltValue(instantiable: false)
abstract class ExternalContactInput  {
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Defaults to the email address when empty.
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'company')
  String? get company;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'contact_type')
  ExternalContactInputContactTypeEnum? get contactType;
  // enum contactTypeEnum {  internal,  external,  };

  @BuiltValueField(wireName: r'department')
  String? get department;

  @BuiltValueField(wireName: r'role')
  String? get role;

  @BuiltValueField(wireName: r'status')
  ExternalContactInputStatusEnum? get status;
  // enum statusEnum {  active,  disabled,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalContactInput> get serializer => _$ExternalContactInputSerializer();
}

class _$ExternalContactInputSerializer implements PrimitiveSerializer<ExternalContactInput> {
  @override
  final Iterable<Type> types = const [ExternalContactInput];

  @override
  final String wireName = r'ExternalContactInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalContactInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
        specifiedType: const FullType(ExternalContactInputContactTypeEnum),
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
        specifiedType: const FullType(ExternalContactInputStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalContactInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ExternalContactInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ExternalContactInput)) as $ExternalContactInput;
  }
}

/// a concrete implementation of [ExternalContactInput], since [ExternalContactInput] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ExternalContactInput implements ExternalContactInput, Built<$ExternalContactInput, $ExternalContactInputBuilder> {
  $ExternalContactInput._();

  factory $ExternalContactInput([void Function($ExternalContactInputBuilder)? updates]) = _$$ExternalContactInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ExternalContactInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ExternalContactInput> get serializer => _$$ExternalContactInputSerializer();
}

class _$$ExternalContactInputSerializer implements PrimitiveSerializer<$ExternalContactInput> {
  @override
  final Iterable<Type> types = const [$ExternalContactInput, _$$ExternalContactInput];

  @override
  final String wireName = r'$ExternalContactInput';

  @override
  Object serialize(
    Serializers serializers,
    $ExternalContactInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ExternalContactInput))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExternalContactInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
            specifiedType: const FullType(ExternalContactInputContactTypeEnum),
          ) as ExternalContactInputContactTypeEnum;
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
            specifiedType: const FullType(ExternalContactInputStatusEnum),
          ) as ExternalContactInputStatusEnum;
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
  $ExternalContactInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ExternalContactInputBuilder();
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

class ExternalContactInputContactTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'internal')
  static const ExternalContactInputContactTypeEnum internal = _$externalContactInputContactTypeEnum_internal;
  @BuiltValueEnumConst(wireName: r'external')
  static const ExternalContactInputContactTypeEnum external_ = _$externalContactInputContactTypeEnum_external_;

  static Serializer<ExternalContactInputContactTypeEnum> get serializer => _$externalContactInputContactTypeEnumSerializer;

  const ExternalContactInputContactTypeEnum._(String name): super(name);

  static BuiltSet<ExternalContactInputContactTypeEnum> get values => _$externalContactInputContactTypeEnumValues;
  static ExternalContactInputContactTypeEnum valueOf(String name) => _$externalContactInputContactTypeEnumValueOf(name);
}

class ExternalContactInputStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const ExternalContactInputStatusEnum active = _$externalContactInputStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const ExternalContactInputStatusEnum disabled = _$externalContactInputStatusEnum_disabled;

  static Serializer<ExternalContactInputStatusEnum> get serializer => _$externalContactInputStatusEnumSerializer;

  const ExternalContactInputStatusEnum._(String name): super(name);

  static BuiltSet<ExternalContactInputStatusEnum> get values => _$externalContactInputStatusEnumValues;
  static ExternalContactInputStatusEnum valueOf(String name) => _$externalContactInputStatusEnumValueOf(name);
}


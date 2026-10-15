//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_contact_list_request.g.dart';

/// CreateContactListRequest
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [visibility] 
@BuiltValue()
abstract class CreateContactListRequest implements Built<CreateContactListRequest, CreateContactListRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'visibility')
  CreateContactListRequestVisibilityEnum? get visibility;
  // enum visibilityEnum {  company_wide,  restricted,  };

  CreateContactListRequest._();

  factory CreateContactListRequest([void updates(CreateContactListRequestBuilder b)]) = _$CreateContactListRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateContactListRequestBuilder b) => b
      ..visibility = CreateContactListRequestVisibilityEnum.valueOf('company_wide');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateContactListRequest> get serializer => _$CreateContactListRequestSerializer();
}

class _$CreateContactListRequestSerializer implements PrimitiveSerializer<CreateContactListRequest> {
  @override
  final Iterable<Type> types = const [CreateContactListRequest, _$CreateContactListRequest];

  @override
  final String wireName = r'CreateContactListRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateContactListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(CreateContactListRequestVisibilityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateContactListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateContactListRequestBuilder result,
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
            specifiedType: const FullType(CreateContactListRequestVisibilityEnum),
          ) as CreateContactListRequestVisibilityEnum;
          result.visibility = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateContactListRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateContactListRequestBuilder();
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

class CreateContactListRequestVisibilityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'company_wide')
  static const CreateContactListRequestVisibilityEnum companyWide = _$createContactListRequestVisibilityEnum_companyWide;
  @BuiltValueEnumConst(wireName: r'restricted')
  static const CreateContactListRequestVisibilityEnum restricted = _$createContactListRequestVisibilityEnum_restricted;

  static Serializer<CreateContactListRequestVisibilityEnum> get serializer => _$createContactListRequestVisibilityEnumSerializer;

  const CreateContactListRequestVisibilityEnum._(String name): super(name);

  static BuiltSet<CreateContactListRequestVisibilityEnum> get values => _$createContactListRequestVisibilityEnumValues;
  static CreateContactListRequestVisibilityEnum valueOf(String name) => _$createContactListRequestVisibilityEnumValueOf(name);
}


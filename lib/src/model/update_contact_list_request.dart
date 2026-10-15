//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_contact_list_request.g.dart';

/// UpdateContactListRequest
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [visibility] 
@BuiltValue()
abstract class UpdateContactListRequest implements Built<UpdateContactListRequest, UpdateContactListRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'visibility')
  UpdateContactListRequestVisibilityEnum? get visibility;
  // enum visibilityEnum {  company_wide,  restricted,  };

  UpdateContactListRequest._();

  factory UpdateContactListRequest([void updates(UpdateContactListRequestBuilder b)]) = _$UpdateContactListRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateContactListRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateContactListRequest> get serializer => _$UpdateContactListRequestSerializer();
}

class _$UpdateContactListRequestSerializer implements PrimitiveSerializer<UpdateContactListRequest> {
  @override
  final Iterable<Type> types = const [UpdateContactListRequest, _$UpdateContactListRequest];

  @override
  final String wireName = r'UpdateContactListRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateContactListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
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
        specifiedType: const FullType(UpdateContactListRequestVisibilityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateContactListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateContactListRequestBuilder result,
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
            specifiedType: const FullType(UpdateContactListRequestVisibilityEnum),
          ) as UpdateContactListRequestVisibilityEnum;
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
  UpdateContactListRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateContactListRequestBuilder();
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

class UpdateContactListRequestVisibilityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'company_wide')
  static const UpdateContactListRequestVisibilityEnum companyWide = _$updateContactListRequestVisibilityEnum_companyWide;
  @BuiltValueEnumConst(wireName: r'restricted')
  static const UpdateContactListRequestVisibilityEnum restricted = _$updateContactListRequestVisibilityEnum_restricted;

  static Serializer<UpdateContactListRequestVisibilityEnum> get serializer => _$updateContactListRequestVisibilityEnumSerializer;

  const UpdateContactListRequestVisibilityEnum._(String name): super(name);

  static BuiltSet<UpdateContactListRequestVisibilityEnum> get values => _$updateContactListRequestVisibilityEnumValues;
  static UpdateContactListRequestVisibilityEnum valueOf(String name) => _$updateContactListRequestVisibilityEnumValueOf(name);
}


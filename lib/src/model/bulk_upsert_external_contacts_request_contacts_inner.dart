//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/external_contact_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_upsert_external_contacts_request_contacts_inner.g.dart';

/// BulkUpsertExternalContactsRequestContactsInner
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
/// * [externalId] 
@BuiltValue()
abstract class BulkUpsertExternalContactsRequestContactsInner implements ExternalContactInput, Built<BulkUpsertExternalContactsRequestContactsInner, BulkUpsertExternalContactsRequestContactsInnerBuilder> {
  @BuiltValueField(wireName: r'external_id')
  String get externalId;

  BulkUpsertExternalContactsRequestContactsInner._();

  factory BulkUpsertExternalContactsRequestContactsInner([void updates(BulkUpsertExternalContactsRequestContactsInnerBuilder b)]) = _$BulkUpsertExternalContactsRequestContactsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkUpsertExternalContactsRequestContactsInnerBuilder b) => b
      ..contactType = ExternalContactInputContactTypeEnum.valueOf('external')
      ..status = ExternalContactInputStatusEnum.valueOf('active');

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkUpsertExternalContactsRequestContactsInner> get serializer => _$BulkUpsertExternalContactsRequestContactsInnerSerializer();
}

class _$BulkUpsertExternalContactsRequestContactsInnerSerializer implements PrimitiveSerializer<BulkUpsertExternalContactsRequestContactsInner> {
  @override
  final Iterable<Type> types = const [BulkUpsertExternalContactsRequestContactsInner, _$BulkUpsertExternalContactsRequestContactsInner];

  @override
  final String wireName = r'BulkUpsertExternalContactsRequestContactsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkUpsertExternalContactsRequestContactsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
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
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'external_id';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    if (object.company != null) {
      yield r'company';
      yield serializers.serialize(
        object.company,
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
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
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
    BulkUpsertExternalContactsRequestContactsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkUpsertExternalContactsRequestContactsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'external_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'company':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.company = valueDes;
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
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
  BulkUpsertExternalContactsRequestContactsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkUpsertExternalContactsRequestContactsInnerBuilder();
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

class BulkUpsertExternalContactsRequestContactsInnerContactTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'internal')
  static const BulkUpsertExternalContactsRequestContactsInnerContactTypeEnum internal = _$bulkUpsertExternalContactsRequestContactsInnerContactTypeEnum_internal;
  @BuiltValueEnumConst(wireName: r'external')
  static const BulkUpsertExternalContactsRequestContactsInnerContactTypeEnum external_ = _$bulkUpsertExternalContactsRequestContactsInnerContactTypeEnum_external_;

  static Serializer<BulkUpsertExternalContactsRequestContactsInnerContactTypeEnum> get serializer => _$bulkUpsertExternalContactsRequestContactsInnerContactTypeEnumSerializer;

  const BulkUpsertExternalContactsRequestContactsInnerContactTypeEnum._(String name): super(name);

  static BuiltSet<BulkUpsertExternalContactsRequestContactsInnerContactTypeEnum> get values => _$bulkUpsertExternalContactsRequestContactsInnerContactTypeEnumValues;
  static BulkUpsertExternalContactsRequestContactsInnerContactTypeEnum valueOf(String name) => _$bulkUpsertExternalContactsRequestContactsInnerContactTypeEnumValueOf(name);
}

class BulkUpsertExternalContactsRequestContactsInnerStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const BulkUpsertExternalContactsRequestContactsInnerStatusEnum active = _$bulkUpsertExternalContactsRequestContactsInnerStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const BulkUpsertExternalContactsRequestContactsInnerStatusEnum disabled = _$bulkUpsertExternalContactsRequestContactsInnerStatusEnum_disabled;

  static Serializer<BulkUpsertExternalContactsRequestContactsInnerStatusEnum> get serializer => _$bulkUpsertExternalContactsRequestContactsInnerStatusEnumSerializer;

  const BulkUpsertExternalContactsRequestContactsInnerStatusEnum._(String name): super(name);

  static BuiltSet<BulkUpsertExternalContactsRequestContactsInnerStatusEnum> get values => _$bulkUpsertExternalContactsRequestContactsInnerStatusEnumValues;
  static BulkUpsertExternalContactsRequestContactsInnerStatusEnum valueOf(String name) => _$bulkUpsertExternalContactsRequestContactsInnerStatusEnumValueOf(name);
}


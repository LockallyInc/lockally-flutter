//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/contact.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_upsert_external_contacts200_response_results_inner.g.dart';

/// BulkUpsertExternalContacts200ResponseResultsInner
///
/// Properties:
/// * [index] 
/// * [externalId] 
/// * [status] 
/// * [contact] 
/// * [error] 
@BuiltValue()
abstract class BulkUpsertExternalContacts200ResponseResultsInner implements Built<BulkUpsertExternalContacts200ResponseResultsInner, BulkUpsertExternalContacts200ResponseResultsInnerBuilder> {
  @BuiltValueField(wireName: r'index')
  int get index;

  @BuiltValueField(wireName: r'external_id')
  String get externalId;

  @BuiltValueField(wireName: r'status')
  BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum get status;
  // enum statusEnum {  created,  updated,  error,  };

  @BuiltValueField(wireName: r'contact')
  Contact? get contact;

  @BuiltValueField(wireName: r'error')
  String? get error;

  BulkUpsertExternalContacts200ResponseResultsInner._();

  factory BulkUpsertExternalContacts200ResponseResultsInner([void updates(BulkUpsertExternalContacts200ResponseResultsInnerBuilder b)]) = _$BulkUpsertExternalContacts200ResponseResultsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkUpsertExternalContacts200ResponseResultsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkUpsertExternalContacts200ResponseResultsInner> get serializer => _$BulkUpsertExternalContacts200ResponseResultsInnerSerializer();
}

class _$BulkUpsertExternalContacts200ResponseResultsInnerSerializer implements PrimitiveSerializer<BulkUpsertExternalContacts200ResponseResultsInner> {
  @override
  final Iterable<Type> types = const [BulkUpsertExternalContacts200ResponseResultsInner, _$BulkUpsertExternalContacts200ResponseResultsInner];

  @override
  final String wireName = r'BulkUpsertExternalContacts200ResponseResultsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkUpsertExternalContacts200ResponseResultsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(int),
    );
    yield r'external_id';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum),
    );
    if (object.contact != null) {
      yield r'contact';
      yield serializers.serialize(
        object.contact,
        specifiedType: const FullType(Contact),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkUpsertExternalContacts200ResponseResultsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkUpsertExternalContacts200ResponseResultsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.index = valueDes;
          break;
        case r'external_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum),
          ) as BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Contact),
          ) as Contact;
          result.contact.replace(valueDes);
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkUpsertExternalContacts200ResponseResultsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkUpsertExternalContacts200ResponseResultsInnerBuilder();
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

class BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'created')
  static const BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum created = _$bulkUpsertExternalContacts200ResponseResultsInnerStatusEnum_created;
  @BuiltValueEnumConst(wireName: r'updated')
  static const BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum updated = _$bulkUpsertExternalContacts200ResponseResultsInnerStatusEnum_updated;
  @BuiltValueEnumConst(wireName: r'error')
  static const BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum error = _$bulkUpsertExternalContacts200ResponseResultsInnerStatusEnum_error;

  static Serializer<BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum> get serializer => _$bulkUpsertExternalContacts200ResponseResultsInnerStatusEnumSerializer;

  const BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum._(String name): super(name);

  static BuiltSet<BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum> get values => _$bulkUpsertExternalContacts200ResponseResultsInnerStatusEnumValues;
  static BulkUpsertExternalContacts200ResponseResultsInnerStatusEnum valueOf(String name) => _$bulkUpsertExternalContacts200ResponseResultsInnerStatusEnumValueOf(name);
}


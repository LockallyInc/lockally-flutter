//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/bulk_upsert_external_contacts_request_contacts_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_upsert_external_contacts_request.g.dart';

/// BulkUpsertExternalContactsRequest
///
/// Properties:
/// * [contacts] 
@BuiltValue()
abstract class BulkUpsertExternalContactsRequest implements Built<BulkUpsertExternalContactsRequest, BulkUpsertExternalContactsRequestBuilder> {
  @BuiltValueField(wireName: r'contacts')
  BuiltList<BulkUpsertExternalContactsRequestContactsInner> get contacts;

  BulkUpsertExternalContactsRequest._();

  factory BulkUpsertExternalContactsRequest([void updates(BulkUpsertExternalContactsRequestBuilder b)]) = _$BulkUpsertExternalContactsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkUpsertExternalContactsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkUpsertExternalContactsRequest> get serializer => _$BulkUpsertExternalContactsRequestSerializer();
}

class _$BulkUpsertExternalContactsRequestSerializer implements PrimitiveSerializer<BulkUpsertExternalContactsRequest> {
  @override
  final Iterable<Type> types = const [BulkUpsertExternalContactsRequest, _$BulkUpsertExternalContactsRequest];

  @override
  final String wireName = r'BulkUpsertExternalContactsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkUpsertExternalContactsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contacts';
    yield serializers.serialize(
      object.contacts,
      specifiedType: const FullType(BuiltList, [FullType(BulkUpsertExternalContactsRequestContactsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkUpsertExternalContactsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkUpsertExternalContactsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contacts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BulkUpsertExternalContactsRequestContactsInner)]),
          ) as BuiltList<BulkUpsertExternalContactsRequestContactsInner>;
          result.contacts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkUpsertExternalContactsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkUpsertExternalContactsRequestBuilder();
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


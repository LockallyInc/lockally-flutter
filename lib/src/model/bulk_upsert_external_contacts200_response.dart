//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/bulk_upsert_external_contacts200_response_results_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_upsert_external_contacts200_response.g.dart';

/// BulkUpsertExternalContacts200Response
///
/// Properties:
/// * [created] 
/// * [updated] 
/// * [failed] 
/// * [results] 
@BuiltValue()
abstract class BulkUpsertExternalContacts200Response implements Built<BulkUpsertExternalContacts200Response, BulkUpsertExternalContacts200ResponseBuilder> {
  @BuiltValueField(wireName: r'created')
  int get created;

  @BuiltValueField(wireName: r'updated')
  int get updated;

  @BuiltValueField(wireName: r'failed')
  int get failed;

  @BuiltValueField(wireName: r'results')
  BuiltList<BulkUpsertExternalContacts200ResponseResultsInner> get results;

  BulkUpsertExternalContacts200Response._();

  factory BulkUpsertExternalContacts200Response([void updates(BulkUpsertExternalContacts200ResponseBuilder b)]) = _$BulkUpsertExternalContacts200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkUpsertExternalContacts200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkUpsertExternalContacts200Response> get serializer => _$BulkUpsertExternalContacts200ResponseSerializer();
}

class _$BulkUpsertExternalContacts200ResponseSerializer implements PrimitiveSerializer<BulkUpsertExternalContacts200Response> {
  @override
  final Iterable<Type> types = const [BulkUpsertExternalContacts200Response, _$BulkUpsertExternalContacts200Response];

  @override
  final String wireName = r'BulkUpsertExternalContacts200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkUpsertExternalContacts200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'created';
    yield serializers.serialize(
      object.created,
      specifiedType: const FullType(int),
    );
    yield r'updated';
    yield serializers.serialize(
      object.updated,
      specifiedType: const FullType(int),
    );
    yield r'failed';
    yield serializers.serialize(
      object.failed,
      specifiedType: const FullType(int),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(BulkUpsertExternalContacts200ResponseResultsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkUpsertExternalContacts200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkUpsertExternalContacts200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.created = valueDes;
          break;
        case r'updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updated = valueDes;
          break;
        case r'failed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failed = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BulkUpsertExternalContacts200ResponseResultsInner)]),
          ) as BuiltList<BulkUpsertExternalContacts200ResponseResultsInner>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkUpsertExternalContacts200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkUpsertExternalContacts200ResponseBuilder();
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


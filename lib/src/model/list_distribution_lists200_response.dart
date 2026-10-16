//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/distribution_list_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_distribution_lists200_response.g.dart';

/// ListDistributionLists200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListDistributionLists200Response implements Built<ListDistributionLists200Response, ListDistributionLists200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<DistributionListSummary> get data;

  ListDistributionLists200Response._();

  factory ListDistributionLists200Response([void updates(ListDistributionLists200ResponseBuilder b)]) = _$ListDistributionLists200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListDistributionLists200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListDistributionLists200Response> get serializer => _$ListDistributionLists200ResponseSerializer();
}

class _$ListDistributionLists200ResponseSerializer implements PrimitiveSerializer<ListDistributionLists200Response> {
  @override
  final Iterable<Type> types = const [ListDistributionLists200Response, _$ListDistributionLists200Response];

  @override
  final String wireName = r'ListDistributionLists200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListDistributionLists200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(DistributionListSummary)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListDistributionLists200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListDistributionLists200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DistributionListSummary)]),
          ) as BuiltList<DistributionListSummary>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListDistributionLists200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListDistributionLists200ResponseBuilder();
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


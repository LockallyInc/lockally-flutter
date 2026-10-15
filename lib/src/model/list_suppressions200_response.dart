//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/suppression.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_suppressions200_response.g.dart';

/// ListSuppressions200Response
///
/// Properties:
/// * [data] 
/// * [nextCursor] 
@BuiltValue()
abstract class ListSuppressions200Response implements Built<ListSuppressions200Response, ListSuppressions200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Suppression>? get data;

  @BuiltValueField(wireName: r'next_cursor')
  String? get nextCursor;

  ListSuppressions200Response._();

  factory ListSuppressions200Response([void updates(ListSuppressions200ResponseBuilder b)]) = _$ListSuppressions200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListSuppressions200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListSuppressions200Response> get serializer => _$ListSuppressions200ResponseSerializer();
}

class _$ListSuppressions200ResponseSerializer implements PrimitiveSerializer<ListSuppressions200Response> {
  @override
  final Iterable<Type> types = const [ListSuppressions200Response, _$ListSuppressions200Response];

  @override
  final String wireName = r'ListSuppressions200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListSuppressions200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Suppression)]),
      );
    }
    if (object.nextCursor != null) {
      yield r'next_cursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListSuppressions200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListSuppressions200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Suppression)]),
          ) as BuiltList<Suppression>;
          result.data.replace(valueDes);
          break;
        case r'next_cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListSuppressions200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSuppressions200ResponseBuilder();
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


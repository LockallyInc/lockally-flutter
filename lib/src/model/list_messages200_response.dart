//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_messages200_response.g.dart';

/// ListMessages200Response
///
/// Properties:
/// * [data] 
/// * [nextCursor] - Pass as `cursor` to fetch the next page. Absent on the final page.
@BuiltValue()
abstract class ListMessages200Response implements Built<ListMessages200Response, ListMessages200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Message> get data;

  /// Pass as `cursor` to fetch the next page. Absent on the final page.
  @BuiltValueField(wireName: r'next_cursor')
  String? get nextCursor;

  ListMessages200Response._();

  factory ListMessages200Response([void updates(ListMessages200ResponseBuilder b)]) = _$ListMessages200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListMessages200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListMessages200Response> get serializer => _$ListMessages200ResponseSerializer();
}

class _$ListMessages200ResponseSerializer implements PrimitiveSerializer<ListMessages200Response> {
  @override
  final Iterable<Type> types = const [ListMessages200Response, _$ListMessages200Response];

  @override
  final String wireName = r'ListMessages200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListMessages200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(Message)]),
    );
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
    ListMessages200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListMessages200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Message)]),
          ) as BuiltList<Message>;
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
  ListMessages200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMessages200ResponseBuilder();
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


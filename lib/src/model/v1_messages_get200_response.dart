//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_messages_get200_response.g.dart';

/// V1MessagesGet200Response
///
/// Properties:
/// * [data] 
/// * [nextCursor] - Pass as `cursor` to fetch the next page. Absent on the final page.
@BuiltValue()
abstract class V1MessagesGet200Response implements Built<V1MessagesGet200Response, V1MessagesGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Message> get data;

  /// Pass as `cursor` to fetch the next page. Absent on the final page.
  @BuiltValueField(wireName: r'next_cursor')
  String? get nextCursor;

  V1MessagesGet200Response._();

  factory V1MessagesGet200Response([void updates(V1MessagesGet200ResponseBuilder b)]) = _$V1MessagesGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1MessagesGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1MessagesGet200Response> get serializer => _$V1MessagesGet200ResponseSerializer();
}

class _$V1MessagesGet200ResponseSerializer implements PrimitiveSerializer<V1MessagesGet200Response> {
  @override
  final Iterable<Type> types = const [V1MessagesGet200Response, _$V1MessagesGet200Response];

  @override
  final String wireName = r'V1MessagesGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1MessagesGet200Response object, {
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
    V1MessagesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1MessagesGet200ResponseBuilder result,
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
  V1MessagesGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1MessagesGet200ResponseBuilder();
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


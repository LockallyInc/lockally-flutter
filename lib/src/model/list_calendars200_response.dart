//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/calendar.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_calendars200_response.g.dart';

/// ListCalendars200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListCalendars200Response implements Built<ListCalendars200Response, ListCalendars200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Calendar>? get data;

  ListCalendars200Response._();

  factory ListCalendars200Response([void updates(ListCalendars200ResponseBuilder b)]) = _$ListCalendars200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListCalendars200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListCalendars200Response> get serializer => _$ListCalendars200ResponseSerializer();
}

class _$ListCalendars200ResponseSerializer implements PrimitiveSerializer<ListCalendars200Response> {
  @override
  final Iterable<Type> types = const [ListCalendars200Response, _$ListCalendars200Response];

  @override
  final String wireName = r'ListCalendars200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListCalendars200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Calendar)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListCalendars200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListCalendars200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Calendar)]),
          ) as BuiltList<Calendar>;
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
  ListCalendars200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListCalendars200ResponseBuilder();
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


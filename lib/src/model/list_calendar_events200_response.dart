//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/calendar_event.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_calendar_events200_response.g.dart';

/// ListCalendarEvents200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListCalendarEvents200Response implements Built<ListCalendarEvents200Response, ListCalendarEvents200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<CalendarEvent>? get data;

  ListCalendarEvents200Response._();

  factory ListCalendarEvents200Response([void updates(ListCalendarEvents200ResponseBuilder b)]) = _$ListCalendarEvents200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListCalendarEvents200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListCalendarEvents200Response> get serializer => _$ListCalendarEvents200ResponseSerializer();
}

class _$ListCalendarEvents200ResponseSerializer implements PrimitiveSerializer<ListCalendarEvents200Response> {
  @override
  final Iterable<Type> types = const [ListCalendarEvents200Response, _$ListCalendarEvents200Response];

  @override
  final String wireName = r'ListCalendarEvents200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListCalendarEvents200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(CalendarEvent)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListCalendarEvents200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListCalendarEvents200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CalendarEvent)]),
          ) as BuiltList<CalendarEvent>;
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
  ListCalendarEvents200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListCalendarEvents200ResponseBuilder();
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


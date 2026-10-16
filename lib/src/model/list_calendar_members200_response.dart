//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/calendar_member.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_calendar_members200_response.g.dart';

/// ListCalendarMembers200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListCalendarMembers200Response implements Built<ListCalendarMembers200Response, ListCalendarMembers200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<CalendarMember>? get data;

  ListCalendarMembers200Response._();

  factory ListCalendarMembers200Response([void updates(ListCalendarMembers200ResponseBuilder b)]) = _$ListCalendarMembers200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListCalendarMembers200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListCalendarMembers200Response> get serializer => _$ListCalendarMembers200ResponseSerializer();
}

class _$ListCalendarMembers200ResponseSerializer implements PrimitiveSerializer<ListCalendarMembers200Response> {
  @override
  final Iterable<Type> types = const [ListCalendarMembers200Response, _$ListCalendarMembers200Response];

  @override
  final String wireName = r'ListCalendarMembers200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListCalendarMembers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(CalendarMember)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListCalendarMembers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListCalendarMembers200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CalendarMember)]),
          ) as BuiltList<CalendarMember>;
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
  ListCalendarMembers200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListCalendarMembers200ResponseBuilder();
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


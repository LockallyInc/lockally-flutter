//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/get_calendar_overview200_response_activity_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_calendar_overview200_response.g.dart';

/// GetCalendarOverview200Response
///
/// Properties:
/// * [totalCalendars] 
/// * [activeCalendars] - Calendars with an event created, edited or held in the last 30 days.
/// * [sharedCalendars] - Calendars visible to the whole organization.
/// * [eventsThisMonth] - Events on every calendar, in the account's own timezone.
/// * [upcomingOrgEvents] - Future events on organization-visible calendars.
/// * [bookableResources] - Resources that are not disabled.
/// * [accessGranted] - People who own a calendar or are named on one.
/// * [accessOrgWide] - Everyone who can see an organization calendar; 0 when none exists.
/// * [activity] 
@BuiltValue()
abstract class GetCalendarOverview200Response implements Built<GetCalendarOverview200Response, GetCalendarOverview200ResponseBuilder> {
  @BuiltValueField(wireName: r'total_calendars')
  int? get totalCalendars;

  /// Calendars with an event created, edited or held in the last 30 days.
  @BuiltValueField(wireName: r'active_calendars')
  int? get activeCalendars;

  /// Calendars visible to the whole organization.
  @BuiltValueField(wireName: r'shared_calendars')
  int? get sharedCalendars;

  /// Events on every calendar, in the account's own timezone.
  @BuiltValueField(wireName: r'events_this_month')
  int? get eventsThisMonth;

  /// Future events on organization-visible calendars.
  @BuiltValueField(wireName: r'upcoming_org_events')
  int? get upcomingOrgEvents;

  /// Resources that are not disabled.
  @BuiltValueField(wireName: r'bookable_resources')
  int? get bookableResources;

  /// People who own a calendar or are named on one.
  @BuiltValueField(wireName: r'access_granted')
  int? get accessGranted;

  /// Everyone who can see an organization calendar; 0 when none exists.
  @BuiltValueField(wireName: r'access_org_wide')
  int? get accessOrgWide;

  @BuiltValueField(wireName: r'activity')
  BuiltList<GetCalendarOverview200ResponseActivityInner>? get activity;

  GetCalendarOverview200Response._();

  factory GetCalendarOverview200Response([void updates(GetCalendarOverview200ResponseBuilder b)]) = _$GetCalendarOverview200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCalendarOverview200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCalendarOverview200Response> get serializer => _$GetCalendarOverview200ResponseSerializer();
}

class _$GetCalendarOverview200ResponseSerializer implements PrimitiveSerializer<GetCalendarOverview200Response> {
  @override
  final Iterable<Type> types = const [GetCalendarOverview200Response, _$GetCalendarOverview200Response];

  @override
  final String wireName = r'GetCalendarOverview200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCalendarOverview200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalCalendars != null) {
      yield r'total_calendars';
      yield serializers.serialize(
        object.totalCalendars,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeCalendars != null) {
      yield r'active_calendars';
      yield serializers.serialize(
        object.activeCalendars,
        specifiedType: const FullType(int),
      );
    }
    if (object.sharedCalendars != null) {
      yield r'shared_calendars';
      yield serializers.serialize(
        object.sharedCalendars,
        specifiedType: const FullType(int),
      );
    }
    if (object.eventsThisMonth != null) {
      yield r'events_this_month';
      yield serializers.serialize(
        object.eventsThisMonth,
        specifiedType: const FullType(int),
      );
    }
    if (object.upcomingOrgEvents != null) {
      yield r'upcoming_org_events';
      yield serializers.serialize(
        object.upcomingOrgEvents,
        specifiedType: const FullType(int),
      );
    }
    if (object.bookableResources != null) {
      yield r'bookable_resources';
      yield serializers.serialize(
        object.bookableResources,
        specifiedType: const FullType(int),
      );
    }
    if (object.accessGranted != null) {
      yield r'access_granted';
      yield serializers.serialize(
        object.accessGranted,
        specifiedType: const FullType(int),
      );
    }
    if (object.accessOrgWide != null) {
      yield r'access_org_wide';
      yield serializers.serialize(
        object.accessOrgWide,
        specifiedType: const FullType(int),
      );
    }
    if (object.activity != null) {
      yield r'activity';
      yield serializers.serialize(
        object.activity,
        specifiedType: const FullType(BuiltList, [FullType(GetCalendarOverview200ResponseActivityInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCalendarOverview200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCalendarOverview200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_calendars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCalendars = valueDes;
          break;
        case r'active_calendars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeCalendars = valueDes;
          break;
        case r'shared_calendars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sharedCalendars = valueDes;
          break;
        case r'events_this_month':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.eventsThisMonth = valueDes;
          break;
        case r'upcoming_org_events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.upcomingOrgEvents = valueDes;
          break;
        case r'bookable_resources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bookableResources = valueDes;
          break;
        case r'access_granted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accessGranted = valueDes;
          break;
        case r'access_org_wide':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accessOrgWide = valueDes;
          break;
        case r'activity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetCalendarOverview200ResponseActivityInner)]),
          ) as BuiltList<GetCalendarOverview200ResponseActivityInner>;
          result.activity.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCalendarOverview200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCalendarOverview200ResponseBuilder();
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


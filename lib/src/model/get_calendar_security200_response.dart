//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/get_calendar_security200_response_delegated_access_inner.dart';
import 'package:lockally/src/model/get_calendar_security200_response_external_sharing.dart';
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/get_calendar_security200_response_alerts_inner.dart';
import 'package:lockally/src/model/get_calendar_security200_response_public_calendar_list_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_calendar_security200_response.g.dart';

/// GetCalendarSecurity200Response
///
/// Properties:
/// * [totalCalendars] 
/// * [publicCalendars] 
/// * [privateCalendars] 
/// * [totalMembers] 
/// * [delegatedAccess] 
/// * [publicCalendarList] 
/// * [alerts] 
/// * [externalSharing] 
@BuiltValue()
abstract class GetCalendarSecurity200Response implements Built<GetCalendarSecurity200Response, GetCalendarSecurity200ResponseBuilder> {
  @BuiltValueField(wireName: r'total_calendars')
  int? get totalCalendars;

  @BuiltValueField(wireName: r'public_calendars')
  int? get publicCalendars;

  @BuiltValueField(wireName: r'private_calendars')
  int? get privateCalendars;

  @BuiltValueField(wireName: r'total_members')
  int? get totalMembers;

  @BuiltValueField(wireName: r'delegated_access')
  BuiltList<GetCalendarSecurity200ResponseDelegatedAccessInner>? get delegatedAccess;

  @BuiltValueField(wireName: r'public_calendar_list')
  BuiltList<GetCalendarSecurity200ResponsePublicCalendarListInner>? get publicCalendarList;

  @BuiltValueField(wireName: r'alerts')
  BuiltList<GetCalendarSecurity200ResponseAlertsInner>? get alerts;

  @BuiltValueField(wireName: r'external_sharing')
  GetCalendarSecurity200ResponseExternalSharing? get externalSharing;

  GetCalendarSecurity200Response._();

  factory GetCalendarSecurity200Response([void updates(GetCalendarSecurity200ResponseBuilder b)]) = _$GetCalendarSecurity200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCalendarSecurity200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCalendarSecurity200Response> get serializer => _$GetCalendarSecurity200ResponseSerializer();
}

class _$GetCalendarSecurity200ResponseSerializer implements PrimitiveSerializer<GetCalendarSecurity200Response> {
  @override
  final Iterable<Type> types = const [GetCalendarSecurity200Response, _$GetCalendarSecurity200Response];

  @override
  final String wireName = r'GetCalendarSecurity200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCalendarSecurity200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalCalendars != null) {
      yield r'total_calendars';
      yield serializers.serialize(
        object.totalCalendars,
        specifiedType: const FullType(int),
      );
    }
    if (object.publicCalendars != null) {
      yield r'public_calendars';
      yield serializers.serialize(
        object.publicCalendars,
        specifiedType: const FullType(int),
      );
    }
    if (object.privateCalendars != null) {
      yield r'private_calendars';
      yield serializers.serialize(
        object.privateCalendars,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalMembers != null) {
      yield r'total_members';
      yield serializers.serialize(
        object.totalMembers,
        specifiedType: const FullType(int),
      );
    }
    if (object.delegatedAccess != null) {
      yield r'delegated_access';
      yield serializers.serialize(
        object.delegatedAccess,
        specifiedType: const FullType(BuiltList, [FullType(GetCalendarSecurity200ResponseDelegatedAccessInner)]),
      );
    }
    if (object.publicCalendarList != null) {
      yield r'public_calendar_list';
      yield serializers.serialize(
        object.publicCalendarList,
        specifiedType: const FullType(BuiltList, [FullType(GetCalendarSecurity200ResponsePublicCalendarListInner)]),
      );
    }
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(BuiltList, [FullType(GetCalendarSecurity200ResponseAlertsInner)]),
      );
    }
    if (object.externalSharing != null) {
      yield r'external_sharing';
      yield serializers.serialize(
        object.externalSharing,
        specifiedType: const FullType(GetCalendarSecurity200ResponseExternalSharing),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCalendarSecurity200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCalendarSecurity200ResponseBuilder result,
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
        case r'public_calendars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.publicCalendars = valueDes;
          break;
        case r'private_calendars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.privateCalendars = valueDes;
          break;
        case r'total_members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalMembers = valueDes;
          break;
        case r'delegated_access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetCalendarSecurity200ResponseDelegatedAccessInner)]),
          ) as BuiltList<GetCalendarSecurity200ResponseDelegatedAccessInner>;
          result.delegatedAccess.replace(valueDes);
          break;
        case r'public_calendar_list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetCalendarSecurity200ResponsePublicCalendarListInner)]),
          ) as BuiltList<GetCalendarSecurity200ResponsePublicCalendarListInner>;
          result.publicCalendarList.replace(valueDes);
          break;
        case r'alerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetCalendarSecurity200ResponseAlertsInner)]),
          ) as BuiltList<GetCalendarSecurity200ResponseAlertsInner>;
          result.alerts.replace(valueDes);
          break;
        case r'external_sharing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetCalendarSecurity200ResponseExternalSharing),
          ) as GetCalendarSecurity200ResponseExternalSharing;
          result.externalSharing.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCalendarSecurity200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCalendarSecurity200ResponseBuilder();
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


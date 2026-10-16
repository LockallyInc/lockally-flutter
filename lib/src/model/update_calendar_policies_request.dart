//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_calendar_policies_request.g.dart';

/// UpdateCalendarPoliciesRequest
///
/// Properties:
/// * [maxMeetingDurationMins] 
/// * [workingHoursStart] 
/// * [workingHoursEnd] 
/// * [bookingWindowDays] 
/// * [recurringMeetingLimit] 
/// * [resourceApprovalMode] 
/// * [externalInvitesAllowed] 
/// * [externalSharingAllowed] 
/// * [publicLinksEnabled] 
@BuiltValue()
abstract class UpdateCalendarPoliciesRequest implements Built<UpdateCalendarPoliciesRequest, UpdateCalendarPoliciesRequestBuilder> {
  @BuiltValueField(wireName: r'max_meeting_duration_mins')
  int? get maxMeetingDurationMins;

  @BuiltValueField(wireName: r'working_hours_start')
  String? get workingHoursStart;

  @BuiltValueField(wireName: r'working_hours_end')
  String? get workingHoursEnd;

  @BuiltValueField(wireName: r'booking_window_days')
  int? get bookingWindowDays;

  @BuiltValueField(wireName: r'recurring_meeting_limit')
  int? get recurringMeetingLimit;

  @BuiltValueField(wireName: r'resource_approval_mode')
  UpdateCalendarPoliciesRequestResourceApprovalModeEnum? get resourceApprovalMode;
  // enum resourceApprovalModeEnum {  auto_approve,  require_approval,  restricted,  };

  @BuiltValueField(wireName: r'external_invites_allowed')
  bool? get externalInvitesAllowed;

  @BuiltValueField(wireName: r'external_sharing_allowed')
  bool? get externalSharingAllowed;

  @BuiltValueField(wireName: r'public_links_enabled')
  bool? get publicLinksEnabled;

  UpdateCalendarPoliciesRequest._();

  factory UpdateCalendarPoliciesRequest([void updates(UpdateCalendarPoliciesRequestBuilder b)]) = _$UpdateCalendarPoliciesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateCalendarPoliciesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateCalendarPoliciesRequest> get serializer => _$UpdateCalendarPoliciesRequestSerializer();
}

class _$UpdateCalendarPoliciesRequestSerializer implements PrimitiveSerializer<UpdateCalendarPoliciesRequest> {
  @override
  final Iterable<Type> types = const [UpdateCalendarPoliciesRequest, _$UpdateCalendarPoliciesRequest];

  @override
  final String wireName = r'UpdateCalendarPoliciesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateCalendarPoliciesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxMeetingDurationMins != null) {
      yield r'max_meeting_duration_mins';
      yield serializers.serialize(
        object.maxMeetingDurationMins,
        specifiedType: const FullType(int),
      );
    }
    if (object.workingHoursStart != null) {
      yield r'working_hours_start';
      yield serializers.serialize(
        object.workingHoursStart,
        specifiedType: const FullType(String),
      );
    }
    if (object.workingHoursEnd != null) {
      yield r'working_hours_end';
      yield serializers.serialize(
        object.workingHoursEnd,
        specifiedType: const FullType(String),
      );
    }
    if (object.bookingWindowDays != null) {
      yield r'booking_window_days';
      yield serializers.serialize(
        object.bookingWindowDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.recurringMeetingLimit != null) {
      yield r'recurring_meeting_limit';
      yield serializers.serialize(
        object.recurringMeetingLimit,
        specifiedType: const FullType(int),
      );
    }
    if (object.resourceApprovalMode != null) {
      yield r'resource_approval_mode';
      yield serializers.serialize(
        object.resourceApprovalMode,
        specifiedType: const FullType(UpdateCalendarPoliciesRequestResourceApprovalModeEnum),
      );
    }
    if (object.externalInvitesAllowed != null) {
      yield r'external_invites_allowed';
      yield serializers.serialize(
        object.externalInvitesAllowed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.externalSharingAllowed != null) {
      yield r'external_sharing_allowed';
      yield serializers.serialize(
        object.externalSharingAllowed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.publicLinksEnabled != null) {
      yield r'public_links_enabled';
      yield serializers.serialize(
        object.publicLinksEnabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateCalendarPoliciesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateCalendarPoliciesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'max_meeting_duration_mins':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxMeetingDurationMins = valueDes;
          break;
        case r'working_hours_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.workingHoursStart = valueDes;
          break;
        case r'working_hours_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.workingHoursEnd = valueDes;
          break;
        case r'booking_window_days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bookingWindowDays = valueDes;
          break;
        case r'recurring_meeting_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.recurringMeetingLimit = valueDes;
          break;
        case r'resource_approval_mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateCalendarPoliciesRequestResourceApprovalModeEnum),
          ) as UpdateCalendarPoliciesRequestResourceApprovalModeEnum;
          result.resourceApprovalMode = valueDes;
          break;
        case r'external_invites_allowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.externalInvitesAllowed = valueDes;
          break;
        case r'external_sharing_allowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.externalSharingAllowed = valueDes;
          break;
        case r'public_links_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.publicLinksEnabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateCalendarPoliciesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateCalendarPoliciesRequestBuilder();
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

class UpdateCalendarPoliciesRequestResourceApprovalModeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'auto_approve')
  static const UpdateCalendarPoliciesRequestResourceApprovalModeEnum autoApprove = _$updateCalendarPoliciesRequestResourceApprovalModeEnum_autoApprove;
  @BuiltValueEnumConst(wireName: r'require_approval')
  static const UpdateCalendarPoliciesRequestResourceApprovalModeEnum requireApproval = _$updateCalendarPoliciesRequestResourceApprovalModeEnum_requireApproval;
  @BuiltValueEnumConst(wireName: r'restricted')
  static const UpdateCalendarPoliciesRequestResourceApprovalModeEnum restricted = _$updateCalendarPoliciesRequestResourceApprovalModeEnum_restricted;

  static Serializer<UpdateCalendarPoliciesRequestResourceApprovalModeEnum> get serializer => _$updateCalendarPoliciesRequestResourceApprovalModeEnumSerializer;

  const UpdateCalendarPoliciesRequestResourceApprovalModeEnum._(String name): super(name);

  static BuiltSet<UpdateCalendarPoliciesRequestResourceApprovalModeEnum> get values => _$updateCalendarPoliciesRequestResourceApprovalModeEnumValues;
  static UpdateCalendarPoliciesRequestResourceApprovalModeEnum valueOf(String name) => _$updateCalendarPoliciesRequestResourceApprovalModeEnumValueOf(name);
}


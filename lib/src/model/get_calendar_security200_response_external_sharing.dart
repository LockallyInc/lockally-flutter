//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_calendar_security200_response_external_sharing.g.dart';

/// GetCalendarSecurity200ResponseExternalSharing
///
/// Properties:
/// * [invitesAllowed] 
/// * [sharingAllowed] 
/// * [publicLinks] 
@BuiltValue()
abstract class GetCalendarSecurity200ResponseExternalSharing implements Built<GetCalendarSecurity200ResponseExternalSharing, GetCalendarSecurity200ResponseExternalSharingBuilder> {
  @BuiltValueField(wireName: r'invites_allowed')
  bool? get invitesAllowed;

  @BuiltValueField(wireName: r'sharing_allowed')
  bool? get sharingAllowed;

  @BuiltValueField(wireName: r'public_links')
  bool? get publicLinks;

  GetCalendarSecurity200ResponseExternalSharing._();

  factory GetCalendarSecurity200ResponseExternalSharing([void updates(GetCalendarSecurity200ResponseExternalSharingBuilder b)]) = _$GetCalendarSecurity200ResponseExternalSharing;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCalendarSecurity200ResponseExternalSharingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCalendarSecurity200ResponseExternalSharing> get serializer => _$GetCalendarSecurity200ResponseExternalSharingSerializer();
}

class _$GetCalendarSecurity200ResponseExternalSharingSerializer implements PrimitiveSerializer<GetCalendarSecurity200ResponseExternalSharing> {
  @override
  final Iterable<Type> types = const [GetCalendarSecurity200ResponseExternalSharing, _$GetCalendarSecurity200ResponseExternalSharing];

  @override
  final String wireName = r'GetCalendarSecurity200ResponseExternalSharing';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCalendarSecurity200ResponseExternalSharing object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.invitesAllowed != null) {
      yield r'invites_allowed';
      yield serializers.serialize(
        object.invitesAllowed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sharingAllowed != null) {
      yield r'sharing_allowed';
      yield serializers.serialize(
        object.sharingAllowed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.publicLinks != null) {
      yield r'public_links';
      yield serializers.serialize(
        object.publicLinks,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCalendarSecurity200ResponseExternalSharing object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCalendarSecurity200ResponseExternalSharingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'invites_allowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.invitesAllowed = valueDes;
          break;
        case r'sharing_allowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sharingAllowed = valueDes;
          break;
        case r'public_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.publicLinks = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCalendarSecurity200ResponseExternalSharing deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCalendarSecurity200ResponseExternalSharingBuilder();
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


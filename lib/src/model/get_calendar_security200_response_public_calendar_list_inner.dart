//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_calendar_security200_response_public_calendar_list_inner.g.dart';

/// GetCalendarSecurity200ResponsePublicCalendarListInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [ownerEmail] 
/// * [memberCount] 
/// * [hasFeed] 
@BuiltValue()
abstract class GetCalendarSecurity200ResponsePublicCalendarListInner implements Built<GetCalendarSecurity200ResponsePublicCalendarListInner, GetCalendarSecurity200ResponsePublicCalendarListInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'owner_email')
  String? get ownerEmail;

  @BuiltValueField(wireName: r'member_count')
  int? get memberCount;

  @BuiltValueField(wireName: r'has_feed')
  bool? get hasFeed;

  GetCalendarSecurity200ResponsePublicCalendarListInner._();

  factory GetCalendarSecurity200ResponsePublicCalendarListInner([void updates(GetCalendarSecurity200ResponsePublicCalendarListInnerBuilder b)]) = _$GetCalendarSecurity200ResponsePublicCalendarListInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCalendarSecurity200ResponsePublicCalendarListInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCalendarSecurity200ResponsePublicCalendarListInner> get serializer => _$GetCalendarSecurity200ResponsePublicCalendarListInnerSerializer();
}

class _$GetCalendarSecurity200ResponsePublicCalendarListInnerSerializer implements PrimitiveSerializer<GetCalendarSecurity200ResponsePublicCalendarListInner> {
  @override
  final Iterable<Type> types = const [GetCalendarSecurity200ResponsePublicCalendarListInner, _$GetCalendarSecurity200ResponsePublicCalendarListInner];

  @override
  final String wireName = r'GetCalendarSecurity200ResponsePublicCalendarListInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCalendarSecurity200ResponsePublicCalendarListInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerEmail != null) {
      yield r'owner_email';
      yield serializers.serialize(
        object.ownerEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.memberCount != null) {
      yield r'member_count';
      yield serializers.serialize(
        object.memberCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.hasFeed != null) {
      yield r'has_feed';
      yield serializers.serialize(
        object.hasFeed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCalendarSecurity200ResponsePublicCalendarListInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCalendarSecurity200ResponsePublicCalendarListInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'owner_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerEmail = valueDes;
          break;
        case r'member_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.memberCount = valueDes;
          break;
        case r'has_feed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasFeed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCalendarSecurity200ResponsePublicCalendarListInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCalendarSecurity200ResponsePublicCalendarListInnerBuilder();
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


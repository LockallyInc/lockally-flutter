//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_calendar_security200_response_alerts_inner.g.dart';

/// GetCalendarSecurity200ResponseAlertsInner
///
/// Properties:
/// * [level] 
/// * [message] 
@BuiltValue()
abstract class GetCalendarSecurity200ResponseAlertsInner implements Built<GetCalendarSecurity200ResponseAlertsInner, GetCalendarSecurity200ResponseAlertsInnerBuilder> {
  @BuiltValueField(wireName: r'level')
  GetCalendarSecurity200ResponseAlertsInnerLevelEnum? get level;
  // enum levelEnum {  critical,  warning,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  GetCalendarSecurity200ResponseAlertsInner._();

  factory GetCalendarSecurity200ResponseAlertsInner([void updates(GetCalendarSecurity200ResponseAlertsInnerBuilder b)]) = _$GetCalendarSecurity200ResponseAlertsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCalendarSecurity200ResponseAlertsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCalendarSecurity200ResponseAlertsInner> get serializer => _$GetCalendarSecurity200ResponseAlertsInnerSerializer();
}

class _$GetCalendarSecurity200ResponseAlertsInnerSerializer implements PrimitiveSerializer<GetCalendarSecurity200ResponseAlertsInner> {
  @override
  final Iterable<Type> types = const [GetCalendarSecurity200ResponseAlertsInner, _$GetCalendarSecurity200ResponseAlertsInner];

  @override
  final String wireName = r'GetCalendarSecurity200ResponseAlertsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCalendarSecurity200ResponseAlertsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.level != null) {
      yield r'level';
      yield serializers.serialize(
        object.level,
        specifiedType: const FullType(GetCalendarSecurity200ResponseAlertsInnerLevelEnum),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCalendarSecurity200ResponseAlertsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCalendarSecurity200ResponseAlertsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetCalendarSecurity200ResponseAlertsInnerLevelEnum),
          ) as GetCalendarSecurity200ResponseAlertsInnerLevelEnum;
          result.level = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCalendarSecurity200ResponseAlertsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCalendarSecurity200ResponseAlertsInnerBuilder();
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

class GetCalendarSecurity200ResponseAlertsInnerLevelEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'critical')
  static const GetCalendarSecurity200ResponseAlertsInnerLevelEnum critical = _$getCalendarSecurity200ResponseAlertsInnerLevelEnum_critical;
  @BuiltValueEnumConst(wireName: r'warning')
  static const GetCalendarSecurity200ResponseAlertsInnerLevelEnum warning = _$getCalendarSecurity200ResponseAlertsInnerLevelEnum_warning;

  static Serializer<GetCalendarSecurity200ResponseAlertsInnerLevelEnum> get serializer => _$getCalendarSecurity200ResponseAlertsInnerLevelEnumSerializer;

  const GetCalendarSecurity200ResponseAlertsInnerLevelEnum._(String name): super(name);

  static BuiltSet<GetCalendarSecurity200ResponseAlertsInnerLevelEnum> get values => _$getCalendarSecurity200ResponseAlertsInnerLevelEnumValues;
  static GetCalendarSecurity200ResponseAlertsInnerLevelEnum valueOf(String name) => _$getCalendarSecurity200ResponseAlertsInnerLevelEnumValueOf(name);
}


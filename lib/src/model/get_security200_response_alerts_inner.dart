//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_security200_response_alerts_inner.g.dart';

/// GetSecurity200ResponseAlertsInner
///
/// Properties:
/// * [level] 
/// * [message] 
/// * [time] 
@BuiltValue()
abstract class GetSecurity200ResponseAlertsInner implements Built<GetSecurity200ResponseAlertsInner, GetSecurity200ResponseAlertsInnerBuilder> {
  @BuiltValueField(wireName: r'level')
  GetSecurity200ResponseAlertsInnerLevelEnum? get level;
  // enum levelEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'time')
  DateTime? get time;

  GetSecurity200ResponseAlertsInner._();

  factory GetSecurity200ResponseAlertsInner([void updates(GetSecurity200ResponseAlertsInnerBuilder b)]) = _$GetSecurity200ResponseAlertsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSecurity200ResponseAlertsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSecurity200ResponseAlertsInner> get serializer => _$GetSecurity200ResponseAlertsInnerSerializer();
}

class _$GetSecurity200ResponseAlertsInnerSerializer implements PrimitiveSerializer<GetSecurity200ResponseAlertsInner> {
  @override
  final Iterable<Type> types = const [GetSecurity200ResponseAlertsInner, _$GetSecurity200ResponseAlertsInner];

  @override
  final String wireName = r'GetSecurity200ResponseAlertsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSecurity200ResponseAlertsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.level != null) {
      yield r'level';
      yield serializers.serialize(
        object.level,
        specifiedType: const FullType(GetSecurity200ResponseAlertsInnerLevelEnum),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSecurity200ResponseAlertsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSecurity200ResponseAlertsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetSecurity200ResponseAlertsInnerLevelEnum),
          ) as GetSecurity200ResponseAlertsInnerLevelEnum;
          result.level = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetSecurity200ResponseAlertsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSecurity200ResponseAlertsInnerBuilder();
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

class GetSecurity200ResponseAlertsInnerLevelEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'info')
  static const GetSecurity200ResponseAlertsInnerLevelEnum info = _$getSecurity200ResponseAlertsInnerLevelEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const GetSecurity200ResponseAlertsInnerLevelEnum warning = _$getSecurity200ResponseAlertsInnerLevelEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const GetSecurity200ResponseAlertsInnerLevelEnum critical = _$getSecurity200ResponseAlertsInnerLevelEnum_critical;

  static Serializer<GetSecurity200ResponseAlertsInnerLevelEnum> get serializer => _$getSecurity200ResponseAlertsInnerLevelEnumSerializer;

  const GetSecurity200ResponseAlertsInnerLevelEnum._(String name): super(name);

  static BuiltSet<GetSecurity200ResponseAlertsInnerLevelEnum> get values => _$getSecurity200ResponseAlertsInnerLevelEnumValues;
  static GetSecurity200ResponseAlertsInnerLevelEnum valueOf(String name) => _$getSecurity200ResponseAlertsInnerLevelEnumValueOf(name);
}


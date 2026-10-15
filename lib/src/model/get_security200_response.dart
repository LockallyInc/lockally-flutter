//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/get_security200_response_alerts_inner.dart';
import 'package:lockally/src/model/get_security200_response_stats_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_security200_response.g.dart';

/// GetSecurity200Response
///
/// Properties:
/// * [overallStatus] 
/// * [stats] 
/// * [alerts] 
@BuiltValue()
abstract class GetSecurity200Response implements Built<GetSecurity200Response, GetSecurity200ResponseBuilder> {
  @BuiltValueField(wireName: r'overall_status')
  GetSecurity200ResponseOverallStatusEnum? get overallStatus;
  // enum overallStatusEnum {  healthy,  warning,  critical,  };

  @BuiltValueField(wireName: r'stats')
  BuiltList<GetSecurity200ResponseStatsInner>? get stats;

  @BuiltValueField(wireName: r'alerts')
  BuiltList<GetSecurity200ResponseAlertsInner>? get alerts;

  GetSecurity200Response._();

  factory GetSecurity200Response([void updates(GetSecurity200ResponseBuilder b)]) = _$GetSecurity200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSecurity200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSecurity200Response> get serializer => _$GetSecurity200ResponseSerializer();
}

class _$GetSecurity200ResponseSerializer implements PrimitiveSerializer<GetSecurity200Response> {
  @override
  final Iterable<Type> types = const [GetSecurity200Response, _$GetSecurity200Response];

  @override
  final String wireName = r'GetSecurity200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSecurity200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.overallStatus != null) {
      yield r'overall_status';
      yield serializers.serialize(
        object.overallStatus,
        specifiedType: const FullType(GetSecurity200ResponseOverallStatusEnum),
      );
    }
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType(BuiltList, [FullType(GetSecurity200ResponseStatsInner)]),
      );
    }
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(BuiltList, [FullType(GetSecurity200ResponseAlertsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSecurity200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSecurity200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'overall_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetSecurity200ResponseOverallStatusEnum),
          ) as GetSecurity200ResponseOverallStatusEnum;
          result.overallStatus = valueDes;
          break;
        case r'stats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetSecurity200ResponseStatsInner)]),
          ) as BuiltList<GetSecurity200ResponseStatsInner>;
          result.stats.replace(valueDes);
          break;
        case r'alerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetSecurity200ResponseAlertsInner)]),
          ) as BuiltList<GetSecurity200ResponseAlertsInner>;
          result.alerts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetSecurity200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSecurity200ResponseBuilder();
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

class GetSecurity200ResponseOverallStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'healthy')
  static const GetSecurity200ResponseOverallStatusEnum healthy = _$getSecurity200ResponseOverallStatusEnum_healthy;
  @BuiltValueEnumConst(wireName: r'warning')
  static const GetSecurity200ResponseOverallStatusEnum warning = _$getSecurity200ResponseOverallStatusEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const GetSecurity200ResponseOverallStatusEnum critical = _$getSecurity200ResponseOverallStatusEnum_critical;

  static Serializer<GetSecurity200ResponseOverallStatusEnum> get serializer => _$getSecurity200ResponseOverallStatusEnumSerializer;

  const GetSecurity200ResponseOverallStatusEnum._(String name): super(name);

  static BuiltSet<GetSecurity200ResponseOverallStatusEnum> get values => _$getSecurity200ResponseOverallStatusEnumValues;
  static GetSecurity200ResponseOverallStatusEnum valueOf(String name) => _$getSecurity200ResponseOverallStatusEnumValueOf(name);
}


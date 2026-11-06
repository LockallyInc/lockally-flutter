//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/tenant_health_check.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_health_report.g.dart';

/// The workspace health snapshot behind the console dashboard. DNS checks are live lookups, so a domain whose DNS cannot be read shows as a warning rather than an error.
///
/// Properties:
/// * [overallScore] 
/// * [checks] 
/// * [generatedAt] 
@BuiltValue()
abstract class TenantHealthReport implements Built<TenantHealthReport, TenantHealthReportBuilder> {
  @BuiltValueField(wireName: r'overall_score')
  int get overallScore;

  @BuiltValueField(wireName: r'checks')
  BuiltList<TenantHealthCheck> get checks;

  @BuiltValueField(wireName: r'generated_at')
  DateTime get generatedAt;

  TenantHealthReport._();

  factory TenantHealthReport([void updates(TenantHealthReportBuilder b)]) = _$TenantHealthReport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantHealthReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantHealthReport> get serializer => _$TenantHealthReportSerializer();
}

class _$TenantHealthReportSerializer implements PrimitiveSerializer<TenantHealthReport> {
  @override
  final Iterable<Type> types = const [TenantHealthReport, _$TenantHealthReport];

  @override
  final String wireName = r'TenantHealthReport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantHealthReport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'overall_score';
    yield serializers.serialize(
      object.overallScore,
      specifiedType: const FullType(int),
    );
    yield r'checks';
    yield serializers.serialize(
      object.checks,
      specifiedType: const FullType(BuiltList, [FullType(TenantHealthCheck)]),
    );
    yield r'generated_at';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantHealthReport object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantHealthReportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'overall_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.overallScore = valueDes;
          break;
        case r'checks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TenantHealthCheck)]),
          ) as BuiltList<TenantHealthCheck>;
          result.checks.replace(valueDes);
          break;
        case r'generated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantHealthReport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantHealthReportBuilder();
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


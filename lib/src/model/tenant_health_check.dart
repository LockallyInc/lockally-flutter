//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_health_check.g.dart';

/// TenantHealthCheck
///
/// Properties:
/// * [key] - Stable identifier, today one of `domain_verification`, `smtp`, `storage`, `security`. Treat unknown keys as new checks, not errors.
/// * [label] - Human-readable name for display.
/// * [status] - `healthy`, `warning` or `critical`.
/// * [detail] 
@BuiltValue()
abstract class TenantHealthCheck implements Built<TenantHealthCheck, TenantHealthCheckBuilder> {
  /// Stable identifier, today one of `domain_verification`, `smtp`, `storage`, `security`. Treat unknown keys as new checks, not errors.
  @BuiltValueField(wireName: r'key')
  String get key;

  /// Human-readable name for display.
  @BuiltValueField(wireName: r'label')
  String get label;

  /// `healthy`, `warning` or `critical`.
  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'detail')
  String get detail;

  TenantHealthCheck._();

  factory TenantHealthCheck([void updates(TenantHealthCheckBuilder b)]) = _$TenantHealthCheck;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantHealthCheckBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantHealthCheck> get serializer => _$TenantHealthCheckSerializer();
}

class _$TenantHealthCheckSerializer implements PrimitiveSerializer<TenantHealthCheck> {
  @override
  final Iterable<Type> types = const [TenantHealthCheck, _$TenantHealthCheck];

  @override
  final String wireName = r'TenantHealthCheck';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantHealthCheck object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'detail';
    yield serializers.serialize(
      object.detail,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantHealthCheck object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantHealthCheckBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantHealthCheck deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantHealthCheckBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_ip_assignment200_response.g.dart';

/// GetIPAssignment200Response
///
/// Properties:
/// * [poolName] 
/// * [poolKind] 
/// * [dedicatedIp] 
/// * [assignedAt] 
/// * [reason] 
@BuiltValue()
abstract class GetIPAssignment200Response implements Built<GetIPAssignment200Response, GetIPAssignment200ResponseBuilder> {
  @BuiltValueField(wireName: r'pool_name')
  String? get poolName;

  @BuiltValueField(wireName: r'pool_kind')
  String? get poolKind;

  @BuiltValueField(wireName: r'dedicated_ip')
  String? get dedicatedIp;

  @BuiltValueField(wireName: r'assigned_at')
  DateTime? get assignedAt;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  GetIPAssignment200Response._();

  factory GetIPAssignment200Response([void updates(GetIPAssignment200ResponseBuilder b)]) = _$GetIPAssignment200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetIPAssignment200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetIPAssignment200Response> get serializer => _$GetIPAssignment200ResponseSerializer();
}

class _$GetIPAssignment200ResponseSerializer implements PrimitiveSerializer<GetIPAssignment200Response> {
  @override
  final Iterable<Type> types = const [GetIPAssignment200Response, _$GetIPAssignment200Response];

  @override
  final String wireName = r'GetIPAssignment200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetIPAssignment200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.poolName != null) {
      yield r'pool_name';
      yield serializers.serialize(
        object.poolName,
        specifiedType: const FullType(String),
      );
    }
    if (object.poolKind != null) {
      yield r'pool_kind';
      yield serializers.serialize(
        object.poolKind,
        specifiedType: const FullType(String),
      );
    }
    if (object.dedicatedIp != null) {
      yield r'dedicated_ip';
      yield serializers.serialize(
        object.dedicatedIp,
        specifiedType: const FullType(String),
      );
    }
    if (object.assignedAt != null) {
      yield r'assigned_at';
      yield serializers.serialize(
        object.assignedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetIPAssignment200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetIPAssignment200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pool_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.poolName = valueDes;
          break;
        case r'pool_kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.poolKind = valueDes;
          break;
        case r'dedicated_ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dedicatedIp = valueDes;
          break;
        case r'assigned_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.assignedAt = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetIPAssignment200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIPAssignment200ResponseBuilder();
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


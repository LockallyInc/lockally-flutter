//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_security200_response_stats_inner.g.dart';

/// GetSecurity200ResponseStatsInner
///
/// Properties:
/// * [label] 
/// * [value] 
/// * [trend] 
@BuiltValue()
abstract class GetSecurity200ResponseStatsInner implements Built<GetSecurity200ResponseStatsInner, GetSecurity200ResponseStatsInnerBuilder> {
  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'value')
  int? get value;

  @BuiltValueField(wireName: r'trend')
  String? get trend;

  GetSecurity200ResponseStatsInner._();

  factory GetSecurity200ResponseStatsInner([void updates(GetSecurity200ResponseStatsInnerBuilder b)]) = _$GetSecurity200ResponseStatsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSecurity200ResponseStatsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSecurity200ResponseStatsInner> get serializer => _$GetSecurity200ResponseStatsInnerSerializer();
}

class _$GetSecurity200ResponseStatsInnerSerializer implements PrimitiveSerializer<GetSecurity200ResponseStatsInner> {
  @override
  final Iterable<Type> types = const [GetSecurity200ResponseStatsInner, _$GetSecurity200ResponseStatsInner];

  @override
  final String wireName = r'GetSecurity200ResponseStatsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSecurity200ResponseStatsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(int),
      );
    }
    if (object.trend != null) {
      yield r'trend';
      yield serializers.serialize(
        object.trend,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSecurity200ResponseStatsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSecurity200ResponseStatsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.value = valueDes;
          break;
        case r'trend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.trend = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetSecurity200ResponseStatsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSecurity200ResponseStatsInnerBuilder();
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


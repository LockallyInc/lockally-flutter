//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'injection_risk.g.dart';

/// InjectionRisk
///
/// Properties:
/// * [flagged] 
/// * [signals] - The phrases that tripped the check.
@BuiltValue()
abstract class InjectionRisk implements Built<InjectionRisk, InjectionRiskBuilder> {
  @BuiltValueField(wireName: r'flagged')
  bool? get flagged;

  /// The phrases that tripped the check.
  @BuiltValueField(wireName: r'signals')
  BuiltList<String>? get signals;

  InjectionRisk._();

  factory InjectionRisk([void updates(InjectionRiskBuilder b)]) = _$InjectionRisk;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InjectionRiskBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InjectionRisk> get serializer => _$InjectionRiskSerializer();
}

class _$InjectionRiskSerializer implements PrimitiveSerializer<InjectionRisk> {
  @override
  final Iterable<Type> types = const [InjectionRisk, _$InjectionRisk];

  @override
  final String wireName = r'InjectionRisk';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InjectionRisk object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.flagged != null) {
      yield r'flagged';
      yield serializers.serialize(
        object.flagged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.signals != null) {
      yield r'signals';
      yield serializers.serialize(
        object.signals,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InjectionRisk object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InjectionRiskBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'flagged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.flagged = valueDes;
          break;
        case r'signals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.signals.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InjectionRisk deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InjectionRiskBuilder();
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


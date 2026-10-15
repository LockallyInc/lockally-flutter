//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_config.g.dart';

/// AiConfig
///
/// Properties:
/// * [mode] 
/// * [model] 
/// * [byokKeyHint] 
/// * [unitsBalance] 
/// * [unitsAvailable] - True when a platform model key is configured.
@BuiltValue()
abstract class AiConfig implements Built<AiConfig, AiConfigBuilder> {
  @BuiltValueField(wireName: r'mode')
  AiConfigModeEnum get mode;
  // enum modeEnum {  false,  byok,  units,  };

  @BuiltValueField(wireName: r'model')
  String get model;

  @BuiltValueField(wireName: r'byok_key_hint')
  String? get byokKeyHint;

  @BuiltValueField(wireName: r'units_balance')
  int? get unitsBalance;

  /// True when a platform model key is configured.
  @BuiltValueField(wireName: r'units_available')
  bool? get unitsAvailable;

  AiConfig._();

  factory AiConfig([void updates(AiConfigBuilder b)]) = _$AiConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AiConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AiConfig> get serializer => _$AiConfigSerializer();
}

class _$AiConfigSerializer implements PrimitiveSerializer<AiConfig> {
  @override
  final Iterable<Type> types = const [AiConfig, _$AiConfig];

  @override
  final String wireName = r'AiConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AiConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(AiConfigModeEnum),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
    if (object.byokKeyHint != null) {
      yield r'byok_key_hint';
      yield serializers.serialize(
        object.byokKeyHint,
        specifiedType: const FullType(String),
      );
    }
    if (object.unitsBalance != null) {
      yield r'units_balance';
      yield serializers.serialize(
        object.unitsBalance,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitsAvailable != null) {
      yield r'units_available';
      yield serializers.serialize(
        object.unitsAvailable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AiConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AiConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AiConfigModeEnum),
          ) as AiConfigModeEnum;
          result.mode = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'byok_key_hint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.byokKeyHint = valueDes;
          break;
        case r'units_balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unitsBalance = valueDes;
          break;
        case r'units_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unitsAvailable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AiConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AiConfigBuilder();
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

class AiConfigModeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'false')
  static const AiConfigModeEnum false_ = _$aiConfigModeEnum_false_;
  @BuiltValueEnumConst(wireName: r'byok')
  static const AiConfigModeEnum byok = _$aiConfigModeEnum_byok;
  @BuiltValueEnumConst(wireName: r'units')
  static const AiConfigModeEnum units = _$aiConfigModeEnum_units;

  static Serializer<AiConfigModeEnum> get serializer => _$aiConfigModeEnumSerializer;

  const AiConfigModeEnum._(String name): super(name);

  static BuiltSet<AiConfigModeEnum> get values => _$aiConfigModeEnumValues;
  static AiConfigModeEnum valueOf(String name) => _$aiConfigModeEnumValueOf(name);
}


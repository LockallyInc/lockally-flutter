//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_config_update.g.dart';

/// AiConfigUpdate
///
/// Properties:
/// * [mode] 
/// * [model] 
@BuiltValue()
abstract class AiConfigUpdate implements Built<AiConfigUpdate, AiConfigUpdateBuilder> {
  @BuiltValueField(wireName: r'mode')
  AiConfigUpdateModeEnum get mode;
  // enum modeEnum {  false,  byok,  units,  };

  @BuiltValueField(wireName: r'model')
  String get model;

  AiConfigUpdate._();

  factory AiConfigUpdate([void updates(AiConfigUpdateBuilder b)]) = _$AiConfigUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AiConfigUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AiConfigUpdate> get serializer => _$AiConfigUpdateSerializer();
}

class _$AiConfigUpdateSerializer implements PrimitiveSerializer<AiConfigUpdate> {
  @override
  final Iterable<Type> types = const [AiConfigUpdate, _$AiConfigUpdate];

  @override
  final String wireName = r'AiConfigUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AiConfigUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(AiConfigUpdateModeEnum),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AiConfigUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AiConfigUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AiConfigUpdateModeEnum),
          ) as AiConfigUpdateModeEnum;
          result.mode = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AiConfigUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AiConfigUpdateBuilder();
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

class AiConfigUpdateModeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'false')
  static const AiConfigUpdateModeEnum false_ = _$aiConfigUpdateModeEnum_false_;
  @BuiltValueEnumConst(wireName: r'byok')
  static const AiConfigUpdateModeEnum byok = _$aiConfigUpdateModeEnum_byok;
  @BuiltValueEnumConst(wireName: r'units')
  static const AiConfigUpdateModeEnum units = _$aiConfigUpdateModeEnum_units;

  static Serializer<AiConfigUpdateModeEnum> get serializer => _$aiConfigUpdateModeEnumSerializer;

  const AiConfigUpdateModeEnum._(String name): super(name);

  static BuiltSet<AiConfigUpdateModeEnum> get values => _$aiConfigUpdateModeEnumValues;
  static AiConfigUpdateModeEnum valueOf(String name) => _$aiConfigUpdateModeEnumValueOf(name);
}


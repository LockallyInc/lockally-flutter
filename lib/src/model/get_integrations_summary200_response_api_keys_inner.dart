//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_integrations_summary200_response_api_keys_inner.g.dart';

/// GetIntegrationsSummary200ResponseApiKeysInner
///
/// Properties:
/// * [label] 
/// * [prefix] 
/// * [lastUsedAt] 
@BuiltValue()
abstract class GetIntegrationsSummary200ResponseApiKeysInner implements Built<GetIntegrationsSummary200ResponseApiKeysInner, GetIntegrationsSummary200ResponseApiKeysInnerBuilder> {
  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'prefix')
  String? get prefix;

  @BuiltValueField(wireName: r'last_used_at')
  DateTime? get lastUsedAt;

  GetIntegrationsSummary200ResponseApiKeysInner._();

  factory GetIntegrationsSummary200ResponseApiKeysInner([void updates(GetIntegrationsSummary200ResponseApiKeysInnerBuilder b)]) = _$GetIntegrationsSummary200ResponseApiKeysInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetIntegrationsSummary200ResponseApiKeysInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetIntegrationsSummary200ResponseApiKeysInner> get serializer => _$GetIntegrationsSummary200ResponseApiKeysInnerSerializer();
}

class _$GetIntegrationsSummary200ResponseApiKeysInnerSerializer implements PrimitiveSerializer<GetIntegrationsSummary200ResponseApiKeysInner> {
  @override
  final Iterable<Type> types = const [GetIntegrationsSummary200ResponseApiKeysInner, _$GetIntegrationsSummary200ResponseApiKeysInner];

  @override
  final String wireName = r'GetIntegrationsSummary200ResponseApiKeysInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetIntegrationsSummary200ResponseApiKeysInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.prefix != null) {
      yield r'prefix';
      yield serializers.serialize(
        object.prefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastUsedAt != null) {
      yield r'last_used_at';
      yield serializers.serialize(
        object.lastUsedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetIntegrationsSummary200ResponseApiKeysInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetIntegrationsSummary200ResponseApiKeysInnerBuilder result,
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
        case r'prefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prefix = valueDes;
          break;
        case r'last_used_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUsedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetIntegrationsSummary200ResponseApiKeysInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIntegrationsSummary200ResponseApiKeysInnerBuilder();
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


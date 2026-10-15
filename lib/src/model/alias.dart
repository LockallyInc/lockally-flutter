//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alias.g.dart';

/// Alias
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [aliasAddress] 
/// * [aliasTarget] 
/// * [createdAt] 
@BuiltValue()
abstract class Alias implements Built<Alias, AliasBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'alias_address')
  String get aliasAddress;

  @BuiltValueField(wireName: r'alias_target')
  String get aliasTarget;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  Alias._();

  factory Alias([void updates(AliasBuilder b)]) = _$Alias;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AliasBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Alias> get serializer => _$AliasSerializer();
}

class _$AliasSerializer implements PrimitiveSerializer<Alias> {
  @override
  final Iterable<Type> types = const [Alias, _$Alias];

  @override
  final String wireName = r'Alias';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Alias object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'alias_address';
    yield serializers.serialize(
      object.aliasAddress,
      specifiedType: const FullType(String),
    );
    yield r'alias_target';
    yield serializers.serialize(
      object.aliasTarget,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Alias object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AliasBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'alias_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.aliasAddress = valueDes;
          break;
        case r'alias_target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.aliasTarget = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Alias deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AliasBuilder();
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


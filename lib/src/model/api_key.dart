//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_key.g.dart';

/// APIKey
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [prefix] - 8-char public prefix; safe to store and display.
/// * [scopes] 
/// * [label] 
/// * [lastUsedAt] 
/// * [revokedAt] 
/// * [createdAt] 
@BuiltValue(instantiable: false)
abstract class APIKey  {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  /// 8-char public prefix; safe to store and display.
  @BuiltValueField(wireName: r'prefix')
  String get prefix;

  @BuiltValueField(wireName: r'scopes')
  BuiltList<String> get scopes;

  @BuiltValueField(wireName: r'label')
  String get label;

  @BuiltValueField(wireName: r'last_used_at')
  DateTime? get lastUsedAt;

  @BuiltValueField(wireName: r'revoked_at')
  DateTime? get revokedAt;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIKey> get serializer => _$APIKeySerializer();
}

class _$APIKeySerializer implements PrimitiveSerializer<APIKey> {
  @override
  final Iterable<Type> types = const [APIKey];

  @override
  final String wireName = r'APIKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIKey object, {
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
    yield r'prefix';
    yield serializers.serialize(
      object.prefix,
      specifiedType: const FullType(String),
    );
    yield r'scopes';
    yield serializers.serialize(
      object.scopes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    if (object.lastUsedAt != null) {
      yield r'last_used_at';
      yield serializers.serialize(
        object.lastUsedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.revokedAt != null) {
      yield r'revoked_at';
      yield serializers.serialize(
        object.revokedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    APIKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  APIKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($APIKey)) as $APIKey;
  }
}

/// a concrete implementation of [APIKey], since [APIKey] is not instantiable
@BuiltValue(instantiable: true)
abstract class $APIKey implements APIKey, Built<$APIKey, $APIKeyBuilder> {
  $APIKey._();

  factory $APIKey([void Function($APIKeyBuilder)? updates]) = _$$APIKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($APIKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$APIKey> get serializer => _$$APIKeySerializer();
}

class _$$APIKeySerializer implements PrimitiveSerializer<$APIKey> {
  @override
  final Iterable<Type> types = const [$APIKey, _$$APIKey];

  @override
  final String wireName = r'$APIKey';

  @override
  Object serialize(
    Serializers serializers,
    $APIKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(APIKey))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIKeyBuilder result,
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
        case r'prefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prefix = valueDes;
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.scopes.replace(valueDes);
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'last_used_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUsedAt = valueDes;
          break;
        case r'revoked_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.revokedAt = valueDes;
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
  $APIKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $APIKeyBuilder();
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


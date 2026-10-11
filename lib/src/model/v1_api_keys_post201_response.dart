//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/api_key.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_api_keys_post201_response.g.dart';

/// V1ApiKeysPost201Response
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
/// * [secret] - The full `lk_live_<prefix>_<secret>` token. Shown ONCE.
@BuiltValue()
abstract class V1ApiKeysPost201Response implements APIKey, Built<V1ApiKeysPost201Response, V1ApiKeysPost201ResponseBuilder> {
  /// The full `lk_live_<prefix>_<secret>` token. Shown ONCE.
  @BuiltValueField(wireName: r'secret')
  String get secret;

  V1ApiKeysPost201Response._();

  factory V1ApiKeysPost201Response([void updates(V1ApiKeysPost201ResponseBuilder b)]) = _$V1ApiKeysPost201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ApiKeysPost201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ApiKeysPost201Response> get serializer => _$V1ApiKeysPost201ResponseSerializer();
}

class _$V1ApiKeysPost201ResponseSerializer implements PrimitiveSerializer<V1ApiKeysPost201Response> {
  @override
  final Iterable<Type> types = const [V1ApiKeysPost201Response, _$V1ApiKeysPost201Response];

  @override
  final String wireName = r'V1ApiKeysPost201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ApiKeysPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastUsedAt != null) {
      yield r'last_used_at';
      yield serializers.serialize(
        object.lastUsedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'prefix';
    yield serializers.serialize(
      object.prefix,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'secret';
    yield serializers.serialize(
      object.secret,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
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
    if (object.revokedAt != null) {
      yield r'revoked_at';
      yield serializers.serialize(
        object.revokedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ApiKeysPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ApiKeysPost201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'last_used_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUsedAt = valueDes;
          break;
        case r'prefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prefix = valueDes;
          break;
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secret = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
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
        case r'revoked_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.revokedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ApiKeysPost201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ApiKeysPost201ResponseBuilder();
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


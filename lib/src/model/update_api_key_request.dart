//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_api_key_request.g.dart';

/// UpdateApiKeyRequest
///
/// Properties:
/// * [label] - Free-text identifier shown in the dashboard.
/// * [scopes] - Replaces the key's scopes entirely.
/// * [expiresAt] - A future timestamp to set an expiry, or null to remove one.
@BuiltValue()
abstract class UpdateApiKeyRequest implements Built<UpdateApiKeyRequest, UpdateApiKeyRequestBuilder> {
  /// Free-text identifier shown in the dashboard.
  @BuiltValueField(wireName: r'label')
  String? get label;

  /// Replaces the key's scopes entirely.
  @BuiltValueField(wireName: r'scopes')
  BuiltList<String>? get scopes;

  /// A future timestamp to set an expiry, or null to remove one.
  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  UpdateApiKeyRequest._();

  factory UpdateApiKeyRequest([void updates(UpdateApiKeyRequestBuilder b)]) = _$UpdateApiKeyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateApiKeyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateApiKeyRequest> get serializer => _$UpdateApiKeyRequestSerializer();
}

class _$UpdateApiKeyRequestSerializer implements PrimitiveSerializer<UpdateApiKeyRequest> {
  @override
  final Iterable<Type> types = const [UpdateApiKeyRequest, _$UpdateApiKeyRequest];

  @override
  final String wireName = r'UpdateApiKeyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateApiKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.scopes != null) {
      yield r'scopes';
      yield serializers.serialize(
        object.scopes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateApiKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateApiKeyRequestBuilder result,
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
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.scopes.replace(valueDes);
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateApiKeyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateApiKeyRequestBuilder();
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


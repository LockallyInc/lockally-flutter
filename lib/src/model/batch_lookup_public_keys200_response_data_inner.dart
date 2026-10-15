//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_lookup_public_keys200_response_data_inner.g.dart';

/// BatchLookupPublicKeys200ResponseDataInner
///
/// Properties:
/// * [email] 
/// * [publicKey] 
/// * [keyId] 
@BuiltValue()
abstract class BatchLookupPublicKeys200ResponseDataInner implements Built<BatchLookupPublicKeys200ResponseDataInner, BatchLookupPublicKeys200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'public_key')
  String? get publicKey;

  @BuiltValueField(wireName: r'key_id')
  String? get keyId;

  BatchLookupPublicKeys200ResponseDataInner._();

  factory BatchLookupPublicKeys200ResponseDataInner([void updates(BatchLookupPublicKeys200ResponseDataInnerBuilder b)]) = _$BatchLookupPublicKeys200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchLookupPublicKeys200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchLookupPublicKeys200ResponseDataInner> get serializer => _$BatchLookupPublicKeys200ResponseDataInnerSerializer();
}

class _$BatchLookupPublicKeys200ResponseDataInnerSerializer implements PrimitiveSerializer<BatchLookupPublicKeys200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [BatchLookupPublicKeys200ResponseDataInner, _$BatchLookupPublicKeys200ResponseDataInner];

  @override
  final String wireName = r'BatchLookupPublicKeys200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchLookupPublicKeys200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.publicKey != null) {
      yield r'public_key';
      yield serializers.serialize(
        object.publicKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.keyId != null) {
      yield r'key_id';
      yield serializers.serialize(
        object.keyId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchLookupPublicKeys200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchLookupPublicKeys200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'public_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.publicKey = valueDes;
          break;
        case r'key_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchLookupPublicKeys200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchLookupPublicKeys200ResponseDataInnerBuilder();
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


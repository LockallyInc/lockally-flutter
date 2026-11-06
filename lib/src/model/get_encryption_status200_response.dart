//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/get_encryption_status200_response_mailboxes_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_encryption_status200_response.g.dart';

/// GetEncryptionStatus200Response
///
/// Properties:
/// * [eligible] 
/// * [active] 
/// * [mailboxes] 
@BuiltValue()
abstract class GetEncryptionStatus200Response implements Built<GetEncryptionStatus200Response, GetEncryptionStatus200ResponseBuilder> {
  @BuiltValueField(wireName: r'eligible')
  bool? get eligible;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  @BuiltValueField(wireName: r'mailboxes')
  BuiltList<GetEncryptionStatus200ResponseMailboxesInner>? get mailboxes;

  GetEncryptionStatus200Response._();

  factory GetEncryptionStatus200Response([void updates(GetEncryptionStatus200ResponseBuilder b)]) = _$GetEncryptionStatus200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetEncryptionStatus200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetEncryptionStatus200Response> get serializer => _$GetEncryptionStatus200ResponseSerializer();
}

class _$GetEncryptionStatus200ResponseSerializer implements PrimitiveSerializer<GetEncryptionStatus200Response> {
  @override
  final Iterable<Type> types = const [GetEncryptionStatus200Response, _$GetEncryptionStatus200Response];

  @override
  final String wireName = r'GetEncryptionStatus200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetEncryptionStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.eligible != null) {
      yield r'eligible';
      yield serializers.serialize(
        object.eligible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.mailboxes != null) {
      yield r'mailboxes';
      yield serializers.serialize(
        object.mailboxes,
        specifiedType: const FullType(BuiltList, [FullType(GetEncryptionStatus200ResponseMailboxesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetEncryptionStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetEncryptionStatus200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'eligible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.eligible = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        case r'mailboxes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetEncryptionStatus200ResponseMailboxesInner)]),
          ) as BuiltList<GetEncryptionStatus200ResponseMailboxesInner>;
          result.mailboxes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetEncryptionStatus200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetEncryptionStatus200ResponseBuilder();
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


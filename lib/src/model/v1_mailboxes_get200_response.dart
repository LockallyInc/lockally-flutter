//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/mailbox.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_mailboxes_get200_response.g.dart';

/// V1MailboxesGet200Response
///
/// Properties:
/// * [data] 
/// * [limit] 
@BuiltValue()
abstract class V1MailboxesGet200Response implements Built<V1MailboxesGet200Response, V1MailboxesGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Mailbox> get data;

  @BuiltValueField(wireName: r'limit')
  int get limit;

  V1MailboxesGet200Response._();

  factory V1MailboxesGet200Response([void updates(V1MailboxesGet200ResponseBuilder b)]) = _$V1MailboxesGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1MailboxesGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1MailboxesGet200Response> get serializer => _$V1MailboxesGet200ResponseSerializer();
}

class _$V1MailboxesGet200ResponseSerializer implements PrimitiveSerializer<V1MailboxesGet200Response> {
  @override
  final Iterable<Type> types = const [V1MailboxesGet200Response, _$V1MailboxesGet200Response];

  @override
  final String wireName = r'V1MailboxesGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1MailboxesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(Mailbox)]),
    );
    yield r'limit';
    yield serializers.serialize(
      object.limit,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1MailboxesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1MailboxesGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Mailbox)]),
          ) as BuiltList<Mailbox>;
          result.data.replace(valueDes);
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1MailboxesGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1MailboxesGet200ResponseBuilder();
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


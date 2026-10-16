//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/get_storage200_response_top_mailboxes_inner.dart';
import 'package:lockally/src/model/get_storage200_response_top_messages_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_storage200_response.g.dart';

/// GetStorage200Response
///
/// Properties:
/// * [totalBytes] 
/// * [allocBytes] 
/// * [perSeatBytes] 
/// * [topMailboxes] 
/// * [topMessages] 
/// * [generatedAt] 
@BuiltValue()
abstract class GetStorage200Response implements Built<GetStorage200Response, GetStorage200ResponseBuilder> {
  @BuiltValueField(wireName: r'total_bytes')
  int? get totalBytes;

  @BuiltValueField(wireName: r'alloc_bytes')
  int? get allocBytes;

  @BuiltValueField(wireName: r'per_seat_bytes')
  int? get perSeatBytes;

  @BuiltValueField(wireName: r'top_mailboxes')
  BuiltList<GetStorage200ResponseTopMailboxesInner>? get topMailboxes;

  @BuiltValueField(wireName: r'top_messages')
  BuiltList<GetStorage200ResponseTopMessagesInner>? get topMessages;

  @BuiltValueField(wireName: r'generated_at')
  DateTime? get generatedAt;

  GetStorage200Response._();

  factory GetStorage200Response([void updates(GetStorage200ResponseBuilder b)]) = _$GetStorage200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetStorage200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetStorage200Response> get serializer => _$GetStorage200ResponseSerializer();
}

class _$GetStorage200ResponseSerializer implements PrimitiveSerializer<GetStorage200Response> {
  @override
  final Iterable<Type> types = const [GetStorage200Response, _$GetStorage200Response];

  @override
  final String wireName = r'GetStorage200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetStorage200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalBytes != null) {
      yield r'total_bytes';
      yield serializers.serialize(
        object.totalBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.allocBytes != null) {
      yield r'alloc_bytes';
      yield serializers.serialize(
        object.allocBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.perSeatBytes != null) {
      yield r'per_seat_bytes';
      yield serializers.serialize(
        object.perSeatBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.topMailboxes != null) {
      yield r'top_mailboxes';
      yield serializers.serialize(
        object.topMailboxes,
        specifiedType: const FullType(BuiltList, [FullType(GetStorage200ResponseTopMailboxesInner)]),
      );
    }
    if (object.topMessages != null) {
      yield r'top_messages';
      yield serializers.serialize(
        object.topMessages,
        specifiedType: const FullType(BuiltList, [FullType(GetStorage200ResponseTopMessagesInner)]),
      );
    }
    if (object.generatedAt != null) {
      yield r'generated_at';
      yield serializers.serialize(
        object.generatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetStorage200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetStorage200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalBytes = valueDes;
          break;
        case r'alloc_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.allocBytes = valueDes;
          break;
        case r'per_seat_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.perSeatBytes = valueDes;
          break;
        case r'top_mailboxes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetStorage200ResponseTopMailboxesInner)]),
          ) as BuiltList<GetStorage200ResponseTopMailboxesInner>;
          result.topMailboxes.replace(valueDes);
          break;
        case r'top_messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetStorage200ResponseTopMessagesInner)]),
          ) as BuiltList<GetStorage200ResponseTopMessagesInner>;
          result.topMessages.replace(valueDes);
          break;
        case r'generated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetStorage200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetStorage200ResponseBuilder();
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


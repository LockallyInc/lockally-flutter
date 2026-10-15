//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/mailbox.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_mailboxes200_response.g.dart';

/// ListMailboxes200Response
///
/// Properties:
/// * [data] 
/// * [limit] 
@BuiltValue()
abstract class ListMailboxes200Response implements Built<ListMailboxes200Response, ListMailboxes200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Mailbox> get data;

  @BuiltValueField(wireName: r'limit')
  int get limit;

  ListMailboxes200Response._();

  factory ListMailboxes200Response([void updates(ListMailboxes200ResponseBuilder b)]) = _$ListMailboxes200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListMailboxes200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListMailboxes200Response> get serializer => _$ListMailboxes200ResponseSerializer();
}

class _$ListMailboxes200ResponseSerializer implements PrimitiveSerializer<ListMailboxes200Response> {
  @override
  final Iterable<Type> types = const [ListMailboxes200Response, _$ListMailboxes200Response];

  @override
  final String wireName = r'ListMailboxes200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListMailboxes200Response object, {
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
    ListMailboxes200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListMailboxes200ResponseBuilder result,
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
  ListMailboxes200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMailboxes200ResponseBuilder();
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


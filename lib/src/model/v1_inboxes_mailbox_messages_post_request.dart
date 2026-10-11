//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_inboxes_mailbox_messages_post_request.g.dart';

/// V1InboxesMailboxMessagesPostRequest
///
/// Properties:
/// * [to] 
/// * [cc] 
/// * [subject] 
/// * [text] 
/// * [html] 
@BuiltValue()
abstract class V1InboxesMailboxMessagesPostRequest implements Built<V1InboxesMailboxMessagesPostRequest, V1InboxesMailboxMessagesPostRequestBuilder> {
  @BuiltValueField(wireName: r'to')
  BuiltList<String> get to;

  @BuiltValueField(wireName: r'cc')
  BuiltList<String>? get cc;

  @BuiltValueField(wireName: r'subject')
  String? get subject;

  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'html')
  String? get html;

  V1InboxesMailboxMessagesPostRequest._();

  factory V1InboxesMailboxMessagesPostRequest([void updates(V1InboxesMailboxMessagesPostRequestBuilder b)]) = _$V1InboxesMailboxMessagesPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1InboxesMailboxMessagesPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1InboxesMailboxMessagesPostRequest> get serializer => _$V1InboxesMailboxMessagesPostRequestSerializer();
}

class _$V1InboxesMailboxMessagesPostRequestSerializer implements PrimitiveSerializer<V1InboxesMailboxMessagesPostRequest> {
  @override
  final Iterable<Type> types = const [V1InboxesMailboxMessagesPostRequest, _$V1InboxesMailboxMessagesPostRequest];

  @override
  final String wireName = r'V1InboxesMailboxMessagesPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1InboxesMailboxMessagesPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.cc != null) {
      yield r'cc';
      yield serializers.serialize(
        object.cc,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1InboxesMailboxMessagesPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1InboxesMailboxMessagesPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.to.replace(valueDes);
          break;
        case r'cc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.cc.replace(valueDes);
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.html = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1InboxesMailboxMessagesPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1InboxesMailboxMessagesPostRequestBuilder();
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


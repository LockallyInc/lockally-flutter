//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/v1_send_post_request_attachments_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_send_post_request.g.dart';

/// V1SendPostRequest
///
/// Properties:
/// * [from] 
/// * [to] 
/// * [cc] 
/// * [bcc] 
/// * [subject] 
/// * [text] - Plain-text body. Required if `html` is absent.
/// * [html] - HTML body. Required if `text` is absent.
/// * [headers] 
/// * [replyTo] - Where replies go. REQUIRED when `from` has no mailbox behind it, since a reply there would be delivered nowhere. A `Reply-To` entry in `headers` satisfies the same rule. The named form `Acme Support <a@b.com>` is also accepted.
/// * [replyToName] - Display name shown on `Reply-To`, e.g. `Acme Support`. Ignored without `reply_to`. Encoded and quoted for you, so accents, commas and quotes are all safe.
/// * [unsubscribe] - Mark as opt-in/broadcast: skips suppressed recipients and adds a managed one-click List-Unsubscribe header.
/// * [templateId] - Render subject/text/html from a stored template (GET /v1/templates). Mutually exclusive with inline subject/text/html.
/// * [variables] - Values substituted into the template's {{variable}} placeholders.
/// * [sendAt] - Schedule delivery for a future RFC3339 time (≤ 30 days out). Omit or past = send now. Cancel with DELETE /v1/messages/{id} while scheduled.
/// * [attachments] 
@BuiltValue()
abstract class V1SendPostRequest implements Built<V1SendPostRequest, V1SendPostRequestBuilder> {
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  BuiltList<String> get to;

  @BuiltValueField(wireName: r'cc')
  BuiltList<String>? get cc;

  @BuiltValueField(wireName: r'bcc')
  BuiltList<String>? get bcc;

  @BuiltValueField(wireName: r'subject')
  String? get subject;

  /// Plain-text body. Required if `html` is absent.
  @BuiltValueField(wireName: r'text')
  String? get text;

  /// HTML body. Required if `text` is absent.
  @BuiltValueField(wireName: r'html')
  String? get html;

  @BuiltValueField(wireName: r'headers')
  BuiltMap<String, String>? get headers;

  /// Where replies go. REQUIRED when `from` has no mailbox behind it, since a reply there would be delivered nowhere. A `Reply-To` entry in `headers` satisfies the same rule. The named form `Acme Support <a@b.com>` is also accepted.
  @BuiltValueField(wireName: r'reply_to')
  String? get replyTo;

  /// Display name shown on `Reply-To`, e.g. `Acme Support`. Ignored without `reply_to`. Encoded and quoted for you, so accents, commas and quotes are all safe.
  @BuiltValueField(wireName: r'reply_to_name')
  String? get replyToName;

  /// Mark as opt-in/broadcast: skips suppressed recipients and adds a managed one-click List-Unsubscribe header.
  @BuiltValueField(wireName: r'unsubscribe')
  bool? get unsubscribe;

  /// Render subject/text/html from a stored template (GET /v1/templates). Mutually exclusive with inline subject/text/html.
  @BuiltValueField(wireName: r'template_id')
  String? get templateId;

  /// Values substituted into the template's {{variable}} placeholders.
  @BuiltValueField(wireName: r'variables')
  BuiltMap<String, String>? get variables;

  /// Schedule delivery for a future RFC3339 time (≤ 30 days out). Omit or past = send now. Cancel with DELETE /v1/messages/{id} while scheduled.
  @BuiltValueField(wireName: r'send_at')
  DateTime? get sendAt;

  @BuiltValueField(wireName: r'attachments')
  BuiltList<V1SendPostRequestAttachmentsInner>? get attachments;

  V1SendPostRequest._();

  factory V1SendPostRequest([void updates(V1SendPostRequestBuilder b)]) = _$V1SendPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1SendPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1SendPostRequest> get serializer => _$V1SendPostRequestSerializer();
}

class _$V1SendPostRequestSerializer implements PrimitiveSerializer<V1SendPostRequest> {
  @override
  final Iterable<Type> types = const [V1SendPostRequest, _$V1SendPostRequest];

  @override
  final String wireName = r'V1SendPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1SendPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
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
    if (object.bcc != null) {
      yield r'bcc';
      yield serializers.serialize(
        object.bcc,
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
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType(String),
      );
    }
    if (object.headers != null) {
      yield r'headers';
      yield serializers.serialize(
        object.headers,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.replyTo != null) {
      yield r'reply_to';
      yield serializers.serialize(
        object.replyTo,
        specifiedType: const FullType(String),
      );
    }
    if (object.replyToName != null) {
      yield r'reply_to_name';
      yield serializers.serialize(
        object.replyToName,
        specifiedType: const FullType(String),
      );
    }
    if (object.unsubscribe != null) {
      yield r'unsubscribe';
      yield serializers.serialize(
        object.unsubscribe,
        specifiedType: const FullType(bool),
      );
    }
    if (object.templateId != null) {
      yield r'template_id';
      yield serializers.serialize(
        object.templateId,
        specifiedType: const FullType(String),
      );
    }
    if (object.variables != null) {
      yield r'variables';
      yield serializers.serialize(
        object.variables,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.sendAt != null) {
      yield r'send_at';
      yield serializers.serialize(
        object.sendAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(BuiltList, [FullType(V1SendPostRequestAttachmentsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1SendPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1SendPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
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
        case r'bcc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.bcc.replace(valueDes);
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
        case r'headers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.headers.replace(valueDes);
          break;
        case r'reply_to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.replyTo = valueDes;
          break;
        case r'reply_to_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.replyToName = valueDes;
          break;
        case r'unsubscribe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unsubscribe = valueDes;
          break;
        case r'template_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateId = valueDes;
          break;
        case r'variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.variables.replace(valueDes);
          break;
        case r'send_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.sendAt = valueDes;
          break;
        case r'attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(V1SendPostRequestAttachmentsInner)]),
          ) as BuiltList<V1SendPostRequestAttachmentsInner>;
          result.attachments.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1SendPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1SendPostRequestBuilder();
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


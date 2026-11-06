//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/send_email_request_attachments_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_email_request.g.dart';

/// SendEmailRequest
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
/// * [metadata] - Arbitrary key/value you attach to this message and get back on every delivery webhook for it, so a send can be matched to your own records without a lookup table.  **It never leaves Lockally.** A custom entry in `headers` goes out on the wire to the recipient, which is why that is not a substitute: order ids and internal identifiers do not belong in a header the recipient can read.  At most 20 keys, keys at most 64 characters, values at most 512. **Over a limit is refused with a `400`, never truncated**: a silently shortened order id succeeds and then fails to match weeks later.  Not indexed and not filterable. 
/// * [tags] - Labels that group this send for filtering and analytics: campaign, template, environment.  **Lowercased, trimmed and deduplicated on write**, so the grouping does not depend on every caller spelling them identically. `Campaign-X` is stored as `campaign-x`, and either spelling matches it in a filter.  At most 10 per message after deduplication, each at most 32 characters. Over either is a `400` rather than a trimmed list: a send missing the tag it was tagged for is worse than a refusal.  Unlike `metadata`, tags ARE queryable: filter with `GET /v1/messages?tag=` and group with `GET /v1/messages/stats?tag=`. 
/// * [trackOpens] - Override the account's open-tracking setting for this one send. Omit to inherit it.  Three states matter here: `true`, `false`, and absent. A transactional receipt can set `false` without the account turning tracking off for its marketing. 
/// * [trackClicks] - As `track_opens`, for click tracking. Click tracking rewrites `http(s)` links in the **HTML** part only: the plain-text part is never rewritten, because a visible redirect URL is what recipients complain about. A text-only send is therefore not click-tracked. 
/// * [attachments] 
@BuiltValue()
abstract class SendEmailRequest implements Built<SendEmailRequest, SendEmailRequestBuilder> {
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

  /// Arbitrary key/value you attach to this message and get back on every delivery webhook for it, so a send can be matched to your own records without a lookup table.  **It never leaves Lockally.** A custom entry in `headers` goes out on the wire to the recipient, which is why that is not a substitute: order ids and internal identifiers do not belong in a header the recipient can read.  At most 20 keys, keys at most 64 characters, values at most 512. **Over a limit is refused with a `400`, never truncated**: a silently shortened order id succeeds and then fails to match weeks later.  Not indexed and not filterable. 
  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, String>? get metadata;

  /// Labels that group this send for filtering and analytics: campaign, template, environment.  **Lowercased, trimmed and deduplicated on write**, so the grouping does not depend on every caller spelling them identically. `Campaign-X` is stored as `campaign-x`, and either spelling matches it in a filter.  At most 10 per message after deduplication, each at most 32 characters. Over either is a `400` rather than a trimmed list: a send missing the tag it was tagged for is worse than a refusal.  Unlike `metadata`, tags ARE queryable: filter with `GET /v1/messages?tag=` and group with `GET /v1/messages/stats?tag=`. 
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Override the account's open-tracking setting for this one send. Omit to inherit it.  Three states matter here: `true`, `false`, and absent. A transactional receipt can set `false` without the account turning tracking off for its marketing. 
  @BuiltValueField(wireName: r'track_opens')
  bool? get trackOpens;

  /// As `track_opens`, for click tracking. Click tracking rewrites `http(s)` links in the **HTML** part only: the plain-text part is never rewritten, because a visible redirect URL is what recipients complain about. A text-only send is therefore not click-tracked. 
  @BuiltValueField(wireName: r'track_clicks')
  bool? get trackClicks;

  @BuiltValueField(wireName: r'attachments')
  BuiltList<SendEmailRequestAttachmentsInner>? get attachments;

  SendEmailRequest._();

  factory SendEmailRequest([void updates(SendEmailRequestBuilder b)]) = _$SendEmailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendEmailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendEmailRequest> get serializer => _$SendEmailRequestSerializer();
}

class _$SendEmailRequestSerializer implements PrimitiveSerializer<SendEmailRequest> {
  @override
  final Iterable<Type> types = const [SendEmailRequest, _$SendEmailRequest];

  @override
  final String wireName = r'SendEmailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendEmailRequest object, {
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
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.trackOpens != null) {
      yield r'track_opens';
      yield serializers.serialize(
        object.trackOpens,
        specifiedType: const FullType(bool),
      );
    }
    if (object.trackClicks != null) {
      yield r'track_clicks';
      yield serializers.serialize(
        object.trackClicks,
        specifiedType: const FullType(bool),
      );
    }
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(BuiltList, [FullType(SendEmailRequestAttachmentsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendEmailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendEmailRequestBuilder result,
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
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.metadata.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'track_opens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.trackOpens = valueDes;
          break;
        case r'track_clicks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.trackClicks = valueDes;
          break;
        case r'attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendEmailRequestAttachmentsInner)]),
          ) as BuiltList<SendEmailRequestAttachmentsInner>;
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
  SendEmailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendEmailRequestBuilder();
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


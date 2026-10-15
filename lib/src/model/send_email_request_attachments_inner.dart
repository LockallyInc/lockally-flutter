//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_email_request_attachments_inner.g.dart';

/// SendEmailRequestAttachmentsInner
///
/// Properties:
/// * [filename] 
/// * [contentType] 
/// * [contentBase64] - Base64-encoded body, max 10 MB decoded per attachment.
@BuiltValue()
abstract class SendEmailRequestAttachmentsInner implements Built<SendEmailRequestAttachmentsInner, SendEmailRequestAttachmentsInnerBuilder> {
  @BuiltValueField(wireName: r'filename')
  String get filename;

  @BuiltValueField(wireName: r'content_type')
  String get contentType;

  /// Base64-encoded body, max 10 MB decoded per attachment.
  @BuiltValueField(wireName: r'content_base64')
  String get contentBase64;

  SendEmailRequestAttachmentsInner._();

  factory SendEmailRequestAttachmentsInner([void updates(SendEmailRequestAttachmentsInnerBuilder b)]) = _$SendEmailRequestAttachmentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendEmailRequestAttachmentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendEmailRequestAttachmentsInner> get serializer => _$SendEmailRequestAttachmentsInnerSerializer();
}

class _$SendEmailRequestAttachmentsInnerSerializer implements PrimitiveSerializer<SendEmailRequestAttachmentsInner> {
  @override
  final Iterable<Type> types = const [SendEmailRequestAttachmentsInner, _$SendEmailRequestAttachmentsInner];

  @override
  final String wireName = r'SendEmailRequestAttachmentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendEmailRequestAttachmentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'filename';
    yield serializers.serialize(
      object.filename,
      specifiedType: const FullType(String),
    );
    yield r'content_type';
    yield serializers.serialize(
      object.contentType,
      specifiedType: const FullType(String),
    );
    yield r'content_base64';
    yield serializers.serialize(
      object.contentBase64,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SendEmailRequestAttachmentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendEmailRequestAttachmentsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filename = valueDes;
          break;
        case r'content_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentType = valueDes;
          break;
        case r'content_base64':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentBase64 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendEmailRequestAttachmentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendEmailRequestAttachmentsInnerBuilder();
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


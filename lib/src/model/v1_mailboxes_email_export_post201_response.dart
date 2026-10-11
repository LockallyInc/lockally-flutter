//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_mailboxes_email_export_post201_response.g.dart';

/// V1MailboxesEmailExportPost201Response
///
/// Properties:
/// * [url] - Relative download URL. Caller appends to the API host.
/// * [expiresAt] 
/// * [format] 
@BuiltValue()
abstract class V1MailboxesEmailExportPost201Response implements Built<V1MailboxesEmailExportPost201Response, V1MailboxesEmailExportPost201ResponseBuilder> {
  /// Relative download URL. Caller appends to the API host.
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'expires_at')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'format')
  V1MailboxesEmailExportPost201ResponseFormatEnum get format;
  // enum formatEnum {  mbox,  };

  V1MailboxesEmailExportPost201Response._();

  factory V1MailboxesEmailExportPost201Response([void updates(V1MailboxesEmailExportPost201ResponseBuilder b)]) = _$V1MailboxesEmailExportPost201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1MailboxesEmailExportPost201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1MailboxesEmailExportPost201Response> get serializer => _$V1MailboxesEmailExportPost201ResponseSerializer();
}

class _$V1MailboxesEmailExportPost201ResponseSerializer implements PrimitiveSerializer<V1MailboxesEmailExportPost201Response> {
  @override
  final Iterable<Type> types = const [V1MailboxesEmailExportPost201Response, _$V1MailboxesEmailExportPost201Response];

  @override
  final String wireName = r'V1MailboxesEmailExportPost201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1MailboxesEmailExportPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'expires_at';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(V1MailboxesEmailExportPost201ResponseFormatEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1MailboxesEmailExportPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1MailboxesEmailExportPost201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1MailboxesEmailExportPost201ResponseFormatEnum),
          ) as V1MailboxesEmailExportPost201ResponseFormatEnum;
          result.format = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1MailboxesEmailExportPost201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1MailboxesEmailExportPost201ResponseBuilder();
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

class V1MailboxesEmailExportPost201ResponseFormatEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'mbox')
  static const V1MailboxesEmailExportPost201ResponseFormatEnum mbox = _$v1MailboxesEmailExportPost201ResponseFormatEnum_mbox;

  static Serializer<V1MailboxesEmailExportPost201ResponseFormatEnum> get serializer => _$v1MailboxesEmailExportPost201ResponseFormatEnumSerializer;

  const V1MailboxesEmailExportPost201ResponseFormatEnum._(String name): super(name);

  static BuiltSet<V1MailboxesEmailExportPost201ResponseFormatEnum> get values => _$v1MailboxesEmailExportPost201ResponseFormatEnumValues;
  static V1MailboxesEmailExportPost201ResponseFormatEnum valueOf(String name) => _$v1MailboxesEmailExportPost201ResponseFormatEnumValueOf(name);
}


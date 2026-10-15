//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_mailbox201_response.g.dart';

/// ExportMailbox201Response
///
/// Properties:
/// * [url] - Relative download URL. Caller appends to the API host.
/// * [expiresAt] 
/// * [format] 
@BuiltValue()
abstract class ExportMailbox201Response implements Built<ExportMailbox201Response, ExportMailbox201ResponseBuilder> {
  /// Relative download URL. Caller appends to the API host.
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'expires_at')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'format')
  ExportMailbox201ResponseFormatEnum get format;
  // enum formatEnum {  mbox,  };

  ExportMailbox201Response._();

  factory ExportMailbox201Response([void updates(ExportMailbox201ResponseBuilder b)]) = _$ExportMailbox201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportMailbox201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportMailbox201Response> get serializer => _$ExportMailbox201ResponseSerializer();
}

class _$ExportMailbox201ResponseSerializer implements PrimitiveSerializer<ExportMailbox201Response> {
  @override
  final Iterable<Type> types = const [ExportMailbox201Response, _$ExportMailbox201Response];

  @override
  final String wireName = r'ExportMailbox201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportMailbox201Response object, {
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
      specifiedType: const FullType(ExportMailbox201ResponseFormatEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportMailbox201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportMailbox201ResponseBuilder result,
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
            specifiedType: const FullType(ExportMailbox201ResponseFormatEnum),
          ) as ExportMailbox201ResponseFormatEnum;
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
  ExportMailbox201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportMailbox201ResponseBuilder();
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

class ExportMailbox201ResponseFormatEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'mbox')
  static const ExportMailbox201ResponseFormatEnum mbox = _$exportMailbox201ResponseFormatEnum_mbox;

  static Serializer<ExportMailbox201ResponseFormatEnum> get serializer => _$exportMailbox201ResponseFormatEnumSerializer;

  const ExportMailbox201ResponseFormatEnum._(String name): super(name);

  static BuiltSet<ExportMailbox201ResponseFormatEnum> get values => _$exportMailbox201ResponseFormatEnumValues;
  static ExportMailbox201ResponseFormatEnum valueOf(String name) => _$exportMailbox201ResponseFormatEnumValueOf(name);
}


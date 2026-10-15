//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'template_input.g.dart';

/// TemplateInput
///
/// Properties:
/// * [name] - Template name (1–120 chars).
/// * [subject] - May contain {{variable}} placeholders.
/// * [html] - HTML body; {{variable}} values are HTML-escaped.
/// * [text] - Plain-text body.
@BuiltValue()
abstract class TemplateInput implements Built<TemplateInput, TemplateInputBuilder> {
  /// Template name (1–120 chars).
  @BuiltValueField(wireName: r'name')
  String get name;

  /// May contain {{variable}} placeholders.
  @BuiltValueField(wireName: r'subject')
  String? get subject;

  /// HTML body; {{variable}} values are HTML-escaped.
  @BuiltValueField(wireName: r'html')
  String? get html;

  /// Plain-text body.
  @BuiltValueField(wireName: r'text')
  String? get text;

  TemplateInput._();

  factory TemplateInput([void updates(TemplateInputBuilder b)]) = _$TemplateInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TemplateInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TemplateInput> get serializer => _$TemplateInputSerializer();
}

class _$TemplateInputSerializer implements PrimitiveSerializer<TemplateInput> {
  @override
  final Iterable<Type> types = const [TemplateInput, _$TemplateInput];

  @override
  final String wireName = r'TemplateInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TemplateInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
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
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TemplateInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TemplateInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.html = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TemplateInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateInputBuilder();
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


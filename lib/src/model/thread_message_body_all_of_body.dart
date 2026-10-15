//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread_message_body_all_of_body.g.dart';

/// ThreadMessageBodyAllOfBody
///
/// Properties:
/// * [text] 
/// * [html] 
/// * [truncated] 
@BuiltValue()
abstract class ThreadMessageBodyAllOfBody implements Built<ThreadMessageBodyAllOfBody, ThreadMessageBodyAllOfBodyBuilder> {
  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'html')
  String? get html;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  ThreadMessageBodyAllOfBody._();

  factory ThreadMessageBodyAllOfBody([void updates(ThreadMessageBodyAllOfBodyBuilder b)]) = _$ThreadMessageBodyAllOfBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThreadMessageBodyAllOfBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThreadMessageBodyAllOfBody> get serializer => _$ThreadMessageBodyAllOfBodySerializer();
}

class _$ThreadMessageBodyAllOfBodySerializer implements PrimitiveSerializer<ThreadMessageBodyAllOfBody> {
  @override
  final Iterable<Type> types = const [ThreadMessageBodyAllOfBody, _$ThreadMessageBodyAllOfBody];

  @override
  final String wireName = r'ThreadMessageBodyAllOfBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThreadMessageBodyAllOfBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ThreadMessageBodyAllOfBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThreadMessageBodyAllOfBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThreadMessageBodyAllOfBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThreadMessageBodyAllOfBodyBuilder();
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


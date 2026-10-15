//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread_message_body_body.g.dart';

/// Absent when the stored message could not be fetched.
///
/// Properties:
/// * [text] 
/// * [html] 
/// * [truncated] 
@BuiltValue()
abstract class ThreadMessageBodyBody implements Built<ThreadMessageBodyBody, ThreadMessageBodyBodyBuilder> {
  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'html')
  String? get html;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  ThreadMessageBodyBody._();

  factory ThreadMessageBodyBody([void updates(ThreadMessageBodyBodyBuilder b)]) = _$ThreadMessageBodyBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThreadMessageBodyBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThreadMessageBodyBody> get serializer => _$ThreadMessageBodyBodySerializer();
}

class _$ThreadMessageBodyBodySerializer implements PrimitiveSerializer<ThreadMessageBodyBody> {
  @override
  final Iterable<Type> types = const [ThreadMessageBodyBody, _$ThreadMessageBodyBody];

  @override
  final String wireName = r'ThreadMessageBodyBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThreadMessageBodyBody object, {
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
    ThreadMessageBodyBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThreadMessageBodyBodyBuilder result,
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
  ThreadMessageBodyBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThreadMessageBodyBodyBuilder();
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


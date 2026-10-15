//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/classification.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread_classification.g.dart';

/// ThreadClassification
///
/// Properties:
/// * [threadId] 
/// * [cached] - True when a previous classification was reused.
/// * [classification] 
@BuiltValue()
abstract class ThreadClassification implements Built<ThreadClassification, ThreadClassificationBuilder> {
  @BuiltValueField(wireName: r'thread_id')
  String get threadId;

  /// True when a previous classification was reused.
  @BuiltValueField(wireName: r'cached')
  bool? get cached;

  @BuiltValueField(wireName: r'classification')
  Classification? get classification;

  ThreadClassification._();

  factory ThreadClassification([void updates(ThreadClassificationBuilder b)]) = _$ThreadClassification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThreadClassificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThreadClassification> get serializer => _$ThreadClassificationSerializer();
}

class _$ThreadClassificationSerializer implements PrimitiveSerializer<ThreadClassification> {
  @override
  final Iterable<Type> types = const [ThreadClassification, _$ThreadClassification];

  @override
  final String wireName = r'ThreadClassification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThreadClassification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'thread_id';
    yield serializers.serialize(
      object.threadId,
      specifiedType: const FullType(String),
    );
    if (object.cached != null) {
      yield r'cached';
      yield serializers.serialize(
        object.cached,
        specifiedType: const FullType(bool),
      );
    }
    if (object.classification != null) {
      yield r'classification';
      yield serializers.serialize(
        object.classification,
        specifiedType: const FullType(Classification),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ThreadClassification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThreadClassificationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'thread_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.threadId = valueDes;
          break;
        case r'cached':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.cached = valueDes;
          break;
        case r'classification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Classification),
          ) as Classification;
          result.classification.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThreadClassification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThreadClassificationBuilder();
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


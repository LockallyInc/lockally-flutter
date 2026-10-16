//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mark_read_result.g.dart';

/// MarkReadResult
///
/// Properties:
/// * [messageId] 
/// * [read] 
@BuiltValue()
abstract class MarkReadResult implements Built<MarkReadResult, MarkReadResultBuilder> {
  @BuiltValueField(wireName: r'message_id')
  String? get messageId;

  @BuiltValueField(wireName: r'read')
  bool? get read;

  MarkReadResult._();

  factory MarkReadResult([void updates(MarkReadResultBuilder b)]) = _$MarkReadResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MarkReadResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MarkReadResult> get serializer => _$MarkReadResultSerializer();
}

class _$MarkReadResultSerializer implements PrimitiveSerializer<MarkReadResult> {
  @override
  final Iterable<Type> types = const [MarkReadResult, _$MarkReadResult];

  @override
  final String wireName = r'MarkReadResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MarkReadResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.messageId != null) {
      yield r'message_id';
      yield serializers.serialize(
        object.messageId,
        specifiedType: const FullType(String),
      );
    }
    if (object.read != null) {
      yield r'read';
      yield serializers.serialize(
        object.read,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MarkReadResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MarkReadResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageId = valueDes;
          break;
        case r'read':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.read = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MarkReadResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MarkReadResultBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'return_path_check.g.dart';

/// Present after a verify call.
///
/// Properties:
/// * [mx] 
/// * [spf] 
@BuiltValue()
abstract class ReturnPathCheck implements Built<ReturnPathCheck, ReturnPathCheckBuilder> {
  @BuiltValueField(wireName: r'mx')
  bool? get mx;

  @BuiltValueField(wireName: r'spf')
  bool? get spf;

  ReturnPathCheck._();

  factory ReturnPathCheck([void updates(ReturnPathCheckBuilder b)]) = _$ReturnPathCheck;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReturnPathCheckBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReturnPathCheck> get serializer => _$ReturnPathCheckSerializer();
}

class _$ReturnPathCheckSerializer implements PrimitiveSerializer<ReturnPathCheck> {
  @override
  final Iterable<Type> types = const [ReturnPathCheck, _$ReturnPathCheck];

  @override
  final String wireName = r'ReturnPathCheck';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReturnPathCheck object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mx != null) {
      yield r'mx';
      yield serializers.serialize(
        object.mx,
        specifiedType: const FullType(bool),
      );
    }
    if (object.spf != null) {
      yield r'spf';
      yield serializers.serialize(
        object.spf,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReturnPathCheck object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReturnPathCheckBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mx = valueDes;
          break;
        case r'spf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.spf = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReturnPathCheck deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReturnPathCheckBuilder();
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


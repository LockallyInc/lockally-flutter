//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vacation_params.g.dart';

/// VacationParams
///
/// Properties:
/// * [subject] 
/// * [body] 
/// * [startsAt] 
/// * [endsAt] 
@BuiltValue()
abstract class VacationParams implements Built<VacationParams, VacationParamsBuilder> {
  @BuiltValueField(wireName: r'subject')
  String get subject;

  @BuiltValueField(wireName: r'body')
  String get body;

  @BuiltValueField(wireName: r'starts_at')
  DateTime? get startsAt;

  @BuiltValueField(wireName: r'ends_at')
  DateTime? get endsAt;

  VacationParams._();

  factory VacationParams([void updates(VacationParamsBuilder b)]) = _$VacationParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VacationParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VacationParams> get serializer => _$VacationParamsSerializer();
}

class _$VacationParamsSerializer implements PrimitiveSerializer<VacationParams> {
  @override
  final Iterable<Type> types = const [VacationParams, _$VacationParams];

  @override
  final String wireName = r'VacationParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VacationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subject';
    yield serializers.serialize(
      object.subject,
      specifiedType: const FullType(String),
    );
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(String),
    );
    if (object.startsAt != null) {
      yield r'starts_at';
      yield serializers.serialize(
        object.startsAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.endsAt != null) {
      yield r'ends_at';
      yield serializers.serialize(
        object.endsAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VacationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VacationParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.body = valueDes;
          break;
        case r'starts_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startsAt = valueDes;
          break;
        case r'ends_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endsAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VacationParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VacationParamsBuilder();
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


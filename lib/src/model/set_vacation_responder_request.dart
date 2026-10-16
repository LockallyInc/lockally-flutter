//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/vacation_params.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_vacation_responder_request.g.dart';

/// SetVacationResponderRequest
///
/// Properties:
/// * [enabled] 
/// * [params] 
@BuiltValue()
abstract class SetVacationResponderRequest implements Built<SetVacationResponderRequest, SetVacationResponderRequestBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'params')
  VacationParams get params;

  SetVacationResponderRequest._();

  factory SetVacationResponderRequest([void updates(SetVacationResponderRequestBuilder b)]) = _$SetVacationResponderRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetVacationResponderRequestBuilder b) => b
      ..enabled = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetVacationResponderRequest> get serializer => _$SetVacationResponderRequestSerializer();
}

class _$SetVacationResponderRequestSerializer implements PrimitiveSerializer<SetVacationResponderRequest> {
  @override
  final Iterable<Type> types = const [SetVacationResponderRequest, _$SetVacationResponderRequest];

  @override
  final String wireName = r'SetVacationResponderRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetVacationResponderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'params';
    yield serializers.serialize(
      object.params,
      specifiedType: const FullType(VacationParams),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SetVacationResponderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetVacationResponderRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VacationParams),
          ) as VacationParams;
          result.params.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetVacationResponderRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetVacationResponderRequestBuilder();
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


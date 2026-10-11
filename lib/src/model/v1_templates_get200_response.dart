//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/template.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_templates_get200_response.g.dart';

/// V1TemplatesGet200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class V1TemplatesGet200Response implements Built<V1TemplatesGet200Response, V1TemplatesGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Template>? get data;

  V1TemplatesGet200Response._();

  factory V1TemplatesGet200Response([void updates(V1TemplatesGet200ResponseBuilder b)]) = _$V1TemplatesGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1TemplatesGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1TemplatesGet200Response> get serializer => _$V1TemplatesGet200ResponseSerializer();
}

class _$V1TemplatesGet200ResponseSerializer implements PrimitiveSerializer<V1TemplatesGet200Response> {
  @override
  final Iterable<Type> types = const [V1TemplatesGet200Response, _$V1TemplatesGet200Response];

  @override
  final String wireName = r'V1TemplatesGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1TemplatesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Template)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1TemplatesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1TemplatesGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Template)]),
          ) as BuiltList<Template>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1TemplatesGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1TemplatesGet200ResponseBuilder();
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


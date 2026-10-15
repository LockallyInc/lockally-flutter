//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/template.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_templates200_response.g.dart';

/// ListTemplates200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListTemplates200Response implements Built<ListTemplates200Response, ListTemplates200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Template>? get data;

  ListTemplates200Response._();

  factory ListTemplates200Response([void updates(ListTemplates200ResponseBuilder b)]) = _$ListTemplates200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListTemplates200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListTemplates200Response> get serializer => _$ListTemplates200ResponseSerializer();
}

class _$ListTemplates200ResponseSerializer implements PrimitiveSerializer<ListTemplates200Response> {
  @override
  final Iterable<Type> types = const [ListTemplates200Response, _$ListTemplates200Response];

  @override
  final String wireName = r'ListTemplates200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListTemplates200Response object, {
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
    ListTemplates200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListTemplates200ResponseBuilder result,
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
  ListTemplates200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTemplates200ResponseBuilder();
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


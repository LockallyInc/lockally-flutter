//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/add_on.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_add_ons200_response.g.dart';

/// ListAddOns200Response
///
/// Properties:
/// * [addOns] 
@BuiltValue()
abstract class ListAddOns200Response implements Built<ListAddOns200Response, ListAddOns200ResponseBuilder> {
  @BuiltValueField(wireName: r'add_ons')
  BuiltList<AddOn> get addOns;

  ListAddOns200Response._();

  factory ListAddOns200Response([void updates(ListAddOns200ResponseBuilder b)]) = _$ListAddOns200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListAddOns200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListAddOns200Response> get serializer => _$ListAddOns200ResponseSerializer();
}

class _$ListAddOns200ResponseSerializer implements PrimitiveSerializer<ListAddOns200Response> {
  @override
  final Iterable<Type> types = const [ListAddOns200Response, _$ListAddOns200Response];

  @override
  final String wireName = r'ListAddOns200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListAddOns200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'add_ons';
    yield serializers.serialize(
      object.addOns,
      specifiedType: const FullType(BuiltList, [FullType(AddOn)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListAddOns200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListAddOns200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'add_ons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AddOn)]),
          ) as BuiltList<AddOn>;
          result.addOns.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListAddOns200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListAddOns200ResponseBuilder();
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


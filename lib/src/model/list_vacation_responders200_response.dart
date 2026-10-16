//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/vacation_responder.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_vacation_responders200_response.g.dart';

/// ListVacationResponders200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListVacationResponders200Response implements Built<ListVacationResponders200Response, ListVacationResponders200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<VacationResponder> get data;

  ListVacationResponders200Response._();

  factory ListVacationResponders200Response([void updates(ListVacationResponders200ResponseBuilder b)]) = _$ListVacationResponders200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListVacationResponders200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListVacationResponders200Response> get serializer => _$ListVacationResponders200ResponseSerializer();
}

class _$ListVacationResponders200ResponseSerializer implements PrimitiveSerializer<ListVacationResponders200Response> {
  @override
  final Iterable<Type> types = const [ListVacationResponders200Response, _$ListVacationResponders200Response];

  @override
  final String wireName = r'ListVacationResponders200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListVacationResponders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(VacationResponder)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListVacationResponders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListVacationResponders200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(VacationResponder)]),
          ) as BuiltList<VacationResponder>;
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
  ListVacationResponders200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListVacationResponders200ResponseBuilder();
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


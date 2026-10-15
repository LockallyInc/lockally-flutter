//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/contact_list.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_contact_lists200_response.g.dart';

/// ListContactLists200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListContactLists200Response implements Built<ListContactLists200Response, ListContactLists200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ContactList>? get data;

  ListContactLists200Response._();

  factory ListContactLists200Response([void updates(ListContactLists200ResponseBuilder b)]) = _$ListContactLists200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListContactLists200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListContactLists200Response> get serializer => _$ListContactLists200ResponseSerializer();
}

class _$ListContactLists200ResponseSerializer implements PrimitiveSerializer<ListContactLists200Response> {
  @override
  final Iterable<Type> types = const [ListContactLists200Response, _$ListContactLists200Response];

  @override
  final String wireName = r'ListContactLists200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListContactLists200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ContactList)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListContactLists200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListContactLists200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ContactList)]),
          ) as BuiltList<ContactList>;
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
  ListContactLists200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListContactLists200ResponseBuilder();
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


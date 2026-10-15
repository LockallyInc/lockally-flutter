//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/contact.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_contacts200_response.g.dart';

/// ListContacts200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListContacts200Response implements Built<ListContacts200Response, ListContacts200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Contact>? get data;

  ListContacts200Response._();

  factory ListContacts200Response([void updates(ListContacts200ResponseBuilder b)]) = _$ListContacts200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListContacts200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListContacts200Response> get serializer => _$ListContacts200ResponseSerializer();
}

class _$ListContacts200ResponseSerializer implements PrimitiveSerializer<ListContacts200Response> {
  @override
  final Iterable<Type> types = const [ListContacts200Response, _$ListContacts200Response];

  @override
  final String wireName = r'ListContacts200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListContacts200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Contact)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListContacts200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListContacts200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Contact)]),
          ) as BuiltList<Contact>;
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
  ListContacts200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListContacts200ResponseBuilder();
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


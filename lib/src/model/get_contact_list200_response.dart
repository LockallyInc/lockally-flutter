//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/get_contact_list200_response_members_inner.dart';
import 'package:lockally/src/model/contact_list.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_contact_list200_response.g.dart';

/// GetContactList200Response
///
/// Properties:
/// * [list] 
/// * [members] 
@BuiltValue()
abstract class GetContactList200Response implements Built<GetContactList200Response, GetContactList200ResponseBuilder> {
  @BuiltValueField(wireName: r'list')
  ContactList? get list;

  @BuiltValueField(wireName: r'members')
  BuiltList<GetContactList200ResponseMembersInner>? get members;

  GetContactList200Response._();

  factory GetContactList200Response([void updates(GetContactList200ResponseBuilder b)]) = _$GetContactList200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetContactList200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetContactList200Response> get serializer => _$GetContactList200ResponseSerializer();
}

class _$GetContactList200ResponseSerializer implements PrimitiveSerializer<GetContactList200Response> {
  @override
  final Iterable<Type> types = const [GetContactList200Response, _$GetContactList200Response];

  @override
  final String wireName = r'GetContactList200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetContactList200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.list != null) {
      yield r'list';
      yield serializers.serialize(
        object.list,
        specifiedType: const FullType(ContactList),
      );
    }
    if (object.members != null) {
      yield r'members';
      yield serializers.serialize(
        object.members,
        specifiedType: const FullType(BuiltList, [FullType(GetContactList200ResponseMembersInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetContactList200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetContactList200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContactList),
          ) as ContactList;
          result.list.replace(valueDes);
          break;
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetContactList200ResponseMembersInner)]),
          ) as BuiltList<GetContactList200ResponseMembersInner>;
          result.members.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetContactList200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetContactList200ResponseBuilder();
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


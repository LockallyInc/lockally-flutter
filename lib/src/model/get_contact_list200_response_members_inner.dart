//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_contact_list200_response_members_inner.g.dart';

/// GetContactList200ResponseMembersInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [email] 
@BuiltValue()
abstract class GetContactList200ResponseMembersInner implements Built<GetContactList200ResponseMembersInner, GetContactList200ResponseMembersInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'email')
  String? get email;

  GetContactList200ResponseMembersInner._();

  factory GetContactList200ResponseMembersInner([void updates(GetContactList200ResponseMembersInnerBuilder b)]) = _$GetContactList200ResponseMembersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetContactList200ResponseMembersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetContactList200ResponseMembersInner> get serializer => _$GetContactList200ResponseMembersInnerSerializer();
}

class _$GetContactList200ResponseMembersInnerSerializer implements PrimitiveSerializer<GetContactList200ResponseMembersInner> {
  @override
  final Iterable<Type> types = const [GetContactList200ResponseMembersInner, _$GetContactList200ResponseMembersInner];

  @override
  final String wireName = r'GetContactList200ResponseMembersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetContactList200ResponseMembersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetContactList200ResponseMembersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetContactList200ResponseMembersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetContactList200ResponseMembersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetContactList200ResponseMembersInnerBuilder();
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


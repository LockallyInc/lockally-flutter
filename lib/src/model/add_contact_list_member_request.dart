//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_contact_list_member_request.g.dart';

/// AddContactListMemberRequest
///
/// Properties:
/// * [contactId] 
@BuiltValue()
abstract class AddContactListMemberRequest implements Built<AddContactListMemberRequest, AddContactListMemberRequestBuilder> {
  @BuiltValueField(wireName: r'contact_id')
  String get contactId;

  AddContactListMemberRequest._();

  factory AddContactListMemberRequest([void updates(AddContactListMemberRequestBuilder b)]) = _$AddContactListMemberRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddContactListMemberRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddContactListMemberRequest> get serializer => _$AddContactListMemberRequestSerializer();
}

class _$AddContactListMemberRequestSerializer implements PrimitiveSerializer<AddContactListMemberRequest> {
  @override
  final Iterable<Type> types = const [AddContactListMemberRequest, _$AddContactListMemberRequest];

  @override
  final String wireName = r'AddContactListMemberRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddContactListMemberRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contact_id';
    yield serializers.serialize(
      object.contactId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddContactListMemberRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddContactListMemberRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contact_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddContactListMemberRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddContactListMemberRequestBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/mailbox_grant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mailbox_grant_list.g.dart';

/// MailboxGrantList
///
/// Properties:
/// * [grants] 
@BuiltValue()
abstract class MailboxGrantList implements Built<MailboxGrantList, MailboxGrantListBuilder> {
  @BuiltValueField(wireName: r'grants')
  BuiltList<MailboxGrant> get grants;

  MailboxGrantList._();

  factory MailboxGrantList([void updates(MailboxGrantListBuilder b)]) = _$MailboxGrantList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MailboxGrantListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MailboxGrantList> get serializer => _$MailboxGrantListSerializer();
}

class _$MailboxGrantListSerializer implements PrimitiveSerializer<MailboxGrantList> {
  @override
  final Iterable<Type> types = const [MailboxGrantList, _$MailboxGrantList];

  @override
  final String wireName = r'MailboxGrantList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MailboxGrantList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'grants';
    yield serializers.serialize(
      object.grants,
      specifiedType: const FullType(BuiltList, [FullType(MailboxGrant)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MailboxGrantList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MailboxGrantListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'grants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MailboxGrant)]),
          ) as BuiltList<MailboxGrant>;
          result.grants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MailboxGrantList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MailboxGrantListBuilder();
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


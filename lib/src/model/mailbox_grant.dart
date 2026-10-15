//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mailbox_grant.g.dart';

/// MailboxGrant
///
/// Properties:
/// * [id] 
/// * [mailbox] 
@BuiltValue()
abstract class MailboxGrant implements Built<MailboxGrant, MailboxGrantBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'mailbox')
  String? get mailbox;

  MailboxGrant._();

  factory MailboxGrant([void updates(MailboxGrantBuilder b)]) = _$MailboxGrant;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MailboxGrantBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MailboxGrant> get serializer => _$MailboxGrantSerializer();
}

class _$MailboxGrantSerializer implements PrimitiveSerializer<MailboxGrant> {
  @override
  final Iterable<Type> types = const [MailboxGrant, _$MailboxGrant];

  @override
  final String wireName = r'MailboxGrant';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MailboxGrant object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.mailbox != null) {
      yield r'mailbox';
      yield serializers.serialize(
        object.mailbox,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MailboxGrant object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MailboxGrantBuilder result,
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
        case r'mailbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailbox = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MailboxGrant deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MailboxGrantBuilder();
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


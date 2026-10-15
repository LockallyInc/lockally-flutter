//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/contact_lookup_history.dart';
import 'package:lockally/src/model/contact_lookup_contact.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contact_lookup.g.dart';

/// ContactLookup
///
/// Properties:
/// * [email] 
/// * [known] 
/// * [internal] - True when the address is one of the tenant's own mailboxes.
/// * [contact] 
/// * [history] 
@BuiltValue()
abstract class ContactLookup implements Built<ContactLookup, ContactLookupBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'known')
  bool get known;

  /// True when the address is one of the tenant's own mailboxes.
  @BuiltValueField(wireName: r'internal')
  bool get internal;

  @BuiltValueField(wireName: r'contact')
  ContactLookupContact? get contact;

  @BuiltValueField(wireName: r'history')
  ContactLookupHistory? get history;

  ContactLookup._();

  factory ContactLookup([void updates(ContactLookupBuilder b)]) = _$ContactLookup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContactLookupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContactLookup> get serializer => _$ContactLookupSerializer();
}

class _$ContactLookupSerializer implements PrimitiveSerializer<ContactLookup> {
  @override
  final Iterable<Type> types = const [ContactLookup, _$ContactLookup];

  @override
  final String wireName = r'ContactLookup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContactLookup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'known';
    yield serializers.serialize(
      object.known,
      specifiedType: const FullType(bool),
    );
    yield r'internal';
    yield serializers.serialize(
      object.internal,
      specifiedType: const FullType(bool),
    );
    if (object.contact != null) {
      yield r'contact';
      yield serializers.serialize(
        object.contact,
        specifiedType: const FullType(ContactLookupContact),
      );
    }
    if (object.history != null) {
      yield r'history';
      yield serializers.serialize(
        object.history,
        specifiedType: const FullType(ContactLookupHistory),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContactLookup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContactLookupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'known':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.known = valueDes;
          break;
        case r'internal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.internal = valueDes;
          break;
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContactLookupContact),
          ) as ContactLookupContact;
          result.contact.replace(valueDes);
          break;
        case r'history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContactLookupHistory),
          ) as ContactLookupHistory;
          result.history.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContactLookup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContactLookupBuilder();
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


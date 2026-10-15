//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contact_lookup_history.g.dart';

/// Correspondence history, limited to the mailboxes this key is granted.
///
/// Properties:
/// * [threadCount] 
/// * [firstSeen] 
/// * [lastSeen] 
@BuiltValue()
abstract class ContactLookupHistory implements Built<ContactLookupHistory, ContactLookupHistoryBuilder> {
  @BuiltValueField(wireName: r'thread_count')
  int? get threadCount;

  @BuiltValueField(wireName: r'first_seen')
  DateTime? get firstSeen;

  @BuiltValueField(wireName: r'last_seen')
  DateTime? get lastSeen;

  ContactLookupHistory._();

  factory ContactLookupHistory([void updates(ContactLookupHistoryBuilder b)]) = _$ContactLookupHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContactLookupHistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContactLookupHistory> get serializer => _$ContactLookupHistorySerializer();
}

class _$ContactLookupHistorySerializer implements PrimitiveSerializer<ContactLookupHistory> {
  @override
  final Iterable<Type> types = const [ContactLookupHistory, _$ContactLookupHistory];

  @override
  final String wireName = r'ContactLookupHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContactLookupHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.threadCount != null) {
      yield r'thread_count';
      yield serializers.serialize(
        object.threadCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.firstSeen != null) {
      yield r'first_seen';
      yield serializers.serialize(
        object.firstSeen,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastSeen != null) {
      yield r'last_seen';
      yield serializers.serialize(
        object.lastSeen,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContactLookupHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContactLookupHistoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'thread_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.threadCount = valueDes;
          break;
        case r'first_seen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.firstSeen = valueDes;
          break;
        case r'last_seen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastSeen = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContactLookupHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContactLookupHistoryBuilder();
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


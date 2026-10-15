//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/inbox.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inbox_list.g.dart';

/// InboxList
///
/// Properties:
/// * [inboxes] 
@BuiltValue()
abstract class InboxList implements Built<InboxList, InboxListBuilder> {
  @BuiltValueField(wireName: r'inboxes')
  BuiltList<Inbox> get inboxes;

  InboxList._();

  factory InboxList([void updates(InboxListBuilder b)]) = _$InboxList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InboxListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InboxList> get serializer => _$InboxListSerializer();
}

class _$InboxListSerializer implements PrimitiveSerializer<InboxList> {
  @override
  final Iterable<Type> types = const [InboxList, _$InboxList];

  @override
  final String wireName = r'InboxList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InboxList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'inboxes';
    yield serializers.serialize(
      object.inboxes,
      specifiedType: const FullType(BuiltList, [FullType(Inbox)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InboxList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InboxListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inboxes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Inbox)]),
          ) as BuiltList<Inbox>;
          result.inboxes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InboxList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InboxListBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/migration_mailbox.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_migration_mailboxes200_response.g.dart';

/// ListMigrationMailboxes200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListMigrationMailboxes200Response implements Built<ListMigrationMailboxes200Response, ListMigrationMailboxes200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<MigrationMailbox> get data;

  ListMigrationMailboxes200Response._();

  factory ListMigrationMailboxes200Response([void updates(ListMigrationMailboxes200ResponseBuilder b)]) = _$ListMigrationMailboxes200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListMigrationMailboxes200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListMigrationMailboxes200Response> get serializer => _$ListMigrationMailboxes200ResponseSerializer();
}

class _$ListMigrationMailboxes200ResponseSerializer implements PrimitiveSerializer<ListMigrationMailboxes200Response> {
  @override
  final Iterable<Type> types = const [ListMigrationMailboxes200Response, _$ListMigrationMailboxes200Response];

  @override
  final String wireName = r'ListMigrationMailboxes200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListMigrationMailboxes200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(MigrationMailbox)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListMigrationMailboxes200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListMigrationMailboxes200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MigrationMailbox)]),
          ) as BuiltList<MigrationMailbox>;
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
  ListMigrationMailboxes200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMigrationMailboxes200ResponseBuilder();
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


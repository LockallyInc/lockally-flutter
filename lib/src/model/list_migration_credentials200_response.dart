//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/migration_credential.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_migration_credentials200_response.g.dart';

/// ListMigrationCredentials200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListMigrationCredentials200Response implements Built<ListMigrationCredentials200Response, ListMigrationCredentials200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<MigrationCredential> get data;

  ListMigrationCredentials200Response._();

  factory ListMigrationCredentials200Response([void updates(ListMigrationCredentials200ResponseBuilder b)]) = _$ListMigrationCredentials200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListMigrationCredentials200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListMigrationCredentials200Response> get serializer => _$ListMigrationCredentials200ResponseSerializer();
}

class _$ListMigrationCredentials200ResponseSerializer implements PrimitiveSerializer<ListMigrationCredentials200Response> {
  @override
  final Iterable<Type> types = const [ListMigrationCredentials200Response, _$ListMigrationCredentials200Response];

  @override
  final String wireName = r'ListMigrationCredentials200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListMigrationCredentials200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(MigrationCredential)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListMigrationCredentials200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListMigrationCredentials200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MigrationCredential)]),
          ) as BuiltList<MigrationCredential>;
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
  ListMigrationCredentials200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMigrationCredentials200ResponseBuilder();
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


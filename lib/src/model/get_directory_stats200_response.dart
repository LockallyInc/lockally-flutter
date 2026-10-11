//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_directory_stats200_response.g.dart';

/// GetDirectoryStats200Response
///
/// Properties:
/// * [totalContacts] 
/// * [internalUsers] 
/// * [externalContacts] 
/// * [syncedContacts] 
/// * [sharedLists] 
/// * [directoryGroups] 
@BuiltValue()
abstract class GetDirectoryStats200Response implements Built<GetDirectoryStats200Response, GetDirectoryStats200ResponseBuilder> {
  @BuiltValueField(wireName: r'total_contacts')
  int? get totalContacts;

  @BuiltValueField(wireName: r'internal_users')
  int? get internalUsers;

  @BuiltValueField(wireName: r'external_contacts')
  int? get externalContacts;

  @BuiltValueField(wireName: r'synced_contacts')
  int? get syncedContacts;

  @BuiltValueField(wireName: r'shared_lists')
  int? get sharedLists;

  @BuiltValueField(wireName: r'directory_groups')
  int? get directoryGroups;

  GetDirectoryStats200Response._();

  factory GetDirectoryStats200Response([void updates(GetDirectoryStats200ResponseBuilder b)]) = _$GetDirectoryStats200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDirectoryStats200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDirectoryStats200Response> get serializer => _$GetDirectoryStats200ResponseSerializer();
}

class _$GetDirectoryStats200ResponseSerializer implements PrimitiveSerializer<GetDirectoryStats200Response> {
  @override
  final Iterable<Type> types = const [GetDirectoryStats200Response, _$GetDirectoryStats200Response];

  @override
  final String wireName = r'GetDirectoryStats200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDirectoryStats200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalContacts != null) {
      yield r'total_contacts';
      yield serializers.serialize(
        object.totalContacts,
        specifiedType: const FullType(int),
      );
    }
    if (object.internalUsers != null) {
      yield r'internal_users';
      yield serializers.serialize(
        object.internalUsers,
        specifiedType: const FullType(int),
      );
    }
    if (object.externalContacts != null) {
      yield r'external_contacts';
      yield serializers.serialize(
        object.externalContacts,
        specifiedType: const FullType(int),
      );
    }
    if (object.syncedContacts != null) {
      yield r'synced_contacts';
      yield serializers.serialize(
        object.syncedContacts,
        specifiedType: const FullType(int),
      );
    }
    if (object.sharedLists != null) {
      yield r'shared_lists';
      yield serializers.serialize(
        object.sharedLists,
        specifiedType: const FullType(int),
      );
    }
    if (object.directoryGroups != null) {
      yield r'directory_groups';
      yield serializers.serialize(
        object.directoryGroups,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDirectoryStats200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetDirectoryStats200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_contacts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalContacts = valueDes;
          break;
        case r'internal_users':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.internalUsers = valueDes;
          break;
        case r'external_contacts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.externalContacts = valueDes;
          break;
        case r'synced_contacts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.syncedContacts = valueDes;
          break;
        case r'shared_lists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sharedLists = valueDes;
          break;
        case r'directory_groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.directoryGroups = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetDirectoryStats200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDirectoryStats200ResponseBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/shared_member.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_shared_members200_response.g.dart';

/// ListSharedMembers200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListSharedMembers200Response implements Built<ListSharedMembers200Response, ListSharedMembers200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<SharedMember> get data;

  ListSharedMembers200Response._();

  factory ListSharedMembers200Response([void updates(ListSharedMembers200ResponseBuilder b)]) = _$ListSharedMembers200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListSharedMembers200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListSharedMembers200Response> get serializer => _$ListSharedMembers200ResponseSerializer();
}

class _$ListSharedMembers200ResponseSerializer implements PrimitiveSerializer<ListSharedMembers200Response> {
  @override
  final Iterable<Type> types = const [ListSharedMembers200Response, _$ListSharedMembers200Response];

  @override
  final String wireName = r'ListSharedMembers200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListSharedMembers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(SharedMember)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListSharedMembers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListSharedMembers200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SharedMember)]),
          ) as BuiltList<SharedMember>;
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
  ListSharedMembers200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSharedMembers200ResponseBuilder();
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


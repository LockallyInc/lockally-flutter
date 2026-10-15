//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/admin_full.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_admins200_response.g.dart';

/// ListAdmins200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class ListAdmins200Response implements Built<ListAdmins200Response, ListAdmins200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<AdminFull> get data;

  ListAdmins200Response._();

  factory ListAdmins200Response([void updates(ListAdmins200ResponseBuilder b)]) = _$ListAdmins200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListAdmins200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListAdmins200Response> get serializer => _$ListAdmins200ResponseSerializer();
}

class _$ListAdmins200ResponseSerializer implements PrimitiveSerializer<ListAdmins200Response> {
  @override
  final Iterable<Type> types = const [ListAdmins200Response, _$ListAdmins200Response];

  @override
  final String wireName = r'ListAdmins200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListAdmins200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(AdminFull)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListAdmins200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListAdmins200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdminFull)]),
          ) as BuiltList<AdminFull>;
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
  ListAdmins200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListAdmins200ResponseBuilder();
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


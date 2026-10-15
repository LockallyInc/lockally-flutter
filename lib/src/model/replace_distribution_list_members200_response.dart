//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'replace_distribution_list_members200_response.g.dart';

/// ReplaceDistributionListMembers200Response
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [listAddress] 
/// * [members] 
/// * [memberCount] 
@BuiltValue()
abstract class ReplaceDistributionListMembers200Response implements Built<ReplaceDistributionListMembers200Response, ReplaceDistributionListMembers200ResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'list_address')
  String get listAddress;

  @BuiltValueField(wireName: r'members')
  BuiltList<String> get members;

  @BuiltValueField(wireName: r'member_count')
  int get memberCount;

  ReplaceDistributionListMembers200Response._();

  factory ReplaceDistributionListMembers200Response([void updates(ReplaceDistributionListMembers200ResponseBuilder b)]) = _$ReplaceDistributionListMembers200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReplaceDistributionListMembers200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReplaceDistributionListMembers200Response> get serializer => _$ReplaceDistributionListMembers200ResponseSerializer();
}

class _$ReplaceDistributionListMembers200ResponseSerializer implements PrimitiveSerializer<ReplaceDistributionListMembers200Response> {
  @override
  final Iterable<Type> types = const [ReplaceDistributionListMembers200Response, _$ReplaceDistributionListMembers200Response];

  @override
  final String wireName = r'ReplaceDistributionListMembers200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReplaceDistributionListMembers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'list_address';
    yield serializers.serialize(
      object.listAddress,
      specifiedType: const FullType(String),
    );
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'member_count';
    yield serializers.serialize(
      object.memberCount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReplaceDistributionListMembers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReplaceDistributionListMembers200ResponseBuilder result,
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
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'list_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.listAddress = valueDes;
          break;
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.members.replace(valueDes);
          break;
        case r'member_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.memberCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReplaceDistributionListMembers200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceDistributionListMembers200ResponseBuilder();
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


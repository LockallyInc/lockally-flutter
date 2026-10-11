//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'replace_distribution_list_members_request.g.dart';

/// ReplaceDistributionListMembersRequest
///
/// Properties:
/// * [members] 
@BuiltValue()
abstract class ReplaceDistributionListMembersRequest implements Built<ReplaceDistributionListMembersRequest, ReplaceDistributionListMembersRequestBuilder> {
  @BuiltValueField(wireName: r'members')
  BuiltList<String> get members;

  ReplaceDistributionListMembersRequest._();

  factory ReplaceDistributionListMembersRequest([void updates(ReplaceDistributionListMembersRequestBuilder b)]) = _$ReplaceDistributionListMembersRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReplaceDistributionListMembersRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReplaceDistributionListMembersRequest> get serializer => _$ReplaceDistributionListMembersRequestSerializer();
}

class _$ReplaceDistributionListMembersRequestSerializer implements PrimitiveSerializer<ReplaceDistributionListMembersRequest> {
  @override
  final Iterable<Type> types = const [ReplaceDistributionListMembersRequest, _$ReplaceDistributionListMembersRequest];

  @override
  final String wireName = r'ReplaceDistributionListMembersRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReplaceDistributionListMembersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReplaceDistributionListMembersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReplaceDistributionListMembersRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.members.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReplaceDistributionListMembersRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceDistributionListMembersRequestBuilder();
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


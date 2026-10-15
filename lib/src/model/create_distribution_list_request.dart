//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_distribution_list_request.g.dart';

/// CreateDistributionListRequest
///
/// Properties:
/// * [listAddress] 
/// * [name] 
/// * [members] 
@BuiltValue()
abstract class CreateDistributionListRequest implements Built<CreateDistributionListRequest, CreateDistributionListRequestBuilder> {
  @BuiltValueField(wireName: r'list_address')
  String get listAddress;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'members')
  BuiltList<String>? get members;

  CreateDistributionListRequest._();

  factory CreateDistributionListRequest([void updates(CreateDistributionListRequestBuilder b)]) = _$CreateDistributionListRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateDistributionListRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateDistributionListRequest> get serializer => _$CreateDistributionListRequestSerializer();
}

class _$CreateDistributionListRequestSerializer implements PrimitiveSerializer<CreateDistributionListRequest> {
  @override
  final Iterable<Type> types = const [CreateDistributionListRequest, _$CreateDistributionListRequest];

  @override
  final String wireName = r'CreateDistributionListRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateDistributionListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'list_address';
    yield serializers.serialize(
      object.listAddress,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.members != null) {
      yield r'members';
      yield serializers.serialize(
        object.members,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateDistributionListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateDistributionListRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'list_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.listAddress = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
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
  CreateDistributionListRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDistributionListRequestBuilder();
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


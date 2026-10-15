//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_resource_request.g.dart';

/// CreateResourceRequest
///
/// Properties:
/// * [name] 
/// * [type] 
/// * [capacity] 
@BuiltValue()
abstract class CreateResourceRequest implements Built<CreateResourceRequest, CreateResourceRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  CreateResourceRequestTypeEnum? get type;
  // enum typeEnum {  meeting_room,  equipment,  };

  @BuiltValueField(wireName: r'capacity')
  int? get capacity;

  CreateResourceRequest._();

  factory CreateResourceRequest([void updates(CreateResourceRequestBuilder b)]) = _$CreateResourceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateResourceRequestBuilder b) => b
      ..type = CreateResourceRequestTypeEnum.valueOf('meeting_room');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateResourceRequest> get serializer => _$CreateResourceRequestSerializer();
}

class _$CreateResourceRequestSerializer implements PrimitiveSerializer<CreateResourceRequest> {
  @override
  final Iterable<Type> types = const [CreateResourceRequest, _$CreateResourceRequest];

  @override
  final String wireName = r'CreateResourceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateResourceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(CreateResourceRequestTypeEnum),
      );
    }
    if (object.capacity != null) {
      yield r'capacity';
      yield serializers.serialize(
        object.capacity,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateResourceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateResourceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateResourceRequestTypeEnum),
          ) as CreateResourceRequestTypeEnum;
          result.type = valueDes;
          break;
        case r'capacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.capacity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateResourceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateResourceRequestBuilder();
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

class CreateResourceRequestTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'meeting_room')
  static const CreateResourceRequestTypeEnum meetingRoom = _$createResourceRequestTypeEnum_meetingRoom;
  @BuiltValueEnumConst(wireName: r'equipment')
  static const CreateResourceRequestTypeEnum equipment = _$createResourceRequestTypeEnum_equipment;

  static Serializer<CreateResourceRequestTypeEnum> get serializer => _$createResourceRequestTypeEnumSerializer;

  const CreateResourceRequestTypeEnum._(String name): super(name);

  static BuiltSet<CreateResourceRequestTypeEnum> get values => _$createResourceRequestTypeEnumValues;
  static CreateResourceRequestTypeEnum valueOf(String name) => _$createResourceRequestTypeEnumValueOf(name);
}


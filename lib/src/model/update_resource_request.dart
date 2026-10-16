//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_resource_request.g.dart';

/// UpdateResourceRequest
///
/// Properties:
/// * [name] 
/// * [type] 
/// * [capacity] 
/// * [status] 
@BuiltValue()
abstract class UpdateResourceRequest implements Built<UpdateResourceRequest, UpdateResourceRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  UpdateResourceRequestTypeEnum? get type;
  // enum typeEnum {  meeting_room,  equipment,  };

  @BuiltValueField(wireName: r'capacity')
  int? get capacity;

  @BuiltValueField(wireName: r'status')
  UpdateResourceRequestStatusEnum? get status;
  // enum statusEnum {  available,  active,  disabled,  };

  UpdateResourceRequest._();

  factory UpdateResourceRequest([void updates(UpdateResourceRequestBuilder b)]) = _$UpdateResourceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateResourceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateResourceRequest> get serializer => _$UpdateResourceRequestSerializer();
}

class _$UpdateResourceRequestSerializer implements PrimitiveSerializer<UpdateResourceRequest> {
  @override
  final Iterable<Type> types = const [UpdateResourceRequest, _$UpdateResourceRequest];

  @override
  final String wireName = r'UpdateResourceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateResourceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(UpdateResourceRequestTypeEnum),
      );
    }
    if (object.capacity != null) {
      yield r'capacity';
      yield serializers.serialize(
        object.capacity,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(UpdateResourceRequestStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateResourceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateResourceRequestBuilder result,
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
            specifiedType: const FullType(UpdateResourceRequestTypeEnum),
          ) as UpdateResourceRequestTypeEnum;
          result.type = valueDes;
          break;
        case r'capacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.capacity = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateResourceRequestStatusEnum),
          ) as UpdateResourceRequestStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateResourceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateResourceRequestBuilder();
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

class UpdateResourceRequestTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'meeting_room')
  static const UpdateResourceRequestTypeEnum meetingRoom = _$updateResourceRequestTypeEnum_meetingRoom;
  @BuiltValueEnumConst(wireName: r'equipment')
  static const UpdateResourceRequestTypeEnum equipment = _$updateResourceRequestTypeEnum_equipment;

  static Serializer<UpdateResourceRequestTypeEnum> get serializer => _$updateResourceRequestTypeEnumSerializer;

  const UpdateResourceRequestTypeEnum._(String name): super(name);

  static BuiltSet<UpdateResourceRequestTypeEnum> get values => _$updateResourceRequestTypeEnumValues;
  static UpdateResourceRequestTypeEnum valueOf(String name) => _$updateResourceRequestTypeEnumValueOf(name);
}

class UpdateResourceRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'available')
  static const UpdateResourceRequestStatusEnum available = _$updateResourceRequestStatusEnum_available;
  @BuiltValueEnumConst(wireName: r'active')
  static const UpdateResourceRequestStatusEnum active = _$updateResourceRequestStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const UpdateResourceRequestStatusEnum disabled = _$updateResourceRequestStatusEnum_disabled;

  static Serializer<UpdateResourceRequestStatusEnum> get serializer => _$updateResourceRequestStatusEnumSerializer;

  const UpdateResourceRequestStatusEnum._(String name): super(name);

  static BuiltSet<UpdateResourceRequestStatusEnum> get values => _$updateResourceRequestStatusEnumValues;
  static UpdateResourceRequestStatusEnum valueOf(String name) => _$updateResourceRequestStatusEnumValueOf(name);
}


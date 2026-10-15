//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_calendar_request.g.dart';

/// UpdateCalendarRequest
///
/// Properties:
/// * [name] 
/// * [color] 
/// * [ownerEmail] 
/// * [description] 
/// * [visibility] 
@BuiltValue()
abstract class UpdateCalendarRequest implements Built<UpdateCalendarRequest, UpdateCalendarRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'owner_email')
  String? get ownerEmail;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'visibility')
  UpdateCalendarRequestVisibilityEnum? get visibility;
  // enum visibilityEnum {  private,  tenant,  };

  UpdateCalendarRequest._();

  factory UpdateCalendarRequest([void updates(UpdateCalendarRequestBuilder b)]) = _$UpdateCalendarRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateCalendarRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateCalendarRequest> get serializer => _$UpdateCalendarRequestSerializer();
}

class _$UpdateCalendarRequestSerializer implements PrimitiveSerializer<UpdateCalendarRequest> {
  @override
  final Iterable<Type> types = const [UpdateCalendarRequest, _$UpdateCalendarRequest];

  @override
  final String wireName = r'UpdateCalendarRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateCalendarRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerEmail != null) {
      yield r'owner_email';
      yield serializers.serialize(
        object.ownerEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(UpdateCalendarRequestVisibilityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateCalendarRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateCalendarRequestBuilder result,
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
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        case r'owner_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerEmail = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateCalendarRequestVisibilityEnum),
          ) as UpdateCalendarRequestVisibilityEnum;
          result.visibility = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateCalendarRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateCalendarRequestBuilder();
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

class UpdateCalendarRequestVisibilityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'private')
  static const UpdateCalendarRequestVisibilityEnum private = _$updateCalendarRequestVisibilityEnum_private;
  @BuiltValueEnumConst(wireName: r'tenant')
  static const UpdateCalendarRequestVisibilityEnum tenant = _$updateCalendarRequestVisibilityEnum_tenant;

  static Serializer<UpdateCalendarRequestVisibilityEnum> get serializer => _$updateCalendarRequestVisibilityEnumSerializer;

  const UpdateCalendarRequestVisibilityEnum._(String name): super(name);

  static BuiltSet<UpdateCalendarRequestVisibilityEnum> get values => _$updateCalendarRequestVisibilityEnumValues;
  static UpdateCalendarRequestVisibilityEnum valueOf(String name) => _$updateCalendarRequestVisibilityEnumValueOf(name);
}


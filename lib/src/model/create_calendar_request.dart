//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_calendar_request.g.dart';

/// CreateCalendarRequest
///
/// Properties:
/// * [name] 
/// * [color] 
/// * [ownerEmail] 
/// * [description] 
/// * [visibility] 
@BuiltValue()
abstract class CreateCalendarRequest implements Built<CreateCalendarRequest, CreateCalendarRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'owner_email')
  String? get ownerEmail;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'visibility')
  CreateCalendarRequestVisibilityEnum? get visibility;
  // enum visibilityEnum {  private,  tenant,  };

  CreateCalendarRequest._();

  factory CreateCalendarRequest([void updates(CreateCalendarRequestBuilder b)]) = _$CreateCalendarRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCalendarRequestBuilder b) => b
      ..visibility = CreateCalendarRequestVisibilityEnum.valueOf('tenant');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCalendarRequest> get serializer => _$CreateCalendarRequestSerializer();
}

class _$CreateCalendarRequestSerializer implements PrimitiveSerializer<CreateCalendarRequest> {
  @override
  final Iterable<Type> types = const [CreateCalendarRequest, _$CreateCalendarRequest];

  @override
  final String wireName = r'CreateCalendarRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCalendarRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
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
        specifiedType: const FullType(CreateCalendarRequestVisibilityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateCalendarRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateCalendarRequestBuilder result,
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
            specifiedType: const FullType(CreateCalendarRequestVisibilityEnum),
          ) as CreateCalendarRequestVisibilityEnum;
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
  CreateCalendarRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCalendarRequestBuilder();
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

class CreateCalendarRequestVisibilityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'private')
  static const CreateCalendarRequestVisibilityEnum private = _$createCalendarRequestVisibilityEnum_private;
  @BuiltValueEnumConst(wireName: r'tenant')
  static const CreateCalendarRequestVisibilityEnum tenant = _$createCalendarRequestVisibilityEnum_tenant;

  static Serializer<CreateCalendarRequestVisibilityEnum> get serializer => _$createCalendarRequestVisibilityEnumSerializer;

  const CreateCalendarRequestVisibilityEnum._(String name): super(name);

  static BuiltSet<CreateCalendarRequestVisibilityEnum> get values => _$createCalendarRequestVisibilityEnumValues;
  static CreateCalendarRequestVisibilityEnum valueOf(String name) => _$createCalendarRequestVisibilityEnumValueOf(name);
}


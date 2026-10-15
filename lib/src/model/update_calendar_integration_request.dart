//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_calendar_integration_request.g.dart';

/// UpdateCalendarIntegrationRequest
///
/// Properties:
/// * [label] 
/// * [status] 
/// * [errorMessage] 
@BuiltValue()
abstract class UpdateCalendarIntegrationRequest implements Built<UpdateCalendarIntegrationRequest, UpdateCalendarIntegrationRequestBuilder> {
  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'status')
  UpdateCalendarIntegrationRequestStatusEnum? get status;
  // enum statusEnum {  connected,  disconnected,  error,  syncing,  };

  @BuiltValueField(wireName: r'error_message')
  String? get errorMessage;

  UpdateCalendarIntegrationRequest._();

  factory UpdateCalendarIntegrationRequest([void updates(UpdateCalendarIntegrationRequestBuilder b)]) = _$UpdateCalendarIntegrationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateCalendarIntegrationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateCalendarIntegrationRequest> get serializer => _$UpdateCalendarIntegrationRequestSerializer();
}

class _$UpdateCalendarIntegrationRequestSerializer implements PrimitiveSerializer<UpdateCalendarIntegrationRequest> {
  @override
  final Iterable<Type> types = const [UpdateCalendarIntegrationRequest, _$UpdateCalendarIntegrationRequest];

  @override
  final String wireName = r'UpdateCalendarIntegrationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateCalendarIntegrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(UpdateCalendarIntegrationRequestStatusEnum),
      );
    }
    if (object.errorMessage != null) {
      yield r'error_message';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateCalendarIntegrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateCalendarIntegrationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateCalendarIntegrationRequestStatusEnum),
          ) as UpdateCalendarIntegrationRequestStatusEnum;
          result.status = valueDes;
          break;
        case r'error_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateCalendarIntegrationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateCalendarIntegrationRequestBuilder();
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

class UpdateCalendarIntegrationRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'connected')
  static const UpdateCalendarIntegrationRequestStatusEnum connected = _$updateCalendarIntegrationRequestStatusEnum_connected;
  @BuiltValueEnumConst(wireName: r'disconnected')
  static const UpdateCalendarIntegrationRequestStatusEnum disconnected = _$updateCalendarIntegrationRequestStatusEnum_disconnected;
  @BuiltValueEnumConst(wireName: r'error')
  static const UpdateCalendarIntegrationRequestStatusEnum error = _$updateCalendarIntegrationRequestStatusEnum_error;
  @BuiltValueEnumConst(wireName: r'syncing')
  static const UpdateCalendarIntegrationRequestStatusEnum syncing = _$updateCalendarIntegrationRequestStatusEnum_syncing;

  static Serializer<UpdateCalendarIntegrationRequestStatusEnum> get serializer => _$updateCalendarIntegrationRequestStatusEnumSerializer;

  const UpdateCalendarIntegrationRequestStatusEnum._(String name): super(name);

  static BuiltSet<UpdateCalendarIntegrationRequestStatusEnum> get values => _$updateCalendarIntegrationRequestStatusEnumValues;
  static UpdateCalendarIntegrationRequestStatusEnum valueOf(String name) => _$updateCalendarIntegrationRequestStatusEnumValueOf(name);
}


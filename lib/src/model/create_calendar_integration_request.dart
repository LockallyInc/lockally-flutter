//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_calendar_integration_request.g.dart';

/// CreateCalendarIntegrationRequest
///
/// Properties:
/// * [provider] 
/// * [label] 
@BuiltValue()
abstract class CreateCalendarIntegrationRequest implements Built<CreateCalendarIntegrationRequest, CreateCalendarIntegrationRequestBuilder> {
  @BuiltValueField(wireName: r'provider')
  CreateCalendarIntegrationRequestProviderEnum get provider;
  // enum providerEnum {  exchange,  google_calendar,  teams,  zoom,  erp,  };

  @BuiltValueField(wireName: r'label')
  String? get label;

  CreateCalendarIntegrationRequest._();

  factory CreateCalendarIntegrationRequest([void updates(CreateCalendarIntegrationRequestBuilder b)]) = _$CreateCalendarIntegrationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCalendarIntegrationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCalendarIntegrationRequest> get serializer => _$CreateCalendarIntegrationRequestSerializer();
}

class _$CreateCalendarIntegrationRequestSerializer implements PrimitiveSerializer<CreateCalendarIntegrationRequest> {
  @override
  final Iterable<Type> types = const [CreateCalendarIntegrationRequest, _$CreateCalendarIntegrationRequest];

  @override
  final String wireName = r'CreateCalendarIntegrationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCalendarIntegrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(CreateCalendarIntegrationRequestProviderEnum),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateCalendarIntegrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateCalendarIntegrationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateCalendarIntegrationRequestProviderEnum),
          ) as CreateCalendarIntegrationRequestProviderEnum;
          result.provider = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateCalendarIntegrationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCalendarIntegrationRequestBuilder();
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

class CreateCalendarIntegrationRequestProviderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'exchange')
  static const CreateCalendarIntegrationRequestProviderEnum exchange = _$createCalendarIntegrationRequestProviderEnum_exchange;
  @BuiltValueEnumConst(wireName: r'google_calendar')
  static const CreateCalendarIntegrationRequestProviderEnum googleCalendar = _$createCalendarIntegrationRequestProviderEnum_googleCalendar;
  @BuiltValueEnumConst(wireName: r'teams')
  static const CreateCalendarIntegrationRequestProviderEnum teams = _$createCalendarIntegrationRequestProviderEnum_teams;
  @BuiltValueEnumConst(wireName: r'zoom')
  static const CreateCalendarIntegrationRequestProviderEnum zoom = _$createCalendarIntegrationRequestProviderEnum_zoom;
  @BuiltValueEnumConst(wireName: r'erp')
  static const CreateCalendarIntegrationRequestProviderEnum erp = _$createCalendarIntegrationRequestProviderEnum_erp;

  static Serializer<CreateCalendarIntegrationRequestProviderEnum> get serializer => _$createCalendarIntegrationRequestProviderEnumSerializer;

  const CreateCalendarIntegrationRequestProviderEnum._(String name): super(name);

  static BuiltSet<CreateCalendarIntegrationRequestProviderEnum> get values => _$createCalendarIntegrationRequestProviderEnumValues;
  static CreateCalendarIntegrationRequestProviderEnum valueOf(String name) => _$createCalendarIntegrationRequestProviderEnumValueOf(name);
}


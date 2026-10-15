//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calendar_integration.g.dart';

/// CalendarIntegration
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [provider] 
/// * [label] 
/// * [status] 
/// * [lastSyncAt] 
/// * [errorMessage] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class CalendarIntegration implements Built<CalendarIntegration, CalendarIntegrationBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'provider')
  CalendarIntegrationProviderEnum get provider;
  // enum providerEnum {  exchange,  google_calendar,  teams,  zoom,  erp,  };

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'status')
  CalendarIntegrationStatusEnum get status;
  // enum statusEnum {  connected,  disconnected,  error,  syncing,  };

  @BuiltValueField(wireName: r'last_sync_at')
  DateTime? get lastSyncAt;

  @BuiltValueField(wireName: r'error_message')
  String? get errorMessage;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  CalendarIntegration._();

  factory CalendarIntegration([void updates(CalendarIntegrationBuilder b)]) = _$CalendarIntegration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CalendarIntegrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CalendarIntegration> get serializer => _$CalendarIntegrationSerializer();
}

class _$CalendarIntegrationSerializer implements PrimitiveSerializer<CalendarIntegration> {
  @override
  final Iterable<Type> types = const [CalendarIntegration, _$CalendarIntegration];

  @override
  final String wireName = r'CalendarIntegration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CalendarIntegration object, {
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
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(CalendarIntegrationProviderEnum),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(CalendarIntegrationStatusEnum),
    );
    if (object.lastSyncAt != null) {
      yield r'last_sync_at';
      yield serializers.serialize(
        object.lastSyncAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.errorMessage != null) {
      yield r'error_message';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType(String),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CalendarIntegration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CalendarIntegrationBuilder result,
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
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CalendarIntegrationProviderEnum),
          ) as CalendarIntegrationProviderEnum;
          result.provider = valueDes;
          break;
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
            specifiedType: const FullType(CalendarIntegrationStatusEnum),
          ) as CalendarIntegrationStatusEnum;
          result.status = valueDes;
          break;
        case r'last_sync_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastSyncAt = valueDes;
          break;
        case r'error_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CalendarIntegration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CalendarIntegrationBuilder();
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

class CalendarIntegrationProviderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'exchange')
  static const CalendarIntegrationProviderEnum exchange = _$calendarIntegrationProviderEnum_exchange;
  @BuiltValueEnumConst(wireName: r'google_calendar')
  static const CalendarIntegrationProviderEnum googleCalendar = _$calendarIntegrationProviderEnum_googleCalendar;
  @BuiltValueEnumConst(wireName: r'teams')
  static const CalendarIntegrationProviderEnum teams = _$calendarIntegrationProviderEnum_teams;
  @BuiltValueEnumConst(wireName: r'zoom')
  static const CalendarIntegrationProviderEnum zoom = _$calendarIntegrationProviderEnum_zoom;
  @BuiltValueEnumConst(wireName: r'erp')
  static const CalendarIntegrationProviderEnum erp = _$calendarIntegrationProviderEnum_erp;

  static Serializer<CalendarIntegrationProviderEnum> get serializer => _$calendarIntegrationProviderEnumSerializer;

  const CalendarIntegrationProviderEnum._(String name): super(name);

  static BuiltSet<CalendarIntegrationProviderEnum> get values => _$calendarIntegrationProviderEnumValues;
  static CalendarIntegrationProviderEnum valueOf(String name) => _$calendarIntegrationProviderEnumValueOf(name);
}

class CalendarIntegrationStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'connected')
  static const CalendarIntegrationStatusEnum connected = _$calendarIntegrationStatusEnum_connected;
  @BuiltValueEnumConst(wireName: r'disconnected')
  static const CalendarIntegrationStatusEnum disconnected = _$calendarIntegrationStatusEnum_disconnected;
  @BuiltValueEnumConst(wireName: r'error')
  static const CalendarIntegrationStatusEnum error = _$calendarIntegrationStatusEnum_error;
  @BuiltValueEnumConst(wireName: r'syncing')
  static const CalendarIntegrationStatusEnum syncing = _$calendarIntegrationStatusEnum_syncing;

  static Serializer<CalendarIntegrationStatusEnum> get serializer => _$calendarIntegrationStatusEnumSerializer;

  const CalendarIntegrationStatusEnum._(String name): super(name);

  static BuiltSet<CalendarIntegrationStatusEnum> get values => _$calendarIntegrationStatusEnumValues;
  static CalendarIntegrationStatusEnum valueOf(String name) => _$calendarIntegrationStatusEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant.g.dart';

/// Tenant
///
/// Properties:
/// * [id] 
/// * [slug] 
/// * [displayName] 
/// * [status] 
/// * [plan] 
/// * [rateCapPerMin] - Per-tenant share of the per-VPS 5/min outbound cap (L6).
/// * [dailyMsgQuota] 
/// * [adminEmail] 
/// * [createdAt] 
/// * [suspendedAt] 
/// * [closedAt] 
/// * [hardDeleteAfter] 
@BuiltValue()
abstract class Tenant implements Built<Tenant, TenantBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'display_name')
  String get displayName;

  @BuiltValueField(wireName: r'status')
  TenantStatusEnum get status;
  // enum statusEnum {  active,  suspended,  closing,  closed,  };

  @BuiltValueField(wireName: r'plan')
  String get plan;

  /// Per-tenant share of the per-VPS 5/min outbound cap (L6).
  @BuiltValueField(wireName: r'rate_cap_per_min')
  int get rateCapPerMin;

  @BuiltValueField(wireName: r'daily_msg_quota')
  int get dailyMsgQuota;

  @BuiltValueField(wireName: r'admin_email')
  String get adminEmail;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'suspended_at')
  DateTime? get suspendedAt;

  @BuiltValueField(wireName: r'closed_at')
  DateTime? get closedAt;

  @BuiltValueField(wireName: r'hard_delete_after')
  DateTime? get hardDeleteAfter;

  Tenant._();

  factory Tenant([void updates(TenantBuilder b)]) = _$Tenant;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Tenant> get serializer => _$TenantSerializer();
}

class _$TenantSerializer implements PrimitiveSerializer<Tenant> {
  @override
  final Iterable<Type> types = const [Tenant, _$Tenant];

  @override
  final String wireName = r'Tenant';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Tenant object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
    yield r'display_name';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(TenantStatusEnum),
    );
    yield r'plan';
    yield serializers.serialize(
      object.plan,
      specifiedType: const FullType(String),
    );
    yield r'rate_cap_per_min';
    yield serializers.serialize(
      object.rateCapPerMin,
      specifiedType: const FullType(int),
    );
    yield r'daily_msg_quota';
    yield serializers.serialize(
      object.dailyMsgQuota,
      specifiedType: const FullType(int),
    );
    yield r'admin_email';
    yield serializers.serialize(
      object.adminEmail,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.suspendedAt != null) {
      yield r'suspended_at';
      yield serializers.serialize(
        object.suspendedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.closedAt != null) {
      yield r'closed_at';
      yield serializers.serialize(
        object.closedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.hardDeleteAfter != null) {
      yield r'hard_delete_after';
      yield serializers.serialize(
        object.hardDeleteAfter,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Tenant object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantBuilder result,
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
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TenantStatusEnum),
          ) as TenantStatusEnum;
          result.status = valueDes;
          break;
        case r'plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.plan = valueDes;
          break;
        case r'rate_cap_per_min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rateCapPerMin = valueDes;
          break;
        case r'daily_msg_quota':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dailyMsgQuota = valueDes;
          break;
        case r'admin_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adminEmail = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'suspended_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.suspendedAt = valueDes;
          break;
        case r'closed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.closedAt = valueDes;
          break;
        case r'hard_delete_after':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.hardDeleteAfter = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Tenant deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantBuilder();
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

class TenantStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const TenantStatusEnum active = _$tenantStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'suspended')
  static const TenantStatusEnum suspended = _$tenantStatusEnum_suspended;
  @BuiltValueEnumConst(wireName: r'closing')
  static const TenantStatusEnum closing = _$tenantStatusEnum_closing;
  @BuiltValueEnumConst(wireName: r'closed')
  static const TenantStatusEnum closed = _$tenantStatusEnum_closed;

  static Serializer<TenantStatusEnum> get serializer => _$tenantStatusEnumSerializer;

  const TenantStatusEnum._(String name): super(name);

  static BuiltSet<TenantStatusEnum> get values => _$tenantStatusEnumValues;
  static TenantStatusEnum valueOf(String name) => _$tenantStatusEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/plan_catalog_entry.dart';
import 'package:lockally/src/model/unit_bundle.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'billing_status.g.dart';

/// BillingStatus
///
/// Properties:
/// * [plan] 
/// * [displayName] 
/// * [mode] 
/// * [rateCapPerMin] 
/// * [monthlyIncludedSends] 
/// * [msgsThisPeriod] 
/// * [status] 
/// * [priceNairaPerSeat] 
/// * [subscribedAt] 
/// * [currentPeriodEnd] 
/// * [createdAt] 
/// * [sendUnitsBalance] 
/// * [sendUnitsNextExpiry] 
/// * [unitBundles] 
/// * [catalog] 
@BuiltValue()
abstract class BillingStatus implements Built<BillingStatus, BillingStatusBuilder> {
  @BuiltValueField(wireName: r'plan')
  String get plan;

  @BuiltValueField(wireName: r'display_name')
  String get displayName;

  @BuiltValueField(wireName: r'mode')
  BillingStatusModeEnum get mode;
  // enum modeEnum {  api,  business,  both,  };

  @BuiltValueField(wireName: r'rate_cap_per_min')
  int get rateCapPerMin;

  @BuiltValueField(wireName: r'monthly_included_sends')
  int get monthlyIncludedSends;

  @BuiltValueField(wireName: r'msgs_this_period')
  int get msgsThisPeriod;

  @BuiltValueField(wireName: r'status')
  BillingStatusStatusEnum get status;
  // enum statusEnum {  active,  suspended,  };

  @BuiltValueField(wireName: r'price_naira_per_seat')
  int get priceNairaPerSeat;

  @BuiltValueField(wireName: r'subscribed_at')
  DateTime? get subscribedAt;

  @BuiltValueField(wireName: r'current_period_end')
  DateTime? get currentPeriodEnd;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'send_units_balance')
  int get sendUnitsBalance;

  @BuiltValueField(wireName: r'send_units_next_expiry')
  DateTime? get sendUnitsNextExpiry;

  @BuiltValueField(wireName: r'unit_bundles')
  BuiltList<UnitBundle> get unitBundles;

  @BuiltValueField(wireName: r'catalog')
  BuiltList<PlanCatalogEntry> get catalog;

  BillingStatus._();

  factory BillingStatus([void updates(BillingStatusBuilder b)]) = _$BillingStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BillingStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BillingStatus> get serializer => _$BillingStatusSerializer();
}

class _$BillingStatusSerializer implements PrimitiveSerializer<BillingStatus> {
  @override
  final Iterable<Type> types = const [BillingStatus, _$BillingStatus];

  @override
  final String wireName = r'BillingStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BillingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'plan';
    yield serializers.serialize(
      object.plan,
      specifiedType: const FullType(String),
    );
    yield r'display_name';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(BillingStatusModeEnum),
    );
    yield r'rate_cap_per_min';
    yield serializers.serialize(
      object.rateCapPerMin,
      specifiedType: const FullType(int),
    );
    yield r'monthly_included_sends';
    yield serializers.serialize(
      object.monthlyIncludedSends,
      specifiedType: const FullType(int),
    );
    yield r'msgs_this_period';
    yield serializers.serialize(
      object.msgsThisPeriod,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BillingStatusStatusEnum),
    );
    yield r'price_naira_per_seat';
    yield serializers.serialize(
      object.priceNairaPerSeat,
      specifiedType: const FullType(int),
    );
    if (object.subscribedAt != null) {
      yield r'subscribed_at';
      yield serializers.serialize(
        object.subscribedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.currentPeriodEnd != null) {
      yield r'current_period_end';
      yield serializers.serialize(
        object.currentPeriodEnd,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'send_units_balance';
    yield serializers.serialize(
      object.sendUnitsBalance,
      specifiedType: const FullType(int),
    );
    if (object.sendUnitsNextExpiry != null) {
      yield r'send_units_next_expiry';
      yield serializers.serialize(
        object.sendUnitsNextExpiry,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'unit_bundles';
    yield serializers.serialize(
      object.unitBundles,
      specifiedType: const FullType(BuiltList, [FullType(UnitBundle)]),
    );
    yield r'catalog';
    yield serializers.serialize(
      object.catalog,
      specifiedType: const FullType(BuiltList, [FullType(PlanCatalogEntry)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BillingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BillingStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.plan = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BillingStatusModeEnum),
          ) as BillingStatusModeEnum;
          result.mode = valueDes;
          break;
        case r'rate_cap_per_min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rateCapPerMin = valueDes;
          break;
        case r'monthly_included_sends':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.monthlyIncludedSends = valueDes;
          break;
        case r'msgs_this_period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.msgsThisPeriod = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BillingStatusStatusEnum),
          ) as BillingStatusStatusEnum;
          result.status = valueDes;
          break;
        case r'price_naira_per_seat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.priceNairaPerSeat = valueDes;
          break;
        case r'subscribed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.subscribedAt = valueDes;
          break;
        case r'current_period_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.currentPeriodEnd = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'send_units_balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sendUnitsBalance = valueDes;
          break;
        case r'send_units_next_expiry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.sendUnitsNextExpiry = valueDes;
          break;
        case r'unit_bundles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UnitBundle)]),
          ) as BuiltList<UnitBundle>;
          result.unitBundles.replace(valueDes);
          break;
        case r'catalog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PlanCatalogEntry)]),
          ) as BuiltList<PlanCatalogEntry>;
          result.catalog.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BillingStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BillingStatusBuilder();
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

class BillingStatusModeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'api')
  static const BillingStatusModeEnum api = _$billingStatusModeEnum_api;
  @BuiltValueEnumConst(wireName: r'business')
  static const BillingStatusModeEnum business = _$billingStatusModeEnum_business;
  @BuiltValueEnumConst(wireName: r'both')
  static const BillingStatusModeEnum both = _$billingStatusModeEnum_both;

  static Serializer<BillingStatusModeEnum> get serializer => _$billingStatusModeEnumSerializer;

  const BillingStatusModeEnum._(String name): super(name);

  static BuiltSet<BillingStatusModeEnum> get values => _$billingStatusModeEnumValues;
  static BillingStatusModeEnum valueOf(String name) => _$billingStatusModeEnumValueOf(name);
}

class BillingStatusStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const BillingStatusStatusEnum active = _$billingStatusStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'suspended')
  static const BillingStatusStatusEnum suspended = _$billingStatusStatusEnum_suspended;

  static Serializer<BillingStatusStatusEnum> get serializer => _$billingStatusStatusEnumSerializer;

  const BillingStatusStatusEnum._(String name): super(name);

  static BuiltSet<BillingStatusStatusEnum> get values => _$billingStatusStatusEnumValues;
  static BillingStatusStatusEnum valueOf(String name) => _$billingStatusStatusEnumValueOf(name);
}


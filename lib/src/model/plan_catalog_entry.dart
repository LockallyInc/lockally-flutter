//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'plan_catalog_entry.g.dart';

/// PlanCatalogEntry
///
/// Properties:
/// * [name] 
/// * [displayName] 
/// * [description] 
/// * [priceNairaPerSeat] 
/// * [rateCapPerMin] 
/// * [monthlyIncludedSends] 
/// * [hasSharedMailboxes] 
/// * [hasSendUnits] 
/// * [hasAiUnits] 
/// * [hasE2eEncryption] 
@BuiltValue()
abstract class PlanCatalogEntry implements Built<PlanCatalogEntry, PlanCatalogEntryBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'display_name')
  String get displayName;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'price_naira_per_seat')
  int get priceNairaPerSeat;

  @BuiltValueField(wireName: r'rate_cap_per_min')
  int get rateCapPerMin;

  @BuiltValueField(wireName: r'monthly_included_sends')
  int get monthlyIncludedSends;

  @BuiltValueField(wireName: r'has_shared_mailboxes')
  bool get hasSharedMailboxes;

  @BuiltValueField(wireName: r'has_send_units')
  bool get hasSendUnits;

  @BuiltValueField(wireName: r'has_ai_units')
  bool get hasAiUnits;

  @BuiltValueField(wireName: r'has_e2e_encryption')
  bool get hasE2eEncryption;

  PlanCatalogEntry._();

  factory PlanCatalogEntry([void updates(PlanCatalogEntryBuilder b)]) = _$PlanCatalogEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlanCatalogEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlanCatalogEntry> get serializer => _$PlanCatalogEntrySerializer();
}

class _$PlanCatalogEntrySerializer implements PrimitiveSerializer<PlanCatalogEntry> {
  @override
  final Iterable<Type> types = const [PlanCatalogEntry, _$PlanCatalogEntry];

  @override
  final String wireName = r'PlanCatalogEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlanCatalogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'display_name';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'price_naira_per_seat';
    yield serializers.serialize(
      object.priceNairaPerSeat,
      specifiedType: const FullType(int),
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
    yield r'has_shared_mailboxes';
    yield serializers.serialize(
      object.hasSharedMailboxes,
      specifiedType: const FullType(bool),
    );
    yield r'has_send_units';
    yield serializers.serialize(
      object.hasSendUnits,
      specifiedType: const FullType(bool),
    );
    yield r'has_ai_units';
    yield serializers.serialize(
      object.hasAiUnits,
      specifiedType: const FullType(bool),
    );
    yield r'has_e2e_encryption';
    yield serializers.serialize(
      object.hasE2eEncryption,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlanCatalogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlanCatalogEntryBuilder result,
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
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'price_naira_per_seat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.priceNairaPerSeat = valueDes;
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
        case r'has_shared_mailboxes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasSharedMailboxes = valueDes;
          break;
        case r'has_send_units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasSendUnits = valueDes;
          break;
        case r'has_ai_units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasAiUnits = valueDes;
          break;
        case r'has_e2e_encryption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasE2eEncryption = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlanCatalogEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlanCatalogEntryBuilder();
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


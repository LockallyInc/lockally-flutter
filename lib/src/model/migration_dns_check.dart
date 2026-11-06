//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/migration_domain_dns.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'migration_dns_check.g.dart';

/// Live DNS readiness of the destination domains, for deciding when to cut over. `ready` is true only when every domain's MX points at Lockally and its SPF authorises it.
///
/// Properties:
/// * [ready] 
/// * [domains] 
@BuiltValue()
abstract class MigrationDNSCheck implements Built<MigrationDNSCheck, MigrationDNSCheckBuilder> {
  @BuiltValueField(wireName: r'ready')
  bool get ready;

  @BuiltValueField(wireName: r'domains')
  BuiltList<MigrationDomainDNS> get domains;

  MigrationDNSCheck._();

  factory MigrationDNSCheck([void updates(MigrationDNSCheckBuilder b)]) = _$MigrationDNSCheck;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MigrationDNSCheckBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MigrationDNSCheck> get serializer => _$MigrationDNSCheckSerializer();
}

class _$MigrationDNSCheckSerializer implements PrimitiveSerializer<MigrationDNSCheck> {
  @override
  final Iterable<Type> types = const [MigrationDNSCheck, _$MigrationDNSCheck];

  @override
  final String wireName = r'MigrationDNSCheck';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MigrationDNSCheck object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ready';
    yield serializers.serialize(
      object.ready,
      specifiedType: const FullType(bool),
    );
    yield r'domains';
    yield serializers.serialize(
      object.domains,
      specifiedType: const FullType(BuiltList, [FullType(MigrationDomainDNS)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MigrationDNSCheck object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MigrationDNSCheckBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ready':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ready = valueDes;
          break;
        case r'domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MigrationDomainDNS)]),
          ) as BuiltList<MigrationDomainDNS>;
          result.domains.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MigrationDNSCheck deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MigrationDNSCheckBuilder();
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


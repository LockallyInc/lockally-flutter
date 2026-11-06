//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'migration_domain_dns.g.dart';

/// Each record is `healthy`, `warning` or `critical`, or empty when it could not be checked.
///
/// Properties:
/// * [domain] 
/// * [mx] 
/// * [spf] 
/// * [dkim] 
/// * [dmarc] 
@BuiltValue()
abstract class MigrationDomainDNS implements Built<MigrationDomainDNS, MigrationDomainDNSBuilder> {
  @BuiltValueField(wireName: r'domain')
  String get domain;

  @BuiltValueField(wireName: r'mx')
  String get mx;

  @BuiltValueField(wireName: r'spf')
  String get spf;

  @BuiltValueField(wireName: r'dkim')
  String get dkim;

  @BuiltValueField(wireName: r'dmarc')
  String get dmarc;

  MigrationDomainDNS._();

  factory MigrationDomainDNS([void updates(MigrationDomainDNSBuilder b)]) = _$MigrationDomainDNS;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MigrationDomainDNSBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MigrationDomainDNS> get serializer => _$MigrationDomainDNSSerializer();
}

class _$MigrationDomainDNSSerializer implements PrimitiveSerializer<MigrationDomainDNS> {
  @override
  final Iterable<Type> types = const [MigrationDomainDNS, _$MigrationDomainDNS];

  @override
  final String wireName = r'MigrationDomainDNS';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MigrationDomainDNS object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    yield r'mx';
    yield serializers.serialize(
      object.mx,
      specifiedType: const FullType(String),
    );
    yield r'spf';
    yield serializers.serialize(
      object.spf,
      specifiedType: const FullType(String),
    );
    yield r'dkim';
    yield serializers.serialize(
      object.dkim,
      specifiedType: const FullType(String),
    );
    yield r'dmarc';
    yield serializers.serialize(
      object.dmarc,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MigrationDomainDNS object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MigrationDomainDNSBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'mx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mx = valueDes;
          break;
        case r'spf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spf = valueDes;
          break;
        case r'dkim':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dkim = valueDes;
          break;
        case r'dmarc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dmarc = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MigrationDomainDNS deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MigrationDomainDNSBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/dns_record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain.g.dart';

/// Domain
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [domain] 
/// * [verificationToken] 
/// * [verified] 
/// * [verifiedAt] 
/// * [dkimSelector] 
/// * [dkimPublicRecord] 
/// * [createdAt] 
/// * [records] - DNS records the tenant must publish under their own DNS.
@BuiltValue()
abstract class Domain implements Built<Domain, DomainBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'domain')
  String get domain;

  @BuiltValueField(wireName: r'verification_token')
  String get verificationToken;

  @BuiltValueField(wireName: r'verified')
  bool get verified;

  @BuiltValueField(wireName: r'verified_at')
  DateTime? get verifiedAt;

  @BuiltValueField(wireName: r'dkim_selector')
  String get dkimSelector;

  @BuiltValueField(wireName: r'dkim_public_record')
  String get dkimPublicRecord;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// DNS records the tenant must publish under their own DNS.
  @BuiltValueField(wireName: r'records')
  BuiltList<DNSRecord>? get records;

  Domain._();

  factory Domain([void updates(DomainBuilder b)]) = _$Domain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DomainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Domain> get serializer => _$DomainSerializer();
}

class _$DomainSerializer implements PrimitiveSerializer<Domain> {
  @override
  final Iterable<Type> types = const [Domain, _$Domain];

  @override
  final String wireName = r'Domain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Domain object, {
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
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    yield r'verification_token';
    yield serializers.serialize(
      object.verificationToken,
      specifiedType: const FullType(String),
    );
    yield r'verified';
    yield serializers.serialize(
      object.verified,
      specifiedType: const FullType(bool),
    );
    if (object.verifiedAt != null) {
      yield r'verified_at';
      yield serializers.serialize(
        object.verifiedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'dkim_selector';
    yield serializers.serialize(
      object.dkimSelector,
      specifiedType: const FullType(String),
    );
    yield r'dkim_public_record';
    yield serializers.serialize(
      object.dkimPublicRecord,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.records != null) {
      yield r'records';
      yield serializers.serialize(
        object.records,
        specifiedType: const FullType(BuiltList, [FullType(DNSRecord)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Domain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DomainBuilder result,
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
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'verification_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.verificationToken = valueDes;
          break;
        case r'verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.verified = valueDes;
          break;
        case r'verified_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.verifiedAt = valueDes;
          break;
        case r'dkim_selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dkimSelector = valueDes;
          break;
        case r'dkim_public_record':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dkimPublicRecord = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DNSRecord)]),
          ) as BuiltList<DNSRecord>;
          result.records.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Domain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DomainBuilder();
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


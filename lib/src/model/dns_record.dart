//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dns_record.g.dart';

/// DNSRecord
///
/// Properties:
/// * [type] 
/// * [name] 
/// * [value] 
/// * [ttl] 
/// * [priority] - MX records only.
/// * [purpose] 
@BuiltValue()
abstract class DNSRecord implements Built<DNSRecord, DNSRecordBuilder> {
  @BuiltValueField(wireName: r'type')
  DNSRecordTypeEnum get type;
  // enum typeEnum {  TXT,  MX,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'value')
  String get value;

  @BuiltValueField(wireName: r'ttl')
  int get ttl;

  /// MX records only.
  @BuiltValueField(wireName: r'priority')
  int? get priority;

  @BuiltValueField(wireName: r'purpose')
  DNSRecordPurposeEnum get purpose;
  // enum purposeEnum {  verification,  spf,  dkim,  mx-primary,  mx-backup,  dmarc,  };

  DNSRecord._();

  factory DNSRecord([void updates(DNSRecordBuilder b)]) = _$DNSRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DNSRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DNSRecord> get serializer => _$DNSRecordSerializer();
}

class _$DNSRecordSerializer implements PrimitiveSerializer<DNSRecord> {
  @override
  final Iterable<Type> types = const [DNSRecord, _$DNSRecord];

  @override
  final String wireName = r'DNSRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DNSRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(DNSRecordTypeEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    yield r'ttl';
    yield serializers.serialize(
      object.ttl,
      specifiedType: const FullType(int),
    );
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(int),
      );
    }
    yield r'purpose';
    yield serializers.serialize(
      object.purpose,
      specifiedType: const FullType(DNSRecordPurposeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DNSRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DNSRecordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DNSRecordTypeEnum),
          ) as DNSRecordTypeEnum;
          result.type = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'ttl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ttl = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.priority = valueDes;
          break;
        case r'purpose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DNSRecordPurposeEnum),
          ) as DNSRecordPurposeEnum;
          result.purpose = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DNSRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DNSRecordBuilder();
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

class DNSRecordTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'TXT')
  static const DNSRecordTypeEnum TXT = _$dNSRecordTypeEnum_TXT;
  @BuiltValueEnumConst(wireName: r'MX')
  static const DNSRecordTypeEnum MX = _$dNSRecordTypeEnum_MX;

  static Serializer<DNSRecordTypeEnum> get serializer => _$dNSRecordTypeEnumSerializer;

  const DNSRecordTypeEnum._(String name): super(name);

  static BuiltSet<DNSRecordTypeEnum> get values => _$dNSRecordTypeEnumValues;
  static DNSRecordTypeEnum valueOf(String name) => _$dNSRecordTypeEnumValueOf(name);
}

class DNSRecordPurposeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'verification')
  static const DNSRecordPurposeEnum verification = _$dNSRecordPurposeEnum_verification;
  @BuiltValueEnumConst(wireName: r'spf')
  static const DNSRecordPurposeEnum spf = _$dNSRecordPurposeEnum_spf;
  @BuiltValueEnumConst(wireName: r'dkim')
  static const DNSRecordPurposeEnum dkim = _$dNSRecordPurposeEnum_dkim;
  @BuiltValueEnumConst(wireName: r'mx-primary')
  static const DNSRecordPurposeEnum mxPrimary = _$dNSRecordPurposeEnum_mxPrimary;
  @BuiltValueEnumConst(wireName: r'mx-backup')
  static const DNSRecordPurposeEnum mxBackup = _$dNSRecordPurposeEnum_mxBackup;
  @BuiltValueEnumConst(wireName: r'dmarc')
  static const DNSRecordPurposeEnum dmarc = _$dNSRecordPurposeEnum_dmarc;

  static Serializer<DNSRecordPurposeEnum> get serializer => _$dNSRecordPurposeEnumSerializer;

  const DNSRecordPurposeEnum._(String name): super(name);

  static BuiltSet<DNSRecordPurposeEnum> get values => _$dNSRecordPurposeEnumValues;
  static DNSRecordPurposeEnum valueOf(String name) => _$dNSRecordPurposeEnumValueOf(name);
}


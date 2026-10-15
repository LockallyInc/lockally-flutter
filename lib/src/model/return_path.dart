//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/return_path_check.dart';
import 'package:lockally/src/model/dns_record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'return_path.g.dart';

/// ReturnPath
///
/// Properties:
/// * [status] 
/// * [host] 
/// * [records] 
/// * [check] 
/// * [requestedAt] 
/// * [verifiedAt] 
@BuiltValue()
abstract class ReturnPath implements Built<ReturnPath, ReturnPathBuilder> {
  @BuiltValueField(wireName: r'status')
  ReturnPathStatusEnum get status;
  // enum statusEnum {  false,  pending,  active,  };

  @BuiltValueField(wireName: r'host')
  String get host;

  @BuiltValueField(wireName: r'records')
  BuiltList<DNSRecord> get records;

  @BuiltValueField(wireName: r'check')
  ReturnPathCheck? get check;

  @BuiltValueField(wireName: r'requested_at')
  DateTime? get requestedAt;

  @BuiltValueField(wireName: r'verified_at')
  DateTime? get verifiedAt;

  ReturnPath._();

  factory ReturnPath([void updates(ReturnPathBuilder b)]) = _$ReturnPath;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReturnPathBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReturnPath> get serializer => _$ReturnPathSerializer();
}

class _$ReturnPathSerializer implements PrimitiveSerializer<ReturnPath> {
  @override
  final Iterable<Type> types = const [ReturnPath, _$ReturnPath];

  @override
  final String wireName = r'ReturnPath';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReturnPath object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ReturnPathStatusEnum),
    );
    yield r'host';
    yield serializers.serialize(
      object.host,
      specifiedType: const FullType(String),
    );
    yield r'records';
    yield serializers.serialize(
      object.records,
      specifiedType: const FullType(BuiltList, [FullType(DNSRecord)]),
    );
    if (object.check != null) {
      yield r'check';
      yield serializers.serialize(
        object.check,
        specifiedType: const FullType(ReturnPathCheck),
      );
    }
    if (object.requestedAt != null) {
      yield r'requested_at';
      yield serializers.serialize(
        object.requestedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.verifiedAt != null) {
      yield r'verified_at';
      yield serializers.serialize(
        object.verifiedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReturnPath object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReturnPathBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReturnPathStatusEnum),
          ) as ReturnPathStatusEnum;
          result.status = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.host = valueDes;
          break;
        case r'records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DNSRecord)]),
          ) as BuiltList<DNSRecord>;
          result.records.replace(valueDes);
          break;
        case r'check':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReturnPathCheck),
          ) as ReturnPathCheck;
          result.check.replace(valueDes);
          break;
        case r'requested_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.requestedAt = valueDes;
          break;
        case r'verified_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.verifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReturnPath deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReturnPathBuilder();
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

class ReturnPathStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'false')
  static const ReturnPathStatusEnum false_ = _$returnPathStatusEnum_false_;
  @BuiltValueEnumConst(wireName: r'pending')
  static const ReturnPathStatusEnum pending = _$returnPathStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'active')
  static const ReturnPathStatusEnum active = _$returnPathStatusEnum_active;

  static Serializer<ReturnPathStatusEnum> get serializer => _$returnPathStatusEnumSerializer;

  const ReturnPathStatusEnum._(String name): super(name);

  static BuiltSet<ReturnPathStatusEnum> get values => _$returnPathStatusEnumValues;
  static ReturnPathStatusEnum valueOf(String name) => _$returnPathStatusEnumValueOf(name);
}


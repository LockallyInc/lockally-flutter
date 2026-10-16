//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_domains_status200_response_domains_inner_checks_inner.g.dart';

/// GetDomainsStatus200ResponseDomainsInnerChecksInner
///
/// Properties:
/// * [key] 
/// * [label] 
/// * [status] 
@BuiltValue()
abstract class GetDomainsStatus200ResponseDomainsInnerChecksInner implements Built<GetDomainsStatus200ResponseDomainsInnerChecksInner, GetDomainsStatus200ResponseDomainsInnerChecksInnerBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'status')
  GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum? get status;
  // enum statusEnum {  healthy,  warning,  critical,  };

  GetDomainsStatus200ResponseDomainsInnerChecksInner._();

  factory GetDomainsStatus200ResponseDomainsInnerChecksInner([void updates(GetDomainsStatus200ResponseDomainsInnerChecksInnerBuilder b)]) = _$GetDomainsStatus200ResponseDomainsInnerChecksInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDomainsStatus200ResponseDomainsInnerChecksInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDomainsStatus200ResponseDomainsInnerChecksInner> get serializer => _$GetDomainsStatus200ResponseDomainsInnerChecksInnerSerializer();
}

class _$GetDomainsStatus200ResponseDomainsInnerChecksInnerSerializer implements PrimitiveSerializer<GetDomainsStatus200ResponseDomainsInnerChecksInner> {
  @override
  final Iterable<Type> types = const [GetDomainsStatus200ResponseDomainsInnerChecksInner, _$GetDomainsStatus200ResponseDomainsInnerChecksInner];

  @override
  final String wireName = r'GetDomainsStatus200ResponseDomainsInnerChecksInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDomainsStatus200ResponseDomainsInnerChecksInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDomainsStatus200ResponseDomainsInnerChecksInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetDomainsStatus200ResponseDomainsInnerChecksInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
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
            specifiedType: const FullType(GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum),
          ) as GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetDomainsStatus200ResponseDomainsInnerChecksInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDomainsStatus200ResponseDomainsInnerChecksInnerBuilder();
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

class GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'healthy')
  static const GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum healthy = _$getDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum_healthy;
  @BuiltValueEnumConst(wireName: r'warning')
  static const GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum warning = _$getDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum critical = _$getDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum_critical;

  static Serializer<GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum> get serializer => _$getDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnumSerializer;

  const GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum._(String name): super(name);

  static BuiltSet<GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum> get values => _$getDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnumValues;
  static GetDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnum valueOf(String name) => _$getDomainsStatus200ResponseDomainsInnerChecksInnerStatusEnumValueOf(name);
}


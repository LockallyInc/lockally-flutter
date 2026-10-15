//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/get_domains_status200_response_domains_inner_checks_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_domains_status200_response_domains_inner.g.dart';

/// GetDomainsStatus200ResponseDomainsInner
///
/// Properties:
/// * [domain] 
/// * [verified] 
/// * [checks] 
@BuiltValue()
abstract class GetDomainsStatus200ResponseDomainsInner implements Built<GetDomainsStatus200ResponseDomainsInner, GetDomainsStatus200ResponseDomainsInnerBuilder> {
  @BuiltValueField(wireName: r'domain')
  String? get domain;

  @BuiltValueField(wireName: r'verified')
  bool? get verified;

  @BuiltValueField(wireName: r'checks')
  BuiltList<GetDomainsStatus200ResponseDomainsInnerChecksInner>? get checks;

  GetDomainsStatus200ResponseDomainsInner._();

  factory GetDomainsStatus200ResponseDomainsInner([void updates(GetDomainsStatus200ResponseDomainsInnerBuilder b)]) = _$GetDomainsStatus200ResponseDomainsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDomainsStatus200ResponseDomainsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDomainsStatus200ResponseDomainsInner> get serializer => _$GetDomainsStatus200ResponseDomainsInnerSerializer();
}

class _$GetDomainsStatus200ResponseDomainsInnerSerializer implements PrimitiveSerializer<GetDomainsStatus200ResponseDomainsInner> {
  @override
  final Iterable<Type> types = const [GetDomainsStatus200ResponseDomainsInner, _$GetDomainsStatus200ResponseDomainsInner];

  @override
  final String wireName = r'GetDomainsStatus200ResponseDomainsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDomainsStatus200ResponseDomainsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(String),
      );
    }
    if (object.verified != null) {
      yield r'verified';
      yield serializers.serialize(
        object.verified,
        specifiedType: const FullType(bool),
      );
    }
    if (object.checks != null) {
      yield r'checks';
      yield serializers.serialize(
        object.checks,
        specifiedType: const FullType(BuiltList, [FullType(GetDomainsStatus200ResponseDomainsInnerChecksInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDomainsStatus200ResponseDomainsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetDomainsStatus200ResponseDomainsInnerBuilder result,
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
        case r'verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.verified = valueDes;
          break;
        case r'checks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetDomainsStatus200ResponseDomainsInnerChecksInner)]),
          ) as BuiltList<GetDomainsStatus200ResponseDomainsInnerChecksInner>;
          result.checks.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetDomainsStatus200ResponseDomainsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDomainsStatus200ResponseDomainsInnerBuilder();
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


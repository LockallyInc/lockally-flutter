//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'whoami_tenant.g.dart';

/// WhoamiTenant
///
/// Properties:
/// * [slug] 
/// * [name] - What the account calls itself.
/// * [plan] 
@BuiltValue()
abstract class WhoamiTenant implements Built<WhoamiTenant, WhoamiTenantBuilder> {
  @BuiltValueField(wireName: r'slug')
  String? get slug;

  /// What the account calls itself.
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'plan')
  String? get plan;

  WhoamiTenant._();

  factory WhoamiTenant([void updates(WhoamiTenantBuilder b)]) = _$WhoamiTenant;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WhoamiTenantBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WhoamiTenant> get serializer => _$WhoamiTenantSerializer();
}

class _$WhoamiTenantSerializer implements PrimitiveSerializer<WhoamiTenant> {
  @override
  final Iterable<Type> types = const [WhoamiTenant, _$WhoamiTenant];

  @override
  final String wireName = r'WhoamiTenant';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WhoamiTenant object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.slug != null) {
      yield r'slug';
      yield serializers.serialize(
        object.slug,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.plan != null) {
      yield r'plan';
      yield serializers.serialize(
        object.plan,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WhoamiTenant object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WhoamiTenantBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.plan = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WhoamiTenant deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WhoamiTenantBuilder();
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


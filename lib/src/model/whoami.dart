//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'whoami.g.dart';

/// Whoami
///
/// Properties:
/// * [tenantId] 
/// * [tenant] 
/// * [label] - The API key's label.
/// * [scopes] 
@BuiltValue()
abstract class Whoami implements Built<Whoami, WhoamiBuilder> {
  @BuiltValueField(wireName: r'tenant_id')
  String? get tenantId;

  @BuiltValueField(wireName: r'tenant')
  String? get tenant;

  /// The API key's label.
  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'scopes')
  BuiltList<String>? get scopes;

  Whoami._();

  factory Whoami([void updates(WhoamiBuilder b)]) = _$Whoami;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WhoamiBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Whoami> get serializer => _$WhoamiSerializer();
}

class _$WhoamiSerializer implements PrimitiveSerializer<Whoami> {
  @override
  final Iterable<Type> types = const [Whoami, _$Whoami];

  @override
  final String wireName = r'Whoami';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Whoami object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tenantId != null) {
      yield r'tenant_id';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.tenant != null) {
      yield r'tenant';
      yield serializers.serialize(
        object.tenant,
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
    if (object.scopes != null) {
      yield r'scopes';
      yield serializers.serialize(
        object.scopes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Whoami object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WhoamiBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'tenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenant = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.scopes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Whoami deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WhoamiBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/whoami_tenant.dart';
import 'package:lockally/src/model/whoami_key.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'whoami.g.dart';

/// Whoami
///
/// Properties:
/// * [tenant] 
/// * [scopes] 
/// * [auth] 
/// * [key] 
@BuiltValue()
abstract class Whoami implements Built<Whoami, WhoamiBuilder> {
  @BuiltValueField(wireName: r'tenant')
  WhoamiTenant get tenant;

  @BuiltValueField(wireName: r'scopes')
  BuiltList<String> get scopes;

  @BuiltValueField(wireName: r'auth')
  WhoamiAuthEnum get auth;
  // enum authEnum {  api_key,  session,  };

  @BuiltValueField(wireName: r'key')
  WhoamiKey? get key;

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
    yield r'tenant';
    yield serializers.serialize(
      object.tenant,
      specifiedType: const FullType(WhoamiTenant),
    );
    yield r'scopes';
    yield serializers.serialize(
      object.scopes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'auth';
    yield serializers.serialize(
      object.auth,
      specifiedType: const FullType(WhoamiAuthEnum),
    );
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(WhoamiKey),
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
        case r'tenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WhoamiTenant),
          ) as WhoamiTenant;
          result.tenant.replace(valueDes);
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.scopes.replace(valueDes);
          break;
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WhoamiAuthEnum),
          ) as WhoamiAuthEnum;
          result.auth = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WhoamiKey),
          ) as WhoamiKey;
          result.key.replace(valueDes);
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

class WhoamiAuthEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'api_key')
  static const WhoamiAuthEnum apiKey = _$whoamiAuthEnum_apiKey;
  @BuiltValueEnumConst(wireName: r'session')
  static const WhoamiAuthEnum session = _$whoamiAuthEnum_session;

  static Serializer<WhoamiAuthEnum> get serializer => _$whoamiAuthEnumSerializer;

  const WhoamiAuthEnum._(String name): super(name);

  static BuiltSet<WhoamiAuthEnum> get values => _$whoamiAuthEnumValues;
  static WhoamiAuthEnum valueOf(String name) => _$whoamiAuthEnumValueOf(name);
}


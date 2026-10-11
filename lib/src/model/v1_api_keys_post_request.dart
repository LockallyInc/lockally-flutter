//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_api_keys_post_request.g.dart';

/// V1ApiKeysPostRequest
///
/// Properties:
/// * [label] - Free-text identifier shown in the dashboard.
/// * [scopes] - Allowed scopes on this key.
/// * [test] - Issue a test key (`lk_test_` prefix). A test key accepts sends, records them and fires a simulated delivery webhook without sending mail, and counts against no limit or allowance. 
@BuiltValue()
abstract class V1ApiKeysPostRequest implements Built<V1ApiKeysPostRequest, V1ApiKeysPostRequestBuilder> {
  /// Free-text identifier shown in the dashboard.
  @BuiltValueField(wireName: r'label')
  String get label;

  /// Allowed scopes on this key.
  @BuiltValueField(wireName: r'scopes')
  BuiltList<V1ApiKeysPostRequestScopesEnum> get scopes;
  // enum scopesEnum {  tenant:read,  tenant:admin,  mailboxes:read,  mailboxes:write,  directory:sync,  inboxes:read,  inboxes:write,  send:read,  send:write,  templates:read,  templates:write,  suppressions:read,  suppressions:write,  webhooks:read,  webhooks:write,  domains:read,  domains:write,  migrations:read,  migrations:write,  };

  /// Issue a test key (`lk_test_` prefix). A test key accepts sends, records them and fires a simulated delivery webhook without sending mail, and counts against no limit or allowance. 
  @BuiltValueField(wireName: r'test')
  bool? get test;

  V1ApiKeysPostRequest._();

  factory V1ApiKeysPostRequest([void updates(V1ApiKeysPostRequestBuilder b)]) = _$V1ApiKeysPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ApiKeysPostRequestBuilder b) => b
      ..test = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ApiKeysPostRequest> get serializer => _$V1ApiKeysPostRequestSerializer();
}

class _$V1ApiKeysPostRequestSerializer implements PrimitiveSerializer<V1ApiKeysPostRequest> {
  @override
  final Iterable<Type> types = const [V1ApiKeysPostRequest, _$V1ApiKeysPostRequest];

  @override
  final String wireName = r'V1ApiKeysPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ApiKeysPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    yield r'scopes';
    yield serializers.serialize(
      object.scopes,
      specifiedType: const FullType(BuiltList, [FullType(V1ApiKeysPostRequestScopesEnum)]),
    );
    if (object.test != null) {
      yield r'test';
      yield serializers.serialize(
        object.test,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ApiKeysPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ApiKeysPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(BuiltList, [FullType(V1ApiKeysPostRequestScopesEnum)]),
          ) as BuiltList<V1ApiKeysPostRequestScopesEnum>;
          result.scopes.replace(valueDes);
          break;
        case r'test':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.test = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ApiKeysPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ApiKeysPostRequestBuilder();
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

class V1ApiKeysPostRequestScopesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'tenant:read')
  static const V1ApiKeysPostRequestScopesEnum tenantColonRead = _$v1ApiKeysPostRequestScopesEnum_tenantColonRead;
  @BuiltValueEnumConst(wireName: r'tenant:admin')
  static const V1ApiKeysPostRequestScopesEnum tenantColonAdmin = _$v1ApiKeysPostRequestScopesEnum_tenantColonAdmin;
  @BuiltValueEnumConst(wireName: r'mailboxes:read')
  static const V1ApiKeysPostRequestScopesEnum mailboxesColonRead = _$v1ApiKeysPostRequestScopesEnum_mailboxesColonRead;
  @BuiltValueEnumConst(wireName: r'mailboxes:write')
  static const V1ApiKeysPostRequestScopesEnum mailboxesColonWrite = _$v1ApiKeysPostRequestScopesEnum_mailboxesColonWrite;
  @BuiltValueEnumConst(wireName: r'directory:sync')
  static const V1ApiKeysPostRequestScopesEnum directoryColonSync = _$v1ApiKeysPostRequestScopesEnum_directoryColonSync;
  @BuiltValueEnumConst(wireName: r'inboxes:read')
  static const V1ApiKeysPostRequestScopesEnum inboxesColonRead = _$v1ApiKeysPostRequestScopesEnum_inboxesColonRead;
  @BuiltValueEnumConst(wireName: r'inboxes:write')
  static const V1ApiKeysPostRequestScopesEnum inboxesColonWrite = _$v1ApiKeysPostRequestScopesEnum_inboxesColonWrite;
  @BuiltValueEnumConst(wireName: r'send:read')
  static const V1ApiKeysPostRequestScopesEnum sendColonRead = _$v1ApiKeysPostRequestScopesEnum_sendColonRead;
  @BuiltValueEnumConst(wireName: r'send:write')
  static const V1ApiKeysPostRequestScopesEnum sendColonWrite = _$v1ApiKeysPostRequestScopesEnum_sendColonWrite;
  @BuiltValueEnumConst(wireName: r'templates:read')
  static const V1ApiKeysPostRequestScopesEnum templatesColonRead = _$v1ApiKeysPostRequestScopesEnum_templatesColonRead;
  @BuiltValueEnumConst(wireName: r'templates:write')
  static const V1ApiKeysPostRequestScopesEnum templatesColonWrite = _$v1ApiKeysPostRequestScopesEnum_templatesColonWrite;
  @BuiltValueEnumConst(wireName: r'suppressions:read')
  static const V1ApiKeysPostRequestScopesEnum suppressionsColonRead = _$v1ApiKeysPostRequestScopesEnum_suppressionsColonRead;
  @BuiltValueEnumConst(wireName: r'suppressions:write')
  static const V1ApiKeysPostRequestScopesEnum suppressionsColonWrite = _$v1ApiKeysPostRequestScopesEnum_suppressionsColonWrite;
  @BuiltValueEnumConst(wireName: r'webhooks:read')
  static const V1ApiKeysPostRequestScopesEnum webhooksColonRead = _$v1ApiKeysPostRequestScopesEnum_webhooksColonRead;
  @BuiltValueEnumConst(wireName: r'webhooks:write')
  static const V1ApiKeysPostRequestScopesEnum webhooksColonWrite = _$v1ApiKeysPostRequestScopesEnum_webhooksColonWrite;
  @BuiltValueEnumConst(wireName: r'domains:read')
  static const V1ApiKeysPostRequestScopesEnum domainsColonRead = _$v1ApiKeysPostRequestScopesEnum_domainsColonRead;
  @BuiltValueEnumConst(wireName: r'domains:write')
  static const V1ApiKeysPostRequestScopesEnum domainsColonWrite = _$v1ApiKeysPostRequestScopesEnum_domainsColonWrite;
  @BuiltValueEnumConst(wireName: r'migrations:read')
  static const V1ApiKeysPostRequestScopesEnum migrationsColonRead = _$v1ApiKeysPostRequestScopesEnum_migrationsColonRead;
  @BuiltValueEnumConst(wireName: r'migrations:write')
  static const V1ApiKeysPostRequestScopesEnum migrationsColonWrite = _$v1ApiKeysPostRequestScopesEnum_migrationsColonWrite;

  static Serializer<V1ApiKeysPostRequestScopesEnum> get serializer => _$v1ApiKeysPostRequestScopesEnumSerializer;

  const V1ApiKeysPostRequestScopesEnum._(String name): super(name);

  static BuiltSet<V1ApiKeysPostRequestScopesEnum> get values => _$v1ApiKeysPostRequestScopesEnumValues;
  static V1ApiKeysPostRequestScopesEnum valueOf(String name) => _$v1ApiKeysPostRequestScopesEnumValueOf(name);
}


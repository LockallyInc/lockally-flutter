//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_api_key_request.g.dart';

/// CreateApiKeyRequest
///
/// Properties:
/// * [label] - Free-text identifier shown in the dashboard.
/// * [scopes] - Allowed scopes on this key.
/// * [test] - Issue a test key (`lk_test_` prefix). A test key accepts sends, records them and fires a simulated delivery webhook without sending mail, and counts against no limit or allowance. 
@BuiltValue()
abstract class CreateApiKeyRequest implements Built<CreateApiKeyRequest, CreateApiKeyRequestBuilder> {
  /// Free-text identifier shown in the dashboard.
  @BuiltValueField(wireName: r'label')
  String get label;

  /// Allowed scopes on this key.
  @BuiltValueField(wireName: r'scopes')
  BuiltList<CreateApiKeyRequestScopesEnum> get scopes;
  // enum scopesEnum {  tenant:read,  tenant:admin,  mailboxes:read,  mailboxes:write,  directory:sync,  inboxes:read,  inboxes:write,  send:read,  send:write,  templates:read,  templates:write,  suppressions:read,  suppressions:write,  webhooks:read,  webhooks:write,  domains:read,  domains:write,  migrations:read,  migrations:write,  };

  /// Issue a test key (`lk_test_` prefix). A test key accepts sends, records them and fires a simulated delivery webhook without sending mail, and counts against no limit or allowance. 
  @BuiltValueField(wireName: r'test')
  bool? get test;

  CreateApiKeyRequest._();

  factory CreateApiKeyRequest([void updates(CreateApiKeyRequestBuilder b)]) = _$CreateApiKeyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateApiKeyRequestBuilder b) => b
      ..test = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateApiKeyRequest> get serializer => _$CreateApiKeyRequestSerializer();
}

class _$CreateApiKeyRequestSerializer implements PrimitiveSerializer<CreateApiKeyRequest> {
  @override
  final Iterable<Type> types = const [CreateApiKeyRequest, _$CreateApiKeyRequest];

  @override
  final String wireName = r'CreateApiKeyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateApiKeyRequest object, {
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
      specifiedType: const FullType(BuiltList, [FullType(CreateApiKeyRequestScopesEnum)]),
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
    CreateApiKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateApiKeyRequestBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(CreateApiKeyRequestScopesEnum)]),
          ) as BuiltList<CreateApiKeyRequestScopesEnum>;
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
  CreateApiKeyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateApiKeyRequestBuilder();
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

class CreateApiKeyRequestScopesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'tenant:read')
  static const CreateApiKeyRequestScopesEnum tenantColonRead = _$createApiKeyRequestScopesEnum_tenantColonRead;
  @BuiltValueEnumConst(wireName: r'tenant:admin')
  static const CreateApiKeyRequestScopesEnum tenantColonAdmin = _$createApiKeyRequestScopesEnum_tenantColonAdmin;
  @BuiltValueEnumConst(wireName: r'mailboxes:read')
  static const CreateApiKeyRequestScopesEnum mailboxesColonRead = _$createApiKeyRequestScopesEnum_mailboxesColonRead;
  @BuiltValueEnumConst(wireName: r'mailboxes:write')
  static const CreateApiKeyRequestScopesEnum mailboxesColonWrite = _$createApiKeyRequestScopesEnum_mailboxesColonWrite;
  @BuiltValueEnumConst(wireName: r'directory:sync')
  static const CreateApiKeyRequestScopesEnum directoryColonSync = _$createApiKeyRequestScopesEnum_directoryColonSync;
  @BuiltValueEnumConst(wireName: r'inboxes:read')
  static const CreateApiKeyRequestScopesEnum inboxesColonRead = _$createApiKeyRequestScopesEnum_inboxesColonRead;
  @BuiltValueEnumConst(wireName: r'inboxes:write')
  static const CreateApiKeyRequestScopesEnum inboxesColonWrite = _$createApiKeyRequestScopesEnum_inboxesColonWrite;
  @BuiltValueEnumConst(wireName: r'send:read')
  static const CreateApiKeyRequestScopesEnum sendColonRead = _$createApiKeyRequestScopesEnum_sendColonRead;
  @BuiltValueEnumConst(wireName: r'send:write')
  static const CreateApiKeyRequestScopesEnum sendColonWrite = _$createApiKeyRequestScopesEnum_sendColonWrite;
  @BuiltValueEnumConst(wireName: r'templates:read')
  static const CreateApiKeyRequestScopesEnum templatesColonRead = _$createApiKeyRequestScopesEnum_templatesColonRead;
  @BuiltValueEnumConst(wireName: r'templates:write')
  static const CreateApiKeyRequestScopesEnum templatesColonWrite = _$createApiKeyRequestScopesEnum_templatesColonWrite;
  @BuiltValueEnumConst(wireName: r'suppressions:read')
  static const CreateApiKeyRequestScopesEnum suppressionsColonRead = _$createApiKeyRequestScopesEnum_suppressionsColonRead;
  @BuiltValueEnumConst(wireName: r'suppressions:write')
  static const CreateApiKeyRequestScopesEnum suppressionsColonWrite = _$createApiKeyRequestScopesEnum_suppressionsColonWrite;
  @BuiltValueEnumConst(wireName: r'webhooks:read')
  static const CreateApiKeyRequestScopesEnum webhooksColonRead = _$createApiKeyRequestScopesEnum_webhooksColonRead;
  @BuiltValueEnumConst(wireName: r'webhooks:write')
  static const CreateApiKeyRequestScopesEnum webhooksColonWrite = _$createApiKeyRequestScopesEnum_webhooksColonWrite;
  @BuiltValueEnumConst(wireName: r'domains:read')
  static const CreateApiKeyRequestScopesEnum domainsColonRead = _$createApiKeyRequestScopesEnum_domainsColonRead;
  @BuiltValueEnumConst(wireName: r'domains:write')
  static const CreateApiKeyRequestScopesEnum domainsColonWrite = _$createApiKeyRequestScopesEnum_domainsColonWrite;
  @BuiltValueEnumConst(wireName: r'migrations:read')
  static const CreateApiKeyRequestScopesEnum migrationsColonRead = _$createApiKeyRequestScopesEnum_migrationsColonRead;
  @BuiltValueEnumConst(wireName: r'migrations:write')
  static const CreateApiKeyRequestScopesEnum migrationsColonWrite = _$createApiKeyRequestScopesEnum_migrationsColonWrite;

  static Serializer<CreateApiKeyRequestScopesEnum> get serializer => _$createApiKeyRequestScopesEnumSerializer;

  const CreateApiKeyRequestScopesEnum._(String name): super(name);

  static BuiltSet<CreateApiKeyRequestScopesEnum> get values => _$createApiKeyRequestScopesEnumValues;
  static CreateApiKeyRequestScopesEnum valueOf(String name) => _$createApiKeyRequestScopesEnumValueOf(name);
}


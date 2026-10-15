//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/audit_event.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_audit_summary200_response.g.dart';

/// GetAuditSummary200Response
///
/// Properties:
/// * [adminActionsToday] 
/// * [recentLogins] 
/// * [recentExports] 
/// * [deletedMailboxes] 
/// * [generatedAt] 
@BuiltValue()
abstract class GetAuditSummary200Response implements Built<GetAuditSummary200Response, GetAuditSummary200ResponseBuilder> {
  @BuiltValueField(wireName: r'admin_actions_today')
  int? get adminActionsToday;

  @BuiltValueField(wireName: r'recent_logins')
  BuiltList<AuditEvent>? get recentLogins;

  @BuiltValueField(wireName: r'recent_exports')
  BuiltList<AuditEvent>? get recentExports;

  @BuiltValueField(wireName: r'deleted_mailboxes')
  BuiltList<AuditEvent>? get deletedMailboxes;

  @BuiltValueField(wireName: r'generated_at')
  DateTime? get generatedAt;

  GetAuditSummary200Response._();

  factory GetAuditSummary200Response([void updates(GetAuditSummary200ResponseBuilder b)]) = _$GetAuditSummary200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAuditSummary200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAuditSummary200Response> get serializer => _$GetAuditSummary200ResponseSerializer();
}

class _$GetAuditSummary200ResponseSerializer implements PrimitiveSerializer<GetAuditSummary200Response> {
  @override
  final Iterable<Type> types = const [GetAuditSummary200Response, _$GetAuditSummary200Response];

  @override
  final String wireName = r'GetAuditSummary200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAuditSummary200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.adminActionsToday != null) {
      yield r'admin_actions_today';
      yield serializers.serialize(
        object.adminActionsToday,
        specifiedType: const FullType(int),
      );
    }
    if (object.recentLogins != null) {
      yield r'recent_logins';
      yield serializers.serialize(
        object.recentLogins,
        specifiedType: const FullType(BuiltList, [FullType(AuditEvent)]),
      );
    }
    if (object.recentExports != null) {
      yield r'recent_exports';
      yield serializers.serialize(
        object.recentExports,
        specifiedType: const FullType(BuiltList, [FullType(AuditEvent)]),
      );
    }
    if (object.deletedMailboxes != null) {
      yield r'deleted_mailboxes';
      yield serializers.serialize(
        object.deletedMailboxes,
        specifiedType: const FullType(BuiltList, [FullType(AuditEvent)]),
      );
    }
    if (object.generatedAt != null) {
      yield r'generated_at';
      yield serializers.serialize(
        object.generatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetAuditSummary200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetAuditSummary200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'admin_actions_today':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.adminActionsToday = valueDes;
          break;
        case r'recent_logins':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AuditEvent)]),
          ) as BuiltList<AuditEvent>;
          result.recentLogins.replace(valueDes);
          break;
        case r'recent_exports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AuditEvent)]),
          ) as BuiltList<AuditEvent>;
          result.recentExports.replace(valueDes);
          break;
        case r'deleted_mailboxes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AuditEvent)]),
          ) as BuiltList<AuditEvent>;
          result.deletedMailboxes.replace(valueDes);
          break;
        case r'generated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetAuditSummary200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAuditSummary200ResponseBuilder();
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


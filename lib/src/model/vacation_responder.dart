//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/vacation_params.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vacation_responder.g.dart';

/// VacationResponder
///
/// Properties:
/// * [mailboxEmail] 
/// * [enabled] 
/// * [params] 
/// * [script] - Pre-rendered Sieve script (RFC 5230).
/// * [syncedAt] - Null = stored on lockally but not yet pushed to the mail server.
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class VacationResponder implements Built<VacationResponder, VacationResponderBuilder> {
  @BuiltValueField(wireName: r'mailbox_email')
  String get mailboxEmail;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'params')
  VacationParams get params;

  /// Pre-rendered Sieve script (RFC 5230).
  @BuiltValueField(wireName: r'script')
  String get script;

  /// Null = stored on lockally but not yet pushed to the mail server.
  @BuiltValueField(wireName: r'synced_at')
  DateTime? get syncedAt;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  VacationResponder._();

  factory VacationResponder([void updates(VacationResponderBuilder b)]) = _$VacationResponder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VacationResponderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VacationResponder> get serializer => _$VacationResponderSerializer();
}

class _$VacationResponderSerializer implements PrimitiveSerializer<VacationResponder> {
  @override
  final Iterable<Type> types = const [VacationResponder, _$VacationResponder];

  @override
  final String wireName = r'VacationResponder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VacationResponder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mailbox_email';
    yield serializers.serialize(
      object.mailboxEmail,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'params';
    yield serializers.serialize(
      object.params,
      specifiedType: const FullType(VacationParams),
    );
    yield r'script';
    yield serializers.serialize(
      object.script,
      specifiedType: const FullType(String),
    );
    if (object.syncedAt != null) {
      yield r'synced_at';
      yield serializers.serialize(
        object.syncedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VacationResponder object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VacationResponderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mailbox_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailboxEmail = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VacationParams),
          ) as VacationParams;
          result.params.replace(valueDes);
          break;
        case r'script':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.script = valueDes;
          break;
        case r'synced_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.syncedAt = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VacationResponder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VacationResponderBuilder();
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


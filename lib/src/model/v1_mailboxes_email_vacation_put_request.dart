//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lockally/src/model/vacation_params.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_mailboxes_email_vacation_put_request.g.dart';

/// V1MailboxesEmailVacationPutRequest
///
/// Properties:
/// * [enabled] 
/// * [params] 
@BuiltValue()
abstract class V1MailboxesEmailVacationPutRequest implements Built<V1MailboxesEmailVacationPutRequest, V1MailboxesEmailVacationPutRequestBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'params')
  VacationParams get params;

  V1MailboxesEmailVacationPutRequest._();

  factory V1MailboxesEmailVacationPutRequest([void updates(V1MailboxesEmailVacationPutRequestBuilder b)]) = _$V1MailboxesEmailVacationPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1MailboxesEmailVacationPutRequestBuilder b) => b
      ..enabled = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1MailboxesEmailVacationPutRequest> get serializer => _$V1MailboxesEmailVacationPutRequestSerializer();
}

class _$V1MailboxesEmailVacationPutRequestSerializer implements PrimitiveSerializer<V1MailboxesEmailVacationPutRequest> {
  @override
  final Iterable<Type> types = const [V1MailboxesEmailVacationPutRequest, _$V1MailboxesEmailVacationPutRequest];

  @override
  final String wireName = r'V1MailboxesEmailVacationPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1MailboxesEmailVacationPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'params';
    yield serializers.serialize(
      object.params,
      specifiedType: const FullType(VacationParams),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V1MailboxesEmailVacationPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1MailboxesEmailVacationPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1MailboxesEmailVacationPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1MailboxesEmailVacationPutRequestBuilder();
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


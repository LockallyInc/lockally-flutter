//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_encryption_key201_response.g.dart';

/// CreateEncryptionKey201Response
///
/// Properties:
/// * [id] 
/// * [mailboxId] 
/// * [createdAt] 
@BuiltValue()
abstract class CreateEncryptionKey201Response implements Built<CreateEncryptionKey201Response, CreateEncryptionKey201ResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'mailbox_id')
  String? get mailboxId;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  CreateEncryptionKey201Response._();

  factory CreateEncryptionKey201Response([void updates(CreateEncryptionKey201ResponseBuilder b)]) = _$CreateEncryptionKey201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateEncryptionKey201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateEncryptionKey201Response> get serializer => _$CreateEncryptionKey201ResponseSerializer();
}

class _$CreateEncryptionKey201ResponseSerializer implements PrimitiveSerializer<CreateEncryptionKey201Response> {
  @override
  final Iterable<Type> types = const [CreateEncryptionKey201Response, _$CreateEncryptionKey201Response];

  @override
  final String wireName = r'CreateEncryptionKey201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateEncryptionKey201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.mailboxId != null) {
      yield r'mailbox_id';
      yield serializers.serialize(
        object.mailboxId,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateEncryptionKey201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateEncryptionKey201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'mailbox_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mailboxId = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateEncryptionKey201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateEncryptionKey201ResponseBuilder();
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


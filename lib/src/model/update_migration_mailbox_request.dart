//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_migration_mailbox_request.g.dart';

/// UpdateMigrationMailboxRequest
///
/// Properties:
/// * [destEmail] 
/// * [status] - Can only be set to \"skipped\".
@BuiltValue()
abstract class UpdateMigrationMailboxRequest implements Built<UpdateMigrationMailboxRequest, UpdateMigrationMailboxRequestBuilder> {
  @BuiltValueField(wireName: r'dest_email')
  String? get destEmail;

  /// Can only be set to \"skipped\".
  @BuiltValueField(wireName: r'status')
  String? get status;

  UpdateMigrationMailboxRequest._();

  factory UpdateMigrationMailboxRequest([void updates(UpdateMigrationMailboxRequestBuilder b)]) = _$UpdateMigrationMailboxRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateMigrationMailboxRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateMigrationMailboxRequest> get serializer => _$UpdateMigrationMailboxRequestSerializer();
}

class _$UpdateMigrationMailboxRequestSerializer implements PrimitiveSerializer<UpdateMigrationMailboxRequest> {
  @override
  final Iterable<Type> types = const [UpdateMigrationMailboxRequest, _$UpdateMigrationMailboxRequest];

  @override
  final String wireName = r'UpdateMigrationMailboxRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateMigrationMailboxRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.destEmail != null) {
      yield r'dest_email';
      yield serializers.serialize(
        object.destEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateMigrationMailboxRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateMigrationMailboxRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dest_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destEmail = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateMigrationMailboxRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateMigrationMailboxRequestBuilder();
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


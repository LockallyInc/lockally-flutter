//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_result.g.dart';

/// BatchResult
///
/// Properties:
/// * [index] 
/// * [id] 
/// * [messageId] 
/// * [status] - \"suppressed\" means every recipient of that slot was on your suppression list, and it carries no id or message_id. \"delivered\" only appears on a test key: the send was simulated, not transmitted.
/// * [error] - Present when this message failed; the others are then absent.
@BuiltValue()
abstract class BatchResult implements Built<BatchResult, BatchResultBuilder> {
  @BuiltValueField(wireName: r'index')
  int? get index;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'message_id')
  String? get messageId;

  /// \"suppressed\" means every recipient of that slot was on your suppression list, and it carries no id or message_id. \"delivered\" only appears on a test key: the send was simulated, not transmitted.
  @BuiltValueField(wireName: r'status')
  BatchResultStatusEnum? get status;
  // enum statusEnum {  queued,  scheduled,  suppressed,  delivered,  };

  /// Present when this message failed; the others are then absent.
  @BuiltValueField(wireName: r'error')
  String? get error;

  BatchResult._();

  factory BatchResult([void updates(BatchResultBuilder b)]) = _$BatchResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchResult> get serializer => _$BatchResultSerializer();
}

class _$BatchResultSerializer implements PrimitiveSerializer<BatchResult> {
  @override
  final Iterable<Type> types = const [BatchResult, _$BatchResult];

  @override
  final String wireName = r'BatchResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.index != null) {
      yield r'index';
      yield serializers.serialize(
        object.index,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.messageId != null) {
      yield r'message_id';
      yield serializers.serialize(
        object.messageId,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(BatchResultStatusEnum),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.index = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BatchResultStatusEnum),
          ) as BatchResultStatusEnum;
          result.status = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchResultBuilder();
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

class BatchResultStatusEnum extends EnumClass {

  /// \"suppressed\" means every recipient of that slot was on your suppression list, and it carries no id or message_id. \"delivered\" only appears on a test key: the send was simulated, not transmitted.
  @BuiltValueEnumConst(wireName: r'queued')
  static const BatchResultStatusEnum queued = _$batchResultStatusEnum_queued;
  /// \"suppressed\" means every recipient of that slot was on your suppression list, and it carries no id or message_id. \"delivered\" only appears on a test key: the send was simulated, not transmitted.
  @BuiltValueEnumConst(wireName: r'scheduled')
  static const BatchResultStatusEnum scheduled = _$batchResultStatusEnum_scheduled;
  /// \"suppressed\" means every recipient of that slot was on your suppression list, and it carries no id or message_id. \"delivered\" only appears on a test key: the send was simulated, not transmitted.
  @BuiltValueEnumConst(wireName: r'suppressed')
  static const BatchResultStatusEnum suppressed = _$batchResultStatusEnum_suppressed;
  /// \"suppressed\" means every recipient of that slot was on your suppression list, and it carries no id or message_id. \"delivered\" only appears on a test key: the send was simulated, not transmitted.
  @BuiltValueEnumConst(wireName: r'delivered')
  static const BatchResultStatusEnum delivered = _$batchResultStatusEnum_delivered;

  static Serializer<BatchResultStatusEnum> get serializer => _$batchResultStatusEnumSerializer;

  const BatchResultStatusEnum._(String name): super(name);

  static BuiltSet<BatchResultStatusEnum> get values => _$batchResultStatusEnumValues;
  static BatchResultStatusEnum valueOf(String name) => _$batchResultStatusEnumValueOf(name);
}


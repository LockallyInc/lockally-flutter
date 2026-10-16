//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dedicated_ip_request.g.dart';

/// DedicatedIPRequest
///
/// Properties:
/// * [id] 
/// * [tenantId] 
/// * [status] 
/// * [note] 
/// * [adminNote] 
/// * [createdAt] 
/// * [resolvedAt] 
@BuiltValue()
abstract class DedicatedIPRequest implements Built<DedicatedIPRequest, DedicatedIPRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenant_id')
  String get tenantId;

  @BuiltValueField(wireName: r'status')
  DedicatedIPRequestStatusEnum get status;
  // enum statusEnum {  pending,  approved,  rejected,  };

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'admin_note')
  String? get adminNote;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'resolved_at')
  DateTime? get resolvedAt;

  DedicatedIPRequest._();

  factory DedicatedIPRequest([void updates(DedicatedIPRequestBuilder b)]) = _$DedicatedIPRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DedicatedIPRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DedicatedIPRequest> get serializer => _$DedicatedIPRequestSerializer();
}

class _$DedicatedIPRequestSerializer implements PrimitiveSerializer<DedicatedIPRequest> {
  @override
  final Iterable<Type> types = const [DedicatedIPRequest, _$DedicatedIPRequest];

  @override
  final String wireName = r'DedicatedIPRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DedicatedIPRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tenant_id';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DedicatedIPRequestStatusEnum),
    );
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
    if (object.adminNote != null) {
      yield r'admin_note';
      yield serializers.serialize(
        object.adminNote,
        specifiedType: const FullType(String),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.resolvedAt != null) {
      yield r'resolved_at';
      yield serializers.serialize(
        object.resolvedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DedicatedIPRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DedicatedIPRequestBuilder result,
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
        case r'tenant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DedicatedIPRequestStatusEnum),
          ) as DedicatedIPRequestStatusEnum;
          result.status = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note = valueDes;
          break;
        case r'admin_note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adminNote = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'resolved_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.resolvedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DedicatedIPRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DedicatedIPRequestBuilder();
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

class DedicatedIPRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const DedicatedIPRequestStatusEnum pending = _$dedicatedIPRequestStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'approved')
  static const DedicatedIPRequestStatusEnum approved = _$dedicatedIPRequestStatusEnum_approved;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const DedicatedIPRequestStatusEnum rejected = _$dedicatedIPRequestStatusEnum_rejected;

  static Serializer<DedicatedIPRequestStatusEnum> get serializer => _$dedicatedIPRequestStatusEnumSerializer;

  const DedicatedIPRequestStatusEnum._(String name): super(name);

  static BuiltSet<DedicatedIPRequestStatusEnum> get values => _$dedicatedIPRequestStatusEnumValues;
  static DedicatedIPRequestStatusEnum valueOf(String name) => _$dedicatedIPRequestStatusEnumValueOf(name);
}


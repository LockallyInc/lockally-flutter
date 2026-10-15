//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suppression.g.dart';

/// Suppression
///
/// Properties:
/// * [email] 
/// * [reason] 
/// * [source_] 
/// * [createdAt] 
@BuiltValue()
abstract class Suppression implements Built<Suppression, SuppressionBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'reason')
  SuppressionReasonEnum? get reason;
  // enum reasonEnum {  unsubscribe,  complaint,  bounce,  manual,  };

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  Suppression._();

  factory Suppression([void updates(SuppressionBuilder b)]) = _$Suppression;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuppressionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Suppression> get serializer => _$SuppressionSerializer();
}

class _$SuppressionSerializer implements PrimitiveSerializer<Suppression> {
  @override
  final Iterable<Type> types = const [Suppression, _$Suppression];

  @override
  final String wireName = r'Suppression';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Suppression object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(SuppressionReasonEnum),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
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
    Suppression object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuppressionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SuppressionReasonEnum),
          ) as SuppressionReasonEnum;
          result.reason = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
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
  Suppression deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuppressionBuilder();
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

class SuppressionReasonEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'unsubscribe')
  static const SuppressionReasonEnum unsubscribe = _$suppressionReasonEnum_unsubscribe;
  @BuiltValueEnumConst(wireName: r'complaint')
  static const SuppressionReasonEnum complaint = _$suppressionReasonEnum_complaint;
  @BuiltValueEnumConst(wireName: r'bounce')
  static const SuppressionReasonEnum bounce = _$suppressionReasonEnum_bounce;
  @BuiltValueEnumConst(wireName: r'manual')
  static const SuppressionReasonEnum manual = _$suppressionReasonEnum_manual;

  static Serializer<SuppressionReasonEnum> get serializer => _$suppressionReasonEnumSerializer;

  const SuppressionReasonEnum._(String name): super(name);

  static BuiltSet<SuppressionReasonEnum> get values => _$suppressionReasonEnumValues;
  static SuppressionReasonEnum valueOf(String name) => _$suppressionReasonEnumValueOf(name);
}


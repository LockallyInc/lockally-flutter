//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'classification.g.dart';

/// Classification
///
/// Properties:
/// * [intent] - For example support_request, sales_lead, billing, spam.
/// * [urgency] 
/// * [summary] - One line.
/// * [suggestedAction] - One line.
@BuiltValue()
abstract class Classification implements Built<Classification, ClassificationBuilder> {
  /// For example support_request, sales_lead, billing, spam.
  @BuiltValueField(wireName: r'intent')
  String? get intent;

  @BuiltValueField(wireName: r'urgency')
  ClassificationUrgencyEnum? get urgency;
  // enum urgencyEnum {  low,  normal,  high,  };

  /// One line.
  @BuiltValueField(wireName: r'summary')
  String? get summary;

  /// One line.
  @BuiltValueField(wireName: r'suggested_action')
  String? get suggestedAction;

  Classification._();

  factory Classification([void updates(ClassificationBuilder b)]) = _$Classification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClassificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Classification> get serializer => _$ClassificationSerializer();
}

class _$ClassificationSerializer implements PrimitiveSerializer<Classification> {
  @override
  final Iterable<Type> types = const [Classification, _$Classification];

  @override
  final String wireName = r'Classification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Classification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.intent != null) {
      yield r'intent';
      yield serializers.serialize(
        object.intent,
        specifiedType: const FullType(String),
      );
    }
    if (object.urgency != null) {
      yield r'urgency';
      yield serializers.serialize(
        object.urgency,
        specifiedType: const FullType(ClassificationUrgencyEnum),
      );
    }
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(String),
      );
    }
    if (object.suggestedAction != null) {
      yield r'suggested_action';
      yield serializers.serialize(
        object.suggestedAction,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Classification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClassificationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'intent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.intent = valueDes;
          break;
        case r'urgency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClassificationUrgencyEnum),
          ) as ClassificationUrgencyEnum;
          result.urgency = valueDes;
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.summary = valueDes;
          break;
        case r'suggested_action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.suggestedAction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Classification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClassificationBuilder();
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

class ClassificationUrgencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'low')
  static const ClassificationUrgencyEnum low = _$classificationUrgencyEnum_low;
  @BuiltValueEnumConst(wireName: r'normal')
  static const ClassificationUrgencyEnum normal = _$classificationUrgencyEnum_normal;
  @BuiltValueEnumConst(wireName: r'high')
  static const ClassificationUrgencyEnum high = _$classificationUrgencyEnum_high;

  static Serializer<ClassificationUrgencyEnum> get serializer => _$classificationUrgencyEnumSerializer;

  const ClassificationUrgencyEnum._(String name): super(name);

  static BuiltSet<ClassificationUrgencyEnum> get values => _$classificationUrgencyEnumValues;
  static ClassificationUrgencyEnum valueOf(String name) => _$classificationUrgencyEnumValueOf(name);
}


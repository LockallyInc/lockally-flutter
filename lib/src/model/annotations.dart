//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/injection_risk.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annotations.g.dart';

/// Signals computed at ingest, before an agent sees the message. A key is absent when its check did not fire. 
///
/// Properties:
/// * [attachmentTypes] 
/// * [meetingRequest] 
/// * [injectionRisk] 
@BuiltValue()
abstract class Annotations implements Built<Annotations, AnnotationsBuilder> {
  @BuiltValueField(wireName: r'attachment_types')
  BuiltList<String>? get attachmentTypes;

  @BuiltValueField(wireName: r'meeting_request')
  bool? get meetingRequest;

  @BuiltValueField(wireName: r'injection_risk')
  InjectionRisk? get injectionRisk;

  Annotations._();

  factory Annotations([void updates(AnnotationsBuilder b)]) = _$Annotations;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnotationsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Annotations> get serializer => _$AnnotationsSerializer();
}

class _$AnnotationsSerializer implements PrimitiveSerializer<Annotations> {
  @override
  final Iterable<Type> types = const [Annotations, _$Annotations];

  @override
  final String wireName = r'Annotations';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Annotations object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attachmentTypes != null) {
      yield r'attachment_types';
      yield serializers.serialize(
        object.attachmentTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.meetingRequest != null) {
      yield r'meeting_request';
      yield serializers.serialize(
        object.meetingRequest,
        specifiedType: const FullType(bool),
      );
    }
    if (object.injectionRisk != null) {
      yield r'injection_risk';
      yield serializers.serialize(
        object.injectionRisk,
        specifiedType: const FullType(InjectionRisk),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Annotations object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnnotationsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attachment_types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.attachmentTypes.replace(valueDes);
          break;
        case r'meeting_request':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.meetingRequest = valueDes;
          break;
        case r'injection_risk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InjectionRisk),
          ) as InjectionRisk;
          result.injectionRisk.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Annotations deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnotationsBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_calendar_overview200_response_activity_inner.g.dart';

/// GetCalendarOverview200ResponseActivityInner
///
/// Properties:
/// * [action] 
/// * [target] 
/// * [actor] 
/// * [createdAt] 
@BuiltValue()
abstract class GetCalendarOverview200ResponseActivityInner implements Built<GetCalendarOverview200ResponseActivityInner, GetCalendarOverview200ResponseActivityInnerBuilder> {
  @BuiltValueField(wireName: r'action')
  String? get action;

  @BuiltValueField(wireName: r'target')
  String? get target;

  @BuiltValueField(wireName: r'actor')
  String? get actor;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  GetCalendarOverview200ResponseActivityInner._();

  factory GetCalendarOverview200ResponseActivityInner([void updates(GetCalendarOverview200ResponseActivityInnerBuilder b)]) = _$GetCalendarOverview200ResponseActivityInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCalendarOverview200ResponseActivityInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCalendarOverview200ResponseActivityInner> get serializer => _$GetCalendarOverview200ResponseActivityInnerSerializer();
}

class _$GetCalendarOverview200ResponseActivityInnerSerializer implements PrimitiveSerializer<GetCalendarOverview200ResponseActivityInner> {
  @override
  final Iterable<Type> types = const [GetCalendarOverview200ResponseActivityInner, _$GetCalendarOverview200ResponseActivityInner];

  @override
  final String wireName = r'GetCalendarOverview200ResponseActivityInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCalendarOverview200ResponseActivityInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(String),
      );
    }
    if (object.target != null) {
      yield r'target';
      yield serializers.serialize(
        object.target,
        specifiedType: const FullType(String),
      );
    }
    if (object.actor != null) {
      yield r'actor';
      yield serializers.serialize(
        object.actor,
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
    GetCalendarOverview200ResponseActivityInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCalendarOverview200ResponseActivityInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.target = valueDes;
          break;
        case r'actor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.actor = valueDes;
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
  GetCalendarOverview200ResponseActivityInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCalendarOverview200ResponseActivityInnerBuilder();
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


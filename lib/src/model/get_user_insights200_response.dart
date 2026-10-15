//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lockally/src/model/user_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_user_insights200_response.g.dart';

/// GetUserInsights200Response
///
/// Properties:
/// * [recentlyAdded] 
/// * [recentlySuspended] 
/// * [inactive30d] 
/// * [seatsUsed] 
/// * [seatsAlloc] 
/// * [seatsCapped] - True only on tiers with a hard seat cap (Free, Founder). On unlimited/per-seat tiers seats_alloc merely tracks the live mailbox count, so seats_used == seats_alloc is normal and must not be read as 'at capacity'.
/// * [generatedAt] 
@BuiltValue()
abstract class GetUserInsights200Response implements Built<GetUserInsights200Response, GetUserInsights200ResponseBuilder> {
  @BuiltValueField(wireName: r'recently_added')
  BuiltList<UserEvent>? get recentlyAdded;

  @BuiltValueField(wireName: r'recently_suspended')
  BuiltList<UserEvent>? get recentlySuspended;

  @BuiltValueField(wireName: r'inactive_30d')
  BuiltList<UserEvent>? get inactive30d;

  @BuiltValueField(wireName: r'seats_used')
  int? get seatsUsed;

  @BuiltValueField(wireName: r'seats_alloc')
  int? get seatsAlloc;

  /// True only on tiers with a hard seat cap (Free, Founder). On unlimited/per-seat tiers seats_alloc merely tracks the live mailbox count, so seats_used == seats_alloc is normal and must not be read as 'at capacity'.
  @BuiltValueField(wireName: r'seats_capped')
  bool? get seatsCapped;

  @BuiltValueField(wireName: r'generated_at')
  DateTime? get generatedAt;

  GetUserInsights200Response._();

  factory GetUserInsights200Response([void updates(GetUserInsights200ResponseBuilder b)]) = _$GetUserInsights200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetUserInsights200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetUserInsights200Response> get serializer => _$GetUserInsights200ResponseSerializer();
}

class _$GetUserInsights200ResponseSerializer implements PrimitiveSerializer<GetUserInsights200Response> {
  @override
  final Iterable<Type> types = const [GetUserInsights200Response, _$GetUserInsights200Response];

  @override
  final String wireName = r'GetUserInsights200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetUserInsights200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.recentlyAdded != null) {
      yield r'recently_added';
      yield serializers.serialize(
        object.recentlyAdded,
        specifiedType: const FullType(BuiltList, [FullType(UserEvent)]),
      );
    }
    if (object.recentlySuspended != null) {
      yield r'recently_suspended';
      yield serializers.serialize(
        object.recentlySuspended,
        specifiedType: const FullType(BuiltList, [FullType(UserEvent)]),
      );
    }
    if (object.inactive30d != null) {
      yield r'inactive_30d';
      yield serializers.serialize(
        object.inactive30d,
        specifiedType: const FullType(BuiltList, [FullType(UserEvent)]),
      );
    }
    if (object.seatsUsed != null) {
      yield r'seats_used';
      yield serializers.serialize(
        object.seatsUsed,
        specifiedType: const FullType(int),
      );
    }
    if (object.seatsAlloc != null) {
      yield r'seats_alloc';
      yield serializers.serialize(
        object.seatsAlloc,
        specifiedType: const FullType(int),
      );
    }
    if (object.seatsCapped != null) {
      yield r'seats_capped';
      yield serializers.serialize(
        object.seatsCapped,
        specifiedType: const FullType(bool),
      );
    }
    if (object.generatedAt != null) {
      yield r'generated_at';
      yield serializers.serialize(
        object.generatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetUserInsights200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetUserInsights200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'recently_added':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserEvent)]),
          ) as BuiltList<UserEvent>;
          result.recentlyAdded.replace(valueDes);
          break;
        case r'recently_suspended':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserEvent)]),
          ) as BuiltList<UserEvent>;
          result.recentlySuspended.replace(valueDes);
          break;
        case r'inactive_30d':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserEvent)]),
          ) as BuiltList<UserEvent>;
          result.inactive30d.replace(valueDes);
          break;
        case r'seats_used':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seatsUsed = valueDes;
          break;
        case r'seats_alloc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seatsAlloc = valueDes;
          break;
        case r'seats_capped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.seatsCapped = valueDes;
          break;
        case r'generated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetUserInsights200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUserInsights200ResponseBuilder();
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


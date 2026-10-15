//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_storage200_response_top_mailboxes_inner.g.dart';

/// GetStorage200ResponseTopMailboxesInner
///
/// Properties:
/// * [email] 
/// * [usageBytes] 
@BuiltValue()
abstract class GetStorage200ResponseTopMailboxesInner implements Built<GetStorage200ResponseTopMailboxesInner, GetStorage200ResponseTopMailboxesInnerBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'usage_bytes')
  int? get usageBytes;

  GetStorage200ResponseTopMailboxesInner._();

  factory GetStorage200ResponseTopMailboxesInner([void updates(GetStorage200ResponseTopMailboxesInnerBuilder b)]) = _$GetStorage200ResponseTopMailboxesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetStorage200ResponseTopMailboxesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetStorage200ResponseTopMailboxesInner> get serializer => _$GetStorage200ResponseTopMailboxesInnerSerializer();
}

class _$GetStorage200ResponseTopMailboxesInnerSerializer implements PrimitiveSerializer<GetStorage200ResponseTopMailboxesInner> {
  @override
  final Iterable<Type> types = const [GetStorage200ResponseTopMailboxesInner, _$GetStorage200ResponseTopMailboxesInner];

  @override
  final String wireName = r'GetStorage200ResponseTopMailboxesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetStorage200ResponseTopMailboxesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.usageBytes != null) {
      yield r'usage_bytes';
      yield serializers.serialize(
        object.usageBytes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetStorage200ResponseTopMailboxesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetStorage200ResponseTopMailboxesInnerBuilder result,
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
        case r'usage_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.usageBytes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetStorage200ResponseTopMailboxesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetStorage200ResponseTopMailboxesInnerBuilder();
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


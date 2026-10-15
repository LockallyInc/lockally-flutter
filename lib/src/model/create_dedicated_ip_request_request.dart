//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_dedicated_ip_request_request.g.dart';

/// CreateDedicatedIPRequestRequest
///
/// Properties:
/// * [note] 
@BuiltValue()
abstract class CreateDedicatedIPRequestRequest implements Built<CreateDedicatedIPRequestRequest, CreateDedicatedIPRequestRequestBuilder> {
  @BuiltValueField(wireName: r'note')
  String get note;

  CreateDedicatedIPRequestRequest._();

  factory CreateDedicatedIPRequestRequest([void updates(CreateDedicatedIPRequestRequestBuilder b)]) = _$CreateDedicatedIPRequestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateDedicatedIPRequestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateDedicatedIPRequestRequest> get serializer => _$CreateDedicatedIPRequestRequestSerializer();
}

class _$CreateDedicatedIPRequestRequestSerializer implements PrimitiveSerializer<CreateDedicatedIPRequestRequest> {
  @override
  final Iterable<Type> types = const [CreateDedicatedIPRequestRequest, _$CreateDedicatedIPRequestRequest];

  @override
  final String wireName = r'CreateDedicatedIPRequestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateDedicatedIPRequestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'note';
    yield serializers.serialize(
      object.note,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateDedicatedIPRequestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateDedicatedIPRequestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateDedicatedIPRequestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDedicatedIPRequestRequestBuilder();
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


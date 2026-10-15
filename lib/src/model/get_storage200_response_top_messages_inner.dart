//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_storage200_response_top_messages_inner.g.dart';

/// GetStorage200ResponseTopMessagesInner
///
/// Properties:
/// * [sender] 
/// * [subject] 
/// * [sizeBytes] 
/// * [filenames] 
/// * [queuedAt] 
@BuiltValue()
abstract class GetStorage200ResponseTopMessagesInner implements Built<GetStorage200ResponseTopMessagesInner, GetStorage200ResponseTopMessagesInnerBuilder> {
  @BuiltValueField(wireName: r'sender')
  String? get sender;

  @BuiltValueField(wireName: r'subject')
  String? get subject;

  @BuiltValueField(wireName: r'size_bytes')
  int? get sizeBytes;

  @BuiltValueField(wireName: r'filenames')
  BuiltList<String>? get filenames;

  @BuiltValueField(wireName: r'queued_at')
  DateTime? get queuedAt;

  GetStorage200ResponseTopMessagesInner._();

  factory GetStorage200ResponseTopMessagesInner([void updates(GetStorage200ResponseTopMessagesInnerBuilder b)]) = _$GetStorage200ResponseTopMessagesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetStorage200ResponseTopMessagesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetStorage200ResponseTopMessagesInner> get serializer => _$GetStorage200ResponseTopMessagesInnerSerializer();
}

class _$GetStorage200ResponseTopMessagesInnerSerializer implements PrimitiveSerializer<GetStorage200ResponseTopMessagesInner> {
  @override
  final Iterable<Type> types = const [GetStorage200ResponseTopMessagesInner, _$GetStorage200ResponseTopMessagesInner];

  @override
  final String wireName = r'GetStorage200ResponseTopMessagesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetStorage200ResponseTopMessagesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sender != null) {
      yield r'sender';
      yield serializers.serialize(
        object.sender,
        specifiedType: const FullType(String),
      );
    }
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
    if (object.sizeBytes != null) {
      yield r'size_bytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.filenames != null) {
      yield r'filenames';
      yield serializers.serialize(
        object.filenames,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.queuedAt != null) {
      yield r'queued_at';
      yield serializers.serialize(
        object.queuedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetStorage200ResponseTopMessagesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetStorage200ResponseTopMessagesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sender = valueDes;
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'size_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sizeBytes = valueDes;
          break;
        case r'filenames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.filenames.replace(valueDes);
          break;
        case r'queued_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.queuedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetStorage200ResponseTopMessagesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetStorage200ResponseTopMessagesInnerBuilder();
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


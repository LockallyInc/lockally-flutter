//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_directory_activity200_response_data_inner.g.dart';

/// GetDirectoryActivity200ResponseDataInner
///
/// Properties:
/// * [type] 
/// * [message] 
/// * [detail] 
/// * [timestamp] 
@BuiltValue()
abstract class GetDirectoryActivity200ResponseDataInner implements Built<GetDirectoryActivity200ResponseDataInner, GetDirectoryActivity200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'detail')
  String? get detail;

  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  GetDirectoryActivity200ResponseDataInner._();

  factory GetDirectoryActivity200ResponseDataInner([void updates(GetDirectoryActivity200ResponseDataInnerBuilder b)]) = _$GetDirectoryActivity200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDirectoryActivity200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDirectoryActivity200ResponseDataInner> get serializer => _$GetDirectoryActivity200ResponseDataInnerSerializer();
}

class _$GetDirectoryActivity200ResponseDataInnerSerializer implements PrimitiveSerializer<GetDirectoryActivity200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [GetDirectoryActivity200ResponseDataInner, _$GetDirectoryActivity200ResponseDataInner];

  @override
  final String wireName = r'GetDirectoryActivity200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDirectoryActivity200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDirectoryActivity200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetDirectoryActivity200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detail = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetDirectoryActivity200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDirectoryActivity200ResponseDataInnerBuilder();
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


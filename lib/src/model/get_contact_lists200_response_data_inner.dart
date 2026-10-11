//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_contact_lists200_response_data_inner.g.dart';

/// GetContactLists200ResponseDataInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [visibility] 
@BuiltValue()
abstract class GetContactLists200ResponseDataInner implements Built<GetContactLists200ResponseDataInner, GetContactLists200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'visibility')
  String? get visibility;

  GetContactLists200ResponseDataInner._();

  factory GetContactLists200ResponseDataInner([void updates(GetContactLists200ResponseDataInnerBuilder b)]) = _$GetContactLists200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetContactLists200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetContactLists200ResponseDataInner> get serializer => _$GetContactLists200ResponseDataInnerSerializer();
}

class _$GetContactLists200ResponseDataInnerSerializer implements PrimitiveSerializer<GetContactLists200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [GetContactLists200ResponseDataInner, _$GetContactLists200ResponseDataInner];

  @override
  final String wireName = r'GetContactLists200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetContactLists200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetContactLists200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetContactLists200ResponseDataInnerBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibility = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetContactLists200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetContactLists200ResponseDataInnerBuilder();
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


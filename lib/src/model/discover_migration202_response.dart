//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discover_migration202_response.g.dart';

/// DiscoverMigration202Response
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class DiscoverMigration202Response implements Built<DiscoverMigration202Response, DiscoverMigration202ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String get status;

  DiscoverMigration202Response._();

  factory DiscoverMigration202Response([void updates(DiscoverMigration202ResponseBuilder b)]) = _$DiscoverMigration202Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiscoverMigration202ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DiscoverMigration202Response> get serializer => _$DiscoverMigration202ResponseSerializer();
}

class _$DiscoverMigration202ResponseSerializer implements PrimitiveSerializer<DiscoverMigration202Response> {
  @override
  final Iterable<Type> types = const [DiscoverMigration202Response, _$DiscoverMigration202Response];

  @override
  final String wireName = r'DiscoverMigration202Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DiscoverMigration202Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DiscoverMigration202Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DiscoverMigration202ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DiscoverMigration202Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiscoverMigration202ResponseBuilder();
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


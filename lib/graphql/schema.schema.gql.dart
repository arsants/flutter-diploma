// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;
import 'package:katai/graphql/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GLocationInput
    implements Built<GLocationInput, GLocationInputBuilder> {
  GLocationInput._();

  factory GLocationInput([Function(GLocationInputBuilder b) updates]) =
      _$GLocationInput;

  double get longitude;
  double get latitude;
  static Serializer<GLocationInput> get serializer =>
      _$gLocationInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLocationInput.serializer, this)
          as Map<String, dynamic>);
  static GLocationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLocationInput.serializer, json);
}

abstract class GRideInput implements Built<GRideInput, GRideInputBuilder> {
  GRideInput._();

  factory GRideInput([Function(GRideInputBuilder b) updates]) = _$GRideInput;

  int? get timeLimitMinutes;
  GRideTypeEnum get type;
  String? get historicTrackId;
  static Serializer<GRideInput> get serializer => _$gRideInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRideInput.serializer, this)
          as Map<String, dynamic>);
  static GRideInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRideInput.serializer, json);
}

class GRideStatusEnum extends EnumClass {
  const GRideStatusEnum._(String name) : super(name);

  static const GRideStatusEnum CREATED = _$gRideStatusEnumCREATED;

  static const GRideStatusEnum ONGOING = _$gRideStatusEnumONGOING;

  static const GRideStatusEnum FINISHED = _$gRideStatusEnumFINISHED;

  static const GRideStatusEnum DELETED = _$gRideStatusEnumDELETED;

  static Serializer<GRideStatusEnum> get serializer =>
      _$gRideStatusEnumSerializer;
  static BuiltSet<GRideStatusEnum> get values => _$gRideStatusEnumValues;
  static GRideStatusEnum valueOf(String name) => _$gRideStatusEnumValueOf(name);
}

class GRideTypeEnum extends EnumClass {
  const GRideTypeEnum._(String name) : super(name);

  static const GRideTypeEnum REAL_TIME = _$gRideTypeEnumREAL_TIME;

  static const GRideTypeEnum HISTORIC = _$gRideTypeEnumHISTORIC;

  static Serializer<GRideTypeEnum> get serializer => _$gRideTypeEnumSerializer;
  static BuiltSet<GRideTypeEnum> get values => _$gRideTypeEnumValues;
  static GRideTypeEnum valueOf(String name) => _$gRideTypeEnumValueOf(name);
}

abstract class GSocialCamelJSON
    implements Built<GSocialCamelJSON, GSocialCamelJSONBuilder> {
  GSocialCamelJSON._();

  factory GSocialCamelJSON([String? value]) =>
      _$GSocialCamelJSON((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GSocialCamelJSON> get serializer =>
      _i2.DefaultScalarSerializer<GSocialCamelJSON>(
          (Object serialized) => GSocialCamelJSON((serialized as String?)));
}

class GTrackOrderEnum extends EnumClass {
  const GTrackOrderEnum._(String name) : super(name);

  static const GTrackOrderEnum START_TIME_ASC = _$gTrackOrderEnumSTART_TIME_ASC;

  static const GTrackOrderEnum START_TIME_DESC =
      _$gTrackOrderEnumSTART_TIME_DESC;

  static const GTrackOrderEnum DISTANCE_ASC = _$gTrackOrderEnumDISTANCE_ASC;

  static const GTrackOrderEnum DISTANCE_DESC = _$gTrackOrderEnumDISTANCE_DESC;

  static Serializer<GTrackOrderEnum> get serializer =>
      _$gTrackOrderEnumSerializer;
  static BuiltSet<GTrackOrderEnum> get values => _$gTrackOrderEnumValues;
  static GTrackOrderEnum valueOf(String name) => _$gTrackOrderEnumValueOf(name);
}

abstract class GUpdateLocationInput
    implements Built<GUpdateLocationInput, GUpdateLocationInputBuilder> {
  GUpdateLocationInput._();

  factory GUpdateLocationInput(
          [Function(GUpdateLocationInputBuilder b) updates]) =
      _$GUpdateLocationInput;

  GLocationInput get location;
  static Serializer<GUpdateLocationInput> get serializer =>
      _$gUpdateLocationInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateLocationInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateLocationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateLocationInput.serializer, json);
}

abstract class GUpdateProfileInput
    implements Built<GUpdateProfileInput, GUpdateProfileInputBuilder> {
  GUpdateProfileInput._();

  factory GUpdateProfileInput(
      [Function(GUpdateProfileInputBuilder b) updates]) = _$GUpdateProfileInput;

  String? get username;
  String? get firstName;
  String? get lastName;
  String? get telegram;
  bool? get isPublic;
  static Serializer<GUpdateProfileInput> get serializer =>
      _$gUpdateProfileInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateProfileInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateProfileInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateProfileInput.serializer, json);
}

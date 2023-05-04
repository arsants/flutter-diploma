// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:katai/graphql/serializers.gql.dart' as _i1;

part 'Competition.var.gql.g.dart';

abstract class GGetRideVars
    implements Built<GGetRideVars, GGetRideVarsBuilder> {
  GGetRideVars._();

  factory GGetRideVars([Function(GGetRideVarsBuilder b) updates]) =
      _$GGetRideVars;

  String get id;
  static Serializer<GGetRideVars> get serializer => _$gGetRideVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRideVars.serializer, this)
          as Map<String, dynamic>);
  static GGetRideVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetRideVars.serializer, json);
}

abstract class GCreateHistoricRideVars
    implements Built<GCreateHistoricRideVars, GCreateHistoricRideVarsBuilder> {
  GCreateHistoricRideVars._();

  factory GCreateHistoricRideVars(
          [Function(GCreateHistoricRideVarsBuilder b) updates]) =
      _$GCreateHistoricRideVars;

  String? get historicTrackId;
  static Serializer<GCreateHistoricRideVars> get serializer =>
      _$gCreateHistoricRideVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateHistoricRideVars.serializer, this)
          as Map<String, dynamic>);
  static GCreateHistoricRideVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateHistoricRideVars.serializer, json);
}

abstract class GCreateRideVars
    implements Built<GCreateRideVars, GCreateRideVarsBuilder> {
  GCreateRideVars._();

  factory GCreateRideVars([Function(GCreateRideVarsBuilder b) updates]) =
      _$GCreateRideVars;

  int get duration;
  static Serializer<GCreateRideVars> get serializer =>
      _$gCreateRideVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateRideVars.serializer, this)
          as Map<String, dynamic>);
  static GCreateRideVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateRideVars.serializer, json);
}

abstract class GStartRideVars
    implements Built<GStartRideVars, GStartRideVarsBuilder> {
  GStartRideVars._();

  factory GStartRideVars([Function(GStartRideVarsBuilder b) updates]) =
      _$GStartRideVars;

  String get id;
  int get sec;
  static Serializer<GStartRideVars> get serializer =>
      _$gStartRideVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GStartRideVars.serializer, this)
          as Map<String, dynamic>);
  static GStartRideVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GStartRideVars.serializer, json);
}

abstract class GLeaveRideVars
    implements Built<GLeaveRideVars, GLeaveRideVarsBuilder> {
  GLeaveRideVars._();

  factory GLeaveRideVars([Function(GLeaveRideVarsBuilder b) updates]) =
      _$GLeaveRideVars;

  String get id;
  static Serializer<GLeaveRideVars> get serializer =>
      _$gLeaveRideVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLeaveRideVars.serializer, this)
          as Map<String, dynamic>);
  static GLeaveRideVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLeaveRideVars.serializer, json);
}

abstract class GJoinRideVars
    implements Built<GJoinRideVars, GJoinRideVarsBuilder> {
  GJoinRideVars._();

  factory GJoinRideVars([Function(GJoinRideVarsBuilder b) updates]) =
      _$GJoinRideVars;

  String get code;
  static Serializer<GJoinRideVars> get serializer => _$gJoinRideVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GJoinRideVars.serializer, this)
          as Map<String, dynamic>);
  static GJoinRideVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GJoinRideVars.serializer, json);
}

abstract class GRideNodeFieldsVars
    implements Built<GRideNodeFieldsVars, GRideNodeFieldsVarsBuilder> {
  GRideNodeFieldsVars._();

  factory GRideNodeFieldsVars(
      [Function(GRideNodeFieldsVarsBuilder b) updates]) = _$GRideNodeFieldsVars;

  static Serializer<GRideNodeFieldsVars> get serializer =>
      _$gRideNodeFieldsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRideNodeFieldsVars.serializer, this)
          as Map<String, dynamic>);
  static GRideNodeFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRideNodeFieldsVars.serializer, json);
}

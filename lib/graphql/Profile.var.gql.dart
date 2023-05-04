// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:katai/graphql/schema.schema.gql.dart' as _i2;
import 'package:katai/graphql/serializers.gql.dart' as _i1;

part 'Profile.var.gql.g.dart';

abstract class GGetMyProfileVars
    implements Built<GGetMyProfileVars, GGetMyProfileVarsBuilder> {
  GGetMyProfileVars._();

  factory GGetMyProfileVars([Function(GGetMyProfileVarsBuilder b) updates]) =
      _$GGetMyProfileVars;

  static Serializer<GGetMyProfileVars> get serializer =>
      _$gGetMyProfileVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetMyProfileVars.serializer, this)
          as Map<String, dynamic>);
  static GGetMyProfileVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetMyProfileVars.serializer, json);
}

abstract class GGetMyTracksVars
    implements Built<GGetMyTracksVars, GGetMyTracksVarsBuilder> {
  GGetMyTracksVars._();

  factory GGetMyTracksVars([Function(GGetMyTracksVarsBuilder b) updates]) =
      _$GGetMyTracksVars;

  int get timeLimitMinutes;
  _i2.GTrackOrderEnum get orderBy;
  static Serializer<GGetMyTracksVars> get serializer =>
      _$gGetMyTracksVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetMyTracksVars.serializer, this)
          as Map<String, dynamic>);
  static GGetMyTracksVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetMyTracksVars.serializer, json);
}

abstract class GGetUserTracksVars
    implements Built<GGetUserTracksVars, GGetUserTracksVarsBuilder> {
  GGetUserTracksVars._();

  factory GGetUserTracksVars([Function(GGetUserTracksVarsBuilder b) updates]) =
      _$GGetUserTracksVars;

  String get username;
  int get timeLimitMinutes;
  _i2.GTrackOrderEnum get orderBy;
  static Serializer<GGetUserTracksVars> get serializer =>
      _$gGetUserTracksVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserTracksVars.serializer, this)
          as Map<String, dynamic>);
  static GGetUserTracksVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserTracksVars.serializer, json);
}

abstract class GGetUserProfileVars
    implements Built<GGetUserProfileVars, GGetUserProfileVarsBuilder> {
  GGetUserProfileVars._();

  factory GGetUserProfileVars(
      [Function(GGetUserProfileVarsBuilder b) updates]) = _$GGetUserProfileVars;

  String get username;
  static Serializer<GGetUserProfileVars> get serializer =>
      _$gGetUserProfileVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserProfileVars.serializer, this)
          as Map<String, dynamic>);
  static GGetUserProfileVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserProfileVars.serializer, json);
}

abstract class GUpdateProfileVars
    implements Built<GUpdateProfileVars, GUpdateProfileVarsBuilder> {
  GUpdateProfileVars._();

  factory GUpdateProfileVars([Function(GUpdateProfileVarsBuilder b) updates]) =
      _$GUpdateProfileVars;

  String? get firstName;
  String? get lastName;
  String? get username;
  String? get telegram;
  static Serializer<GUpdateProfileVars> get serializer =>
      _$gUpdateProfileVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateProfileVars.serializer, this)
          as Map<String, dynamic>);
  static GUpdateProfileVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateProfileVars.serializer, json);
}

abstract class GUpdatePublicVars
    implements Built<GUpdatePublicVars, GUpdatePublicVarsBuilder> {
  GUpdatePublicVars._();

  factory GUpdatePublicVars([Function(GUpdatePublicVarsBuilder b) updates]) =
      _$GUpdatePublicVars;

  bool? get isPublic;
  static Serializer<GUpdatePublicVars> get serializer =>
      _$gUpdatePublicVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdatePublicVars.serializer, this)
          as Map<String, dynamic>);
  static GUpdatePublicVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdatePublicVars.serializer, json);
}

abstract class GUserNodeFieldsVars
    implements Built<GUserNodeFieldsVars, GUserNodeFieldsVarsBuilder> {
  GUserNodeFieldsVars._();

  factory GUserNodeFieldsVars(
      [Function(GUserNodeFieldsVarsBuilder b) updates]) = _$GUserNodeFieldsVars;

  static Serializer<GUserNodeFieldsVars> get serializer =>
      _$gUserNodeFieldsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserNodeFieldsVars.serializer, this)
          as Map<String, dynamic>);
  static GUserNodeFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserNodeFieldsVars.serializer, json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:katai/graphql/serializers.gql.dart' as _i1;

part 'Auth.var.gql.g.dart';

abstract class GCredAuthVars
    implements Built<GCredAuthVars, GCredAuthVarsBuilder> {
  GCredAuthVars._();

  factory GCredAuthVars([Function(GCredAuthVarsBuilder b) updates]) =
      _$GCredAuthVars;

  String get username;
  String get password;
  static Serializer<GCredAuthVars> get serializer => _$gCredAuthVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCredAuthVars.serializer, this)
          as Map<String, dynamic>);
  static GCredAuthVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCredAuthVars.serializer, json);
}

abstract class GSocialAuthVars
    implements Built<GSocialAuthVars, GSocialAuthVarsBuilder> {
  GSocialAuthVars._();

  factory GSocialAuthVars([Function(GSocialAuthVarsBuilder b) updates]) =
      _$GSocialAuthVars;

  String get accessToken;
  String get provider;
  static Serializer<GSocialAuthVars> get serializer =>
      _$gSocialAuthVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSocialAuthVars.serializer, this)
          as Map<String, dynamic>);
  static GSocialAuthVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSocialAuthVars.serializer, json);
}

abstract class GRegistrationVars
    implements Built<GRegistrationVars, GRegistrationVarsBuilder> {
  GRegistrationVars._();

  factory GRegistrationVars([Function(GRegistrationVarsBuilder b) updates]) =
      _$GRegistrationVars;

  String get username;
  String get password1;
  String get password2;
  static Serializer<GRegistrationVars> get serializer =>
      _$gRegistrationVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRegistrationVars.serializer, this)
          as Map<String, dynamic>);
  static GRegistrationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRegistrationVars.serializer, json);
}

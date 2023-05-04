// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:katai/graphql/serializers.gql.dart' as _i1;

part 'Auth.data.gql.g.dart';

abstract class GCredAuthData
    implements Built<GCredAuthData, GCredAuthDataBuilder> {
  GCredAuthData._();

  factory GCredAuthData([Function(GCredAuthDataBuilder b) updates]) =
      _$GCredAuthData;

  static void _initializeBuilder(GCredAuthDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCredAuthData_tokenAuth? get tokenAuth;
  static Serializer<GCredAuthData> get serializer => _$gCredAuthDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCredAuthData.serializer, this)
          as Map<String, dynamic>);
  static GCredAuthData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCredAuthData.serializer, json);
}

abstract class GCredAuthData_tokenAuth
    implements Built<GCredAuthData_tokenAuth, GCredAuthData_tokenAuthBuilder> {
  GCredAuthData_tokenAuth._();

  factory GCredAuthData_tokenAuth(
          [Function(GCredAuthData_tokenAuthBuilder b) updates]) =
      _$GCredAuthData_tokenAuth;

  static void _initializeBuilder(GCredAuthData_tokenAuthBuilder b) =>
      b..G__typename = 'TokenAuth';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  static Serializer<GCredAuthData_tokenAuth> get serializer =>
      _$gCredAuthDataTokenAuthSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCredAuthData_tokenAuth.serializer, this)
          as Map<String, dynamic>);
  static GCredAuthData_tokenAuth? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCredAuthData_tokenAuth.serializer, json);
}

abstract class GSocialAuthData
    implements Built<GSocialAuthData, GSocialAuthDataBuilder> {
  GSocialAuthData._();

  factory GSocialAuthData([Function(GSocialAuthDataBuilder b) updates]) =
      _$GSocialAuthData;

  static void _initializeBuilder(GSocialAuthDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSocialAuthData_socialAuth? get socialAuth;
  static Serializer<GSocialAuthData> get serializer =>
      _$gSocialAuthDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSocialAuthData.serializer, this)
          as Map<String, dynamic>);
  static GSocialAuthData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSocialAuthData.serializer, json);
}

abstract class GSocialAuthData_socialAuth
    implements
        Built<GSocialAuthData_socialAuth, GSocialAuthData_socialAuthBuilder> {
  GSocialAuthData_socialAuth._();

  factory GSocialAuthData_socialAuth(
          [Function(GSocialAuthData_socialAuthBuilder b) updates]) =
      _$GSocialAuthData_socialAuth;

  static void _initializeBuilder(GSocialAuthData_socialAuthBuilder b) =>
      b..G__typename = 'SocialAuth';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  static Serializer<GSocialAuthData_socialAuth> get serializer =>
      _$gSocialAuthDataSocialAuthSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GSocialAuthData_socialAuth.serializer, this) as Map<String, dynamic>);
  static GSocialAuthData_socialAuth? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GSocialAuthData_socialAuth.serializer, json);
}

abstract class GRegistrationData
    implements Built<GRegistrationData, GRegistrationDataBuilder> {
  GRegistrationData._();

  factory GRegistrationData([Function(GRegistrationDataBuilder b) updates]) =
      _$GRegistrationData;

  static void _initializeBuilder(GRegistrationDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRegistrationData_register? get register;
  static Serializer<GRegistrationData> get serializer =>
      _$gRegistrationDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRegistrationData.serializer, this)
          as Map<String, dynamic>);
  static GRegistrationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRegistrationData.serializer, json);
}

abstract class GRegistrationData_register
    implements
        Built<GRegistrationData_register, GRegistrationData_registerBuilder> {
  GRegistrationData_register._();

  factory GRegistrationData_register(
          [Function(GRegistrationData_registerBuilder b) updates]) =
      _$GRegistrationData_register;

  static void _initializeBuilder(GRegistrationData_registerBuilder b) =>
      b..G__typename = 'Register';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  static Serializer<GRegistrationData_register> get serializer =>
      _$gRegistrationDataRegisterSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GRegistrationData_register.serializer, this) as Map<String, dynamic>);
  static GRegistrationData_register? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRegistrationData_register.serializer, json);
}

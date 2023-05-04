// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:katai/graphql/Auth.ast.gql.dart' as _i5;
import 'package:katai/graphql/Auth.data.gql.dart' as _i2;
import 'package:katai/graphql/Auth.var.gql.dart' as _i3;
import 'package:katai/graphql/serializers.gql.dart' as _i6;

part 'Auth.req.gql.g.dart';

abstract class GCredAuthReq
    implements
        Built<GCredAuthReq, GCredAuthReqBuilder>,
        _i1.OperationRequest<_i2.GCredAuthData, _i3.GCredAuthVars> {
  GCredAuthReq._();

  factory GCredAuthReq([Function(GCredAuthReqBuilder b) updates]) =
      _$GCredAuthReq;

  static void _initializeBuilder(GCredAuthReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CredAuth')
    ..executeOnListen = true;
  _i3.GCredAuthVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCredAuthData? Function(_i2.GCredAuthData?, _i2.GCredAuthData?)?
      get updateResult;
  _i2.GCredAuthData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCredAuthData? parseData(Map<String, dynamic> json) =>
      _i2.GCredAuthData.fromJson(json);
  static Serializer<GCredAuthReq> get serializer => _$gCredAuthReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCredAuthReq.serializer, this)
          as Map<String, dynamic>);
  static GCredAuthReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCredAuthReq.serializer, json);
}

abstract class GSocialAuthReq
    implements
        Built<GSocialAuthReq, GSocialAuthReqBuilder>,
        _i1.OperationRequest<_i2.GSocialAuthData, _i3.GSocialAuthVars> {
  GSocialAuthReq._();

  factory GSocialAuthReq([Function(GSocialAuthReqBuilder b) updates]) =
      _$GSocialAuthReq;

  static void _initializeBuilder(GSocialAuthReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'SocialAuth')
    ..executeOnListen = true;
  _i3.GSocialAuthVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GSocialAuthData? Function(_i2.GSocialAuthData?, _i2.GSocialAuthData?)?
      get updateResult;
  _i2.GSocialAuthData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GSocialAuthData? parseData(Map<String, dynamic> json) =>
      _i2.GSocialAuthData.fromJson(json);
  static Serializer<GSocialAuthReq> get serializer =>
      _$gSocialAuthReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GSocialAuthReq.serializer, this)
          as Map<String, dynamic>);
  static GSocialAuthReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GSocialAuthReq.serializer, json);
}

abstract class GRegistrationReq
    implements
        Built<GRegistrationReq, GRegistrationReqBuilder>,
        _i1.OperationRequest<_i2.GRegistrationData, _i3.GRegistrationVars> {
  GRegistrationReq._();

  factory GRegistrationReq([Function(GRegistrationReqBuilder b) updates]) =
      _$GRegistrationReq;

  static void _initializeBuilder(GRegistrationReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'Registration')
    ..executeOnListen = true;
  _i3.GRegistrationVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRegistrationData? Function(
      _i2.GRegistrationData?, _i2.GRegistrationData?)? get updateResult;
  _i2.GRegistrationData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRegistrationData? parseData(Map<String, dynamic> json) =>
      _i2.GRegistrationData.fromJson(json);
  static Serializer<GRegistrationReq> get serializer =>
      _$gRegistrationReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRegistrationReq.serializer, this)
          as Map<String, dynamic>);
  static GRegistrationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRegistrationReq.serializer, json);
}

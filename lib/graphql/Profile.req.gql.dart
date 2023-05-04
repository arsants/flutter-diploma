// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:katai/graphql/Profile.ast.gql.dart' as _i5;
import 'package:katai/graphql/Profile.data.gql.dart' as _i2;
import 'package:katai/graphql/Profile.var.gql.dart' as _i3;
import 'package:katai/graphql/serializers.gql.dart' as _i6;

part 'Profile.req.gql.g.dart';

abstract class GGetMyProfileReq
    implements
        Built<GGetMyProfileReq, GGetMyProfileReqBuilder>,
        _i1.OperationRequest<_i2.GGetMyProfileData, _i3.GGetMyProfileVars> {
  GGetMyProfileReq._();

  factory GGetMyProfileReq([Function(GGetMyProfileReqBuilder b) updates]) =
      _$GGetMyProfileReq;

  static void _initializeBuilder(GGetMyProfileReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetMyProfile')
    ..executeOnListen = true;
  _i3.GGetMyProfileVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetMyProfileData? Function(
      _i2.GGetMyProfileData?, _i2.GGetMyProfileData?)? get updateResult;
  _i2.GGetMyProfileData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetMyProfileData? parseData(Map<String, dynamic> json) =>
      _i2.GGetMyProfileData.fromJson(json);
  static Serializer<GGetMyProfileReq> get serializer =>
      _$gGetMyProfileReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetMyProfileReq.serializer, this)
          as Map<String, dynamic>);
  static GGetMyProfileReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetMyProfileReq.serializer, json);
}

abstract class GGetMyTracksReq
    implements
        Built<GGetMyTracksReq, GGetMyTracksReqBuilder>,
        _i1.OperationRequest<_i2.GGetMyTracksData, _i3.GGetMyTracksVars> {
  GGetMyTracksReq._();

  factory GGetMyTracksReq([Function(GGetMyTracksReqBuilder b) updates]) =
      _$GGetMyTracksReq;

  static void _initializeBuilder(GGetMyTracksReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetMyTracks')
    ..executeOnListen = true;
  _i3.GGetMyTracksVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetMyTracksData? Function(_i2.GGetMyTracksData?, _i2.GGetMyTracksData?)?
      get updateResult;
  _i2.GGetMyTracksData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetMyTracksData? parseData(Map<String, dynamic> json) =>
      _i2.GGetMyTracksData.fromJson(json);
  static Serializer<GGetMyTracksReq> get serializer =>
      _$gGetMyTracksReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetMyTracksReq.serializer, this)
          as Map<String, dynamic>);
  static GGetMyTracksReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetMyTracksReq.serializer, json);
}

abstract class GGetUserTracksReq
    implements
        Built<GGetUserTracksReq, GGetUserTracksReqBuilder>,
        _i1.OperationRequest<_i2.GGetUserTracksData, _i3.GGetUserTracksVars> {
  GGetUserTracksReq._();

  factory GGetUserTracksReq([Function(GGetUserTracksReqBuilder b) updates]) =
      _$GGetUserTracksReq;

  static void _initializeBuilder(GGetUserTracksReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetUserTracks')
    ..executeOnListen = true;
  _i3.GGetUserTracksVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetUserTracksData? Function(
      _i2.GGetUserTracksData?, _i2.GGetUserTracksData?)? get updateResult;
  _i2.GGetUserTracksData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetUserTracksData? parseData(Map<String, dynamic> json) =>
      _i2.GGetUserTracksData.fromJson(json);
  static Serializer<GGetUserTracksReq> get serializer =>
      _$gGetUserTracksReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetUserTracksReq.serializer, this)
          as Map<String, dynamic>);
  static GGetUserTracksReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetUserTracksReq.serializer, json);
}

abstract class GGetUserProfileReq
    implements
        Built<GGetUserProfileReq, GGetUserProfileReqBuilder>,
        _i1.OperationRequest<_i2.GGetUserProfileData, _i3.GGetUserProfileVars> {
  GGetUserProfileReq._();

  factory GGetUserProfileReq([Function(GGetUserProfileReqBuilder b) updates]) =
      _$GGetUserProfileReq;

  static void _initializeBuilder(GGetUserProfileReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetUserProfile')
    ..executeOnListen = true;
  _i3.GGetUserProfileVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetUserProfileData? Function(
      _i2.GGetUserProfileData?, _i2.GGetUserProfileData?)? get updateResult;
  _i2.GGetUserProfileData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetUserProfileData? parseData(Map<String, dynamic> json) =>
      _i2.GGetUserProfileData.fromJson(json);
  static Serializer<GGetUserProfileReq> get serializer =>
      _$gGetUserProfileReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetUserProfileReq.serializer, this)
          as Map<String, dynamic>);
  static GGetUserProfileReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetUserProfileReq.serializer, json);
}

abstract class GUpdateProfileReq
    implements
        Built<GUpdateProfileReq, GUpdateProfileReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateProfileData, _i3.GUpdateProfileVars> {
  GUpdateProfileReq._();

  factory GUpdateProfileReq([Function(GUpdateProfileReqBuilder b) updates]) =
      _$GUpdateProfileReq;

  static void _initializeBuilder(GUpdateProfileReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'UpdateProfile')
    ..executeOnListen = true;
  _i3.GUpdateProfileVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GUpdateProfileData? Function(
      _i2.GUpdateProfileData?, _i2.GUpdateProfileData?)? get updateResult;
  _i2.GUpdateProfileData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GUpdateProfileData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateProfileData.fromJson(json);
  static Serializer<GUpdateProfileReq> get serializer =>
      _$gUpdateProfileReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GUpdateProfileReq.serializer, this)
          as Map<String, dynamic>);
  static GUpdateProfileReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GUpdateProfileReq.serializer, json);
}

abstract class GUpdatePublicReq
    implements
        Built<GUpdatePublicReq, GUpdatePublicReqBuilder>,
        _i1.OperationRequest<_i2.GUpdatePublicData, _i3.GUpdatePublicVars> {
  GUpdatePublicReq._();

  factory GUpdatePublicReq([Function(GUpdatePublicReqBuilder b) updates]) =
      _$GUpdatePublicReq;

  static void _initializeBuilder(GUpdatePublicReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'UpdatePublic')
    ..executeOnListen = true;
  _i3.GUpdatePublicVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GUpdatePublicData? Function(
      _i2.GUpdatePublicData?, _i2.GUpdatePublicData?)? get updateResult;
  _i2.GUpdatePublicData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GUpdatePublicData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdatePublicData.fromJson(json);
  static Serializer<GUpdatePublicReq> get serializer =>
      _$gUpdatePublicReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GUpdatePublicReq.serializer, this)
          as Map<String, dynamic>);
  static GUpdatePublicReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GUpdatePublicReq.serializer, json);
}

abstract class GUserNodeFieldsReq
    implements
        Built<GUserNodeFieldsReq, GUserNodeFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GUserNodeFieldsData, _i3.GUserNodeFieldsVars> {
  GUserNodeFieldsReq._();

  factory GUserNodeFieldsReq([Function(GUserNodeFieldsReqBuilder b) updates]) =
      _$GUserNodeFieldsReq;

  static void _initializeBuilder(GUserNodeFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'UserNodeFields';
  _i3.GUserNodeFieldsVars get vars;
  _i7.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GUserNodeFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GUserNodeFieldsData.fromJson(json);
  static Serializer<GUserNodeFieldsReq> get serializer =>
      _$gUserNodeFieldsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GUserNodeFieldsReq.serializer, this)
          as Map<String, dynamic>);
  static GUserNodeFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GUserNodeFieldsReq.serializer, json);
}

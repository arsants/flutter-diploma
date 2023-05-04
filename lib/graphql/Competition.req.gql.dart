// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:katai/graphql/Competition.ast.gql.dart' as _i5;
import 'package:katai/graphql/Competition.data.gql.dart' as _i2;
import 'package:katai/graphql/Competition.var.gql.dart' as _i3;
import 'package:katai/graphql/serializers.gql.dart' as _i6;

part 'Competition.req.gql.g.dart';

abstract class GGetRideReq
    implements
        Built<GGetRideReq, GGetRideReqBuilder>,
        _i1.OperationRequest<_i2.GGetRideData, _i3.GGetRideVars> {
  GGetRideReq._();

  factory GGetRideReq([Function(GGetRideReqBuilder b) updates]) = _$GGetRideReq;

  static void _initializeBuilder(GGetRideReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetRide')
    ..executeOnListen = true;
  _i3.GGetRideVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetRideData? Function(_i2.GGetRideData?, _i2.GGetRideData?)?
      get updateResult;
  _i2.GGetRideData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetRideData? parseData(Map<String, dynamic> json) =>
      _i2.GGetRideData.fromJson(json);
  static Serializer<GGetRideReq> get serializer => _$gGetRideReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetRideReq.serializer, this)
          as Map<String, dynamic>);
  static GGetRideReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetRideReq.serializer, json);
}

abstract class GCreateHistoricRideReq
    implements
        Built<GCreateHistoricRideReq, GCreateHistoricRideReqBuilder>,
        _i1.OperationRequest<_i2.GCreateHistoricRideData,
            _i3.GCreateHistoricRideVars> {
  GCreateHistoricRideReq._();

  factory GCreateHistoricRideReq(
          [Function(GCreateHistoricRideReqBuilder b) updates]) =
      _$GCreateHistoricRideReq;

  static void _initializeBuilder(GCreateHistoricRideReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'CreateHistoricRide')
    ..executeOnListen = true;
  _i3.GCreateHistoricRideVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCreateHistoricRideData? Function(
          _i2.GCreateHistoricRideData?, _i2.GCreateHistoricRideData?)?
      get updateResult;
  _i2.GCreateHistoricRideData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCreateHistoricRideData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateHistoricRideData.fromJson(json);
  static Serializer<GCreateHistoricRideReq> get serializer =>
      _$gCreateHistoricRideReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCreateHistoricRideReq.serializer, this)
          as Map<String, dynamic>);
  static GCreateHistoricRideReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCreateHistoricRideReq.serializer, json);
}

abstract class GCreateRideReq
    implements
        Built<GCreateRideReq, GCreateRideReqBuilder>,
        _i1.OperationRequest<_i2.GCreateRideData, _i3.GCreateRideVars> {
  GCreateRideReq._();

  factory GCreateRideReq([Function(GCreateRideReqBuilder b) updates]) =
      _$GCreateRideReq;

  static void _initializeBuilder(GCreateRideReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CreateRide')
    ..executeOnListen = true;
  _i3.GCreateRideVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCreateRideData? Function(_i2.GCreateRideData?, _i2.GCreateRideData?)?
      get updateResult;
  _i2.GCreateRideData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCreateRideData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateRideData.fromJson(json);
  static Serializer<GCreateRideReq> get serializer =>
      _$gCreateRideReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCreateRideReq.serializer, this)
          as Map<String, dynamic>);
  static GCreateRideReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCreateRideReq.serializer, json);
}

abstract class GStartRideReq
    implements
        Built<GStartRideReq, GStartRideReqBuilder>,
        _i1.OperationRequest<_i2.GStartRideData, _i3.GStartRideVars> {
  GStartRideReq._();

  factory GStartRideReq([Function(GStartRideReqBuilder b) updates]) =
      _$GStartRideReq;

  static void _initializeBuilder(GStartRideReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'StartRide')
    ..executeOnListen = true;
  _i3.GStartRideVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GStartRideData? Function(_i2.GStartRideData?, _i2.GStartRideData?)?
      get updateResult;
  _i2.GStartRideData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GStartRideData? parseData(Map<String, dynamic> json) =>
      _i2.GStartRideData.fromJson(json);
  static Serializer<GStartRideReq> get serializer => _$gStartRideReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GStartRideReq.serializer, this)
          as Map<String, dynamic>);
  static GStartRideReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GStartRideReq.serializer, json);
}

abstract class GLeaveRideReq
    implements
        Built<GLeaveRideReq, GLeaveRideReqBuilder>,
        _i1.OperationRequest<_i2.GLeaveRideData, _i3.GLeaveRideVars> {
  GLeaveRideReq._();

  factory GLeaveRideReq([Function(GLeaveRideReqBuilder b) updates]) =
      _$GLeaveRideReq;

  static void _initializeBuilder(GLeaveRideReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'LeaveRide')
    ..executeOnListen = true;
  _i3.GLeaveRideVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GLeaveRideData? Function(_i2.GLeaveRideData?, _i2.GLeaveRideData?)?
      get updateResult;
  _i2.GLeaveRideData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GLeaveRideData? parseData(Map<String, dynamic> json) =>
      _i2.GLeaveRideData.fromJson(json);
  static Serializer<GLeaveRideReq> get serializer => _$gLeaveRideReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GLeaveRideReq.serializer, this)
          as Map<String, dynamic>);
  static GLeaveRideReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GLeaveRideReq.serializer, json);
}

abstract class GJoinRideReq
    implements
        Built<GJoinRideReq, GJoinRideReqBuilder>,
        _i1.OperationRequest<_i2.GJoinRideData, _i3.GJoinRideVars> {
  GJoinRideReq._();

  factory GJoinRideReq([Function(GJoinRideReqBuilder b) updates]) =
      _$GJoinRideReq;

  static void _initializeBuilder(GJoinRideReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'JoinRide')
    ..executeOnListen = true;
  _i3.GJoinRideVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GJoinRideData? Function(_i2.GJoinRideData?, _i2.GJoinRideData?)?
      get updateResult;
  _i2.GJoinRideData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GJoinRideData? parseData(Map<String, dynamic> json) =>
      _i2.GJoinRideData.fromJson(json);
  static Serializer<GJoinRideReq> get serializer => _$gJoinRideReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GJoinRideReq.serializer, this)
          as Map<String, dynamic>);
  static GJoinRideReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GJoinRideReq.serializer, json);
}

abstract class GRideNodeFieldsReq
    implements
        Built<GRideNodeFieldsReq, GRideNodeFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GRideNodeFieldsData, _i3.GRideNodeFieldsVars> {
  GRideNodeFieldsReq._();

  factory GRideNodeFieldsReq([Function(GRideNodeFieldsReqBuilder b) updates]) =
      _$GRideNodeFieldsReq;

  static void _initializeBuilder(GRideNodeFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'RideNodeFields';
  _i3.GRideNodeFieldsVars get vars;
  _i7.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GRideNodeFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GRideNodeFieldsData.fromJson(json);
  static Serializer<GRideNodeFieldsReq> get serializer =>
      _$gRideNodeFieldsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRideNodeFieldsReq.serializer, this)
          as Map<String, dynamic>);
  static GRideNodeFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRideNodeFieldsReq.serializer, json);
}

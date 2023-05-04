// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:katai/graphql/LeaderBoard.ast.gql.dart' as _i5;
import 'package:katai/graphql/LeaderBoard.data.gql.dart' as _i2;
import 'package:katai/graphql/LeaderBoard.var.gql.dart' as _i3;
import 'package:katai/graphql/serializers.gql.dart' as _i6;

part 'LeaderBoard.req.gql.g.dart';

abstract class GGetLeaderBoardReq
    implements
        Built<GGetLeaderBoardReq, GGetLeaderBoardReqBuilder>,
        _i1.OperationRequest<_i2.GGetLeaderBoardData, _i3.GGetLeaderBoardVars> {
  GGetLeaderBoardReq._();

  factory GGetLeaderBoardReq([Function(GGetLeaderBoardReqBuilder b) updates]) =
      _$GGetLeaderBoardReq;

  static void _initializeBuilder(GGetLeaderBoardReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetLeaderBoard')
    ..executeOnListen = true;
  _i3.GGetLeaderBoardVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetLeaderBoardData? Function(
      _i2.GGetLeaderBoardData?, _i2.GGetLeaderBoardData?)? get updateResult;
  _i2.GGetLeaderBoardData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetLeaderBoardData? parseData(Map<String, dynamic> json) =>
      _i2.GGetLeaderBoardData.fromJson(json);
  static Serializer<GGetLeaderBoardReq> get serializer =>
      _$gGetLeaderBoardReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetLeaderBoardReq.serializer, this)
          as Map<String, dynamic>);
  static GGetLeaderBoardReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetLeaderBoardReq.serializer, json);
}

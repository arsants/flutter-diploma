// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:katai/graphql/Map.ast.gql.dart' as _i5;
import 'package:katai/graphql/Map.data.gql.dart' as _i2;
import 'package:katai/graphql/Map.var.gql.dart' as _i3;
import 'package:katai/graphql/serializers.gql.dart' as _i6;

part 'Map.req.gql.g.dart';

abstract class GupdateCurrentLocationReq
    implements
        Built<GupdateCurrentLocationReq, GupdateCurrentLocationReqBuilder>,
        _i1.OperationRequest<_i2.GupdateCurrentLocationData,
            _i3.GupdateCurrentLocationVars> {
  GupdateCurrentLocationReq._();

  factory GupdateCurrentLocationReq(
          [Function(GupdateCurrentLocationReqBuilder b) updates]) =
      _$GupdateCurrentLocationReq;

  static void _initializeBuilder(GupdateCurrentLocationReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'updateCurrentLocation')
    ..executeOnListen = true;
  _i3.GupdateCurrentLocationVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GupdateCurrentLocationData? Function(
          _i2.GupdateCurrentLocationData?, _i2.GupdateCurrentLocationData?)?
      get updateResult;
  _i2.GupdateCurrentLocationData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GupdateCurrentLocationData? parseData(Map<String, dynamic> json) =>
      _i2.GupdateCurrentLocationData.fromJson(json);
  static Serializer<GupdateCurrentLocationReq> get serializer =>
      _$gupdateCurrentLocationReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GupdateCurrentLocationReq.serializer, this)
          as Map<String, dynamic>);
  static GupdateCurrentLocationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GupdateCurrentLocationReq.serializer, json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:katai/graphql/serializers.gql.dart' as _i1;

part 'LeaderBoard.var.gql.g.dart';

abstract class GGetLeaderBoardVars
    implements Built<GGetLeaderBoardVars, GGetLeaderBoardVarsBuilder> {
  GGetLeaderBoardVars._();

  factory GGetLeaderBoardVars(
      [Function(GGetLeaderBoardVarsBuilder b) updates]) = _$GGetLeaderBoardVars;

  int get time;
  static Serializer<GGetLeaderBoardVars> get serializer =>
      _$gGetLeaderBoardVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetLeaderBoardVars.serializer, this)
          as Map<String, dynamic>);
  static GGetLeaderBoardVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetLeaderBoardVars.serializer, json);
}

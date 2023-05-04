// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:katai/graphql/schema.schema.gql.dart' as _i1;
import 'package:katai/graphql/serializers.gql.dart' as _i2;

part 'Map.var.gql.g.dart';

abstract class GupdateCurrentLocationVars
    implements
        Built<GupdateCurrentLocationVars, GupdateCurrentLocationVarsBuilder> {
  GupdateCurrentLocationVars._();

  factory GupdateCurrentLocationVars(
          [Function(GupdateCurrentLocationVarsBuilder b) updates]) =
      _$GupdateCurrentLocationVars;

  _i1.GUpdateLocationInput get currentLocation;
  static Serializer<GupdateCurrentLocationVars> get serializer =>
      _$gupdateCurrentLocationVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GupdateCurrentLocationVars.serializer, this) as Map<String, dynamic>);
  static GupdateCurrentLocationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GupdateCurrentLocationVars.serializer, json);
}

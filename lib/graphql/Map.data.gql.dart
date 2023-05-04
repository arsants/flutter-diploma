// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:katai/graphql/serializers.gql.dart' as _i1;

part 'Map.data.gql.g.dart';

abstract class GupdateCurrentLocationData
    implements
        Built<GupdateCurrentLocationData, GupdateCurrentLocationDataBuilder> {
  GupdateCurrentLocationData._();

  factory GupdateCurrentLocationData(
          [Function(GupdateCurrentLocationDataBuilder b) updates]) =
      _$GupdateCurrentLocationData;

  static void _initializeBuilder(GupdateCurrentLocationDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupdateCurrentLocationData_updateCurrentLocation? get updateCurrentLocation;
  static Serializer<GupdateCurrentLocationData> get serializer =>
      _$gupdateCurrentLocationDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GupdateCurrentLocationData.serializer, this) as Map<String, dynamic>);
  static GupdateCurrentLocationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GupdateCurrentLocationData.serializer, json);
}

abstract class GupdateCurrentLocationData_updateCurrentLocation
    implements
        Built<GupdateCurrentLocationData_updateCurrentLocation,
            GupdateCurrentLocationData_updateCurrentLocationBuilder> {
  GupdateCurrentLocationData_updateCurrentLocation._();

  factory GupdateCurrentLocationData_updateCurrentLocation(
      [Function(GupdateCurrentLocationData_updateCurrentLocationBuilder b)
          updates]) = _$GupdateCurrentLocationData_updateCurrentLocation;

  static void _initializeBuilder(
          GupdateCurrentLocationData_updateCurrentLocationBuilder b) =>
      b..G__typename = 'UpdateCurrentLocation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<GupdateCurrentLocationData_updateCurrentLocation>
      get serializer =>
          _$gupdateCurrentLocationDataUpdateCurrentLocationSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GupdateCurrentLocationData_updateCurrentLocation.serializer, this)
      as Map<String, dynamic>);
  static GupdateCurrentLocationData_updateCurrentLocation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GupdateCurrentLocationData_updateCurrentLocation.serializer, json);
}

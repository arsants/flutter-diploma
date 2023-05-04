// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:katai/graphql/serializers.gql.dart' as _i1;

part 'LeaderBoard.data.gql.g.dart';

abstract class GGetLeaderBoardData
    implements Built<GGetLeaderBoardData, GGetLeaderBoardDataBuilder> {
  GGetLeaderBoardData._();

  factory GGetLeaderBoardData(
      [Function(GGetLeaderBoardDataBuilder b) updates]) = _$GGetLeaderBoardData;

  static void _initializeBuilder(GGetLeaderBoardDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetLeaderBoardData_timeLimitLeaderboard> get timeLimitLeaderboard;
  static Serializer<GGetLeaderBoardData> get serializer =>
      _$gGetLeaderBoardDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetLeaderBoardData.serializer, this)
          as Map<String, dynamic>);
  static GGetLeaderBoardData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetLeaderBoardData.serializer, json);
}

abstract class GGetLeaderBoardData_timeLimitLeaderboard
    implements
        Built<GGetLeaderBoardData_timeLimitLeaderboard,
            GGetLeaderBoardData_timeLimitLeaderboardBuilder> {
  GGetLeaderBoardData_timeLimitLeaderboard._();

  factory GGetLeaderBoardData_timeLimitLeaderboard(
      [Function(GGetLeaderBoardData_timeLimitLeaderboardBuilder b)
          updates]) = _$GGetLeaderBoardData_timeLimitLeaderboard;

  static void _initializeBuilder(
          GGetLeaderBoardData_timeLimitLeaderboardBuilder b) =>
      b..G__typename = 'TrackNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GGetLeaderBoardData_timeLimitLeaderboard_user get user;
  double get distanceMeters;
  static Serializer<GGetLeaderBoardData_timeLimitLeaderboard> get serializer =>
      _$gGetLeaderBoardDataTimeLimitLeaderboardSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetLeaderBoardData_timeLimitLeaderboard.serializer, this)
      as Map<String, dynamic>);
  static GGetLeaderBoardData_timeLimitLeaderboard? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetLeaderBoardData_timeLimitLeaderboard.serializer, json);
}

abstract class GGetLeaderBoardData_timeLimitLeaderboard_user
    implements
        Built<GGetLeaderBoardData_timeLimitLeaderboard_user,
            GGetLeaderBoardData_timeLimitLeaderboard_userBuilder> {
  GGetLeaderBoardData_timeLimitLeaderboard_user._();

  factory GGetLeaderBoardData_timeLimitLeaderboard_user(
      [Function(GGetLeaderBoardData_timeLimitLeaderboard_userBuilder b)
          updates]) = _$GGetLeaderBoardData_timeLimitLeaderboard_user;

  static void _initializeBuilder(
          GGetLeaderBoardData_timeLimitLeaderboard_userBuilder b) =>
      b..G__typename = 'UserNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String get username;
  GGetLeaderBoardData_timeLimitLeaderboard_user_profile get profile;
  static Serializer<GGetLeaderBoardData_timeLimitLeaderboard_user>
      get serializer => _$gGetLeaderBoardDataTimeLimitLeaderboardUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetLeaderBoardData_timeLimitLeaderboard_user.serializer, this)
      as Map<String, dynamic>);
  static GGetLeaderBoardData_timeLimitLeaderboard_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetLeaderBoardData_timeLimitLeaderboard_user.serializer, json);
}

abstract class GGetLeaderBoardData_timeLimitLeaderboard_user_profile
    implements
        Built<GGetLeaderBoardData_timeLimitLeaderboard_user_profile,
            GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder> {
  GGetLeaderBoardData_timeLimitLeaderboard_user_profile._();

  factory GGetLeaderBoardData_timeLimitLeaderboard_user_profile(
      [Function(GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder b)
          updates]) = _$GGetLeaderBoardData_timeLimitLeaderboard_user_profile;

  static void _initializeBuilder(
          GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder b) =>
      b..G__typename = 'ProfileNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get isPublic;
  static Serializer<GGetLeaderBoardData_timeLimitLeaderboard_user_profile>
      get serializer =>
          _$gGetLeaderBoardDataTimeLimitLeaderboardUserProfileSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetLeaderBoardData_timeLimitLeaderboard_user_profile.serializer,
      this) as Map<String, dynamic>);
  static GGetLeaderBoardData_timeLimitLeaderboard_user_profile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetLeaderBoardData_timeLimitLeaderboard_user_profile.serializer,
          json);
}

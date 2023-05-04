// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:katai/graphql/serializers.gql.dart' as _i1;

part 'Profile.data.gql.g.dart';

abstract class GGetMyProfileData
    implements Built<GGetMyProfileData, GGetMyProfileDataBuilder> {
  GGetMyProfileData._();

  factory GGetMyProfileData([Function(GGetMyProfileDataBuilder b) updates]) =
      _$GGetMyProfileData;

  static void _initializeBuilder(GGetMyProfileDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetMyProfileData_me get me;
  static Serializer<GGetMyProfileData> get serializer =>
      _$gGetMyProfileDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetMyProfileData.serializer, this)
          as Map<String, dynamic>);
  static GGetMyProfileData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetMyProfileData.serializer, json);
}

abstract class GGetMyProfileData_me
    implements
        Built<GGetMyProfileData_me, GGetMyProfileData_meBuilder>,
        GUserNodeFields {
  GGetMyProfileData_me._();

  factory GGetMyProfileData_me(
          [Function(GGetMyProfileData_meBuilder b) updates]) =
      _$GGetMyProfileData_me;

  static void _initializeBuilder(GGetMyProfileData_meBuilder b) =>
      b..G__typename = 'UserNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String get username;
  GGetMyProfileData_me_profile get profile;
  double get totalMeters;
  int get finishedRides;
  bool get isSuperuser;
  static Serializer<GGetMyProfileData_me> get serializer =>
      _$gGetMyProfileDataMeSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetMyProfileData_me.serializer, this)
          as Map<String, dynamic>);
  static GGetMyProfileData_me? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetMyProfileData_me.serializer, json);
}

abstract class GGetMyProfileData_me_profile
    implements
        Built<GGetMyProfileData_me_profile,
            GGetMyProfileData_me_profileBuilder>,
        GUserNodeFields_profile {
  GGetMyProfileData_me_profile._();

  factory GGetMyProfileData_me_profile(
          [Function(GGetMyProfileData_me_profileBuilder b) updates]) =
      _$GGetMyProfileData_me_profile;

  static void _initializeBuilder(GGetMyProfileData_me_profileBuilder b) =>
      b..G__typename = 'ProfileNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get telegram;
  bool get isPublic;
  static Serializer<GGetMyProfileData_me_profile> get serializer =>
      _$gGetMyProfileDataMeProfileSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetMyProfileData_me_profile.serializer, this) as Map<String, dynamic>);
  static GGetMyProfileData_me_profile? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetMyProfileData_me_profile.serializer, json);
}

abstract class GGetMyTracksData
    implements Built<GGetMyTracksData, GGetMyTracksDataBuilder> {
  GGetMyTracksData._();

  factory GGetMyTracksData([Function(GGetMyTracksDataBuilder b) updates]) =
      _$GGetMyTracksData;

  static void _initializeBuilder(GGetMyTracksDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetMyTracksData_me get me;
  static Serializer<GGetMyTracksData> get serializer =>
      _$gGetMyTracksDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetMyTracksData.serializer, this)
          as Map<String, dynamic>);
  static GGetMyTracksData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetMyTracksData.serializer, json);
}

abstract class GGetMyTracksData_me
    implements Built<GGetMyTracksData_me, GGetMyTracksData_meBuilder> {
  GGetMyTracksData_me._();

  factory GGetMyTracksData_me(
      [Function(GGetMyTracksData_meBuilder b) updates]) = _$GGetMyTracksData_me;

  static void _initializeBuilder(GGetMyTracksData_meBuilder b) =>
      b..G__typename = 'UserNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetMyTracksData_me_tracks get tracks;
  static Serializer<GGetMyTracksData_me> get serializer =>
      _$gGetMyTracksDataMeSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetMyTracksData_me.serializer, this)
          as Map<String, dynamic>);
  static GGetMyTracksData_me? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetMyTracksData_me.serializer, json);
}

abstract class GGetMyTracksData_me_tracks
    implements
        Built<GGetMyTracksData_me_tracks, GGetMyTracksData_me_tracksBuilder> {
  GGetMyTracksData_me_tracks._();

  factory GGetMyTracksData_me_tracks(
          [Function(GGetMyTracksData_me_tracksBuilder b) updates]) =
      _$GGetMyTracksData_me_tracks;

  static void _initializeBuilder(GGetMyTracksData_me_tracksBuilder b) =>
      b..G__typename = 'TrackResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetMyTracksData_me_tracks_tracks> get tracks;
  static Serializer<GGetMyTracksData_me_tracks> get serializer =>
      _$gGetMyTracksDataMeTracksSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetMyTracksData_me_tracks.serializer, this) as Map<String, dynamic>);
  static GGetMyTracksData_me_tracks? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetMyTracksData_me_tracks.serializer, json);
}

abstract class GGetMyTracksData_me_tracks_tracks
    implements
        Built<GGetMyTracksData_me_tracks_tracks,
            GGetMyTracksData_me_tracks_tracksBuilder> {
  GGetMyTracksData_me_tracks_tracks._();

  factory GGetMyTracksData_me_tracks_tracks(
          [Function(GGetMyTracksData_me_tracks_tracksBuilder b) updates]) =
      _$GGetMyTracksData_me_tracks_tracks;

  static void _initializeBuilder(GGetMyTracksData_me_tracks_tracksBuilder b) =>
      b..G__typename = 'TrackNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  DateTime? get endTime;
  double get distanceMeters;
  String get id;
  static Serializer<GGetMyTracksData_me_tracks_tracks> get serializer =>
      _$gGetMyTracksDataMeTracksTracksSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetMyTracksData_me_tracks_tracks.serializer, this)
      as Map<String, dynamic>);
  static GGetMyTracksData_me_tracks_tracks? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetMyTracksData_me_tracks_tracks.serializer, json);
}

abstract class GGetUserTracksData
    implements Built<GGetUserTracksData, GGetUserTracksDataBuilder> {
  GGetUserTracksData._();

  factory GGetUserTracksData([Function(GGetUserTracksDataBuilder b) updates]) =
      _$GGetUserTracksData;

  static void _initializeBuilder(GGetUserTracksDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserTracksData_userByUsername get userByUsername;
  static Serializer<GGetUserTracksData> get serializer =>
      _$gGetUserTracksDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserTracksData.serializer, this)
          as Map<String, dynamic>);
  static GGetUserTracksData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserTracksData.serializer, json);
}

abstract class GGetUserTracksData_userByUsername
    implements
        Built<GGetUserTracksData_userByUsername,
            GGetUserTracksData_userByUsernameBuilder> {
  GGetUserTracksData_userByUsername._();

  factory GGetUserTracksData_userByUsername(
          [Function(GGetUserTracksData_userByUsernameBuilder b) updates]) =
      _$GGetUserTracksData_userByUsername;

  static void _initializeBuilder(GGetUserTracksData_userByUsernameBuilder b) =>
      b..G__typename = 'UserNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserTracksData_userByUsername_tracks get tracks;
  static Serializer<GGetUserTracksData_userByUsername> get serializer =>
      _$gGetUserTracksDataUserByUsernameSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetUserTracksData_userByUsername.serializer, this)
      as Map<String, dynamic>);
  static GGetUserTracksData_userByUsername? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetUserTracksData_userByUsername.serializer, json);
}

abstract class GGetUserTracksData_userByUsername_tracks
    implements
        Built<GGetUserTracksData_userByUsername_tracks,
            GGetUserTracksData_userByUsername_tracksBuilder> {
  GGetUserTracksData_userByUsername_tracks._();

  factory GGetUserTracksData_userByUsername_tracks(
      [Function(GGetUserTracksData_userByUsername_tracksBuilder b)
          updates]) = _$GGetUserTracksData_userByUsername_tracks;

  static void _initializeBuilder(
          GGetUserTracksData_userByUsername_tracksBuilder b) =>
      b..G__typename = 'TrackResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetUserTracksData_userByUsername_tracks_tracks> get tracks;
  static Serializer<GGetUserTracksData_userByUsername_tracks> get serializer =>
      _$gGetUserTracksDataUserByUsernameTracksSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetUserTracksData_userByUsername_tracks.serializer, this)
      as Map<String, dynamic>);
  static GGetUserTracksData_userByUsername_tracks? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetUserTracksData_userByUsername_tracks.serializer, json);
}

abstract class GGetUserTracksData_userByUsername_tracks_tracks
    implements
        Built<GGetUserTracksData_userByUsername_tracks_tracks,
            GGetUserTracksData_userByUsername_tracks_tracksBuilder> {
  GGetUserTracksData_userByUsername_tracks_tracks._();

  factory GGetUserTracksData_userByUsername_tracks_tracks(
      [Function(GGetUserTracksData_userByUsername_tracks_tracksBuilder b)
          updates]) = _$GGetUserTracksData_userByUsername_tracks_tracks;

  static void _initializeBuilder(
          GGetUserTracksData_userByUsername_tracks_tracksBuilder b) =>
      b..G__typename = 'TrackNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  DateTime? get endTime;
  double get distanceMeters;
  String get id;
  static Serializer<GGetUserTracksData_userByUsername_tracks_tracks>
      get serializer =>
          _$gGetUserTracksDataUserByUsernameTracksTracksSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetUserTracksData_userByUsername_tracks_tracks.serializer, this)
      as Map<String, dynamic>);
  static GGetUserTracksData_userByUsername_tracks_tracks? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetUserTracksData_userByUsername_tracks_tracks.serializer, json);
}

abstract class GGetUserProfileData
    implements Built<GGetUserProfileData, GGetUserProfileDataBuilder> {
  GGetUserProfileData._();

  factory GGetUserProfileData(
      [Function(GGetUserProfileDataBuilder b) updates]) = _$GGetUserProfileData;

  static void _initializeBuilder(GGetUserProfileDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserProfileData_userByUsername get userByUsername;
  static Serializer<GGetUserProfileData> get serializer =>
      _$gGetUserProfileDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserProfileData.serializer, this)
          as Map<String, dynamic>);
  static GGetUserProfileData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserProfileData.serializer, json);
}

abstract class GGetUserProfileData_userByUsername
    implements
        Built<GGetUserProfileData_userByUsername,
            GGetUserProfileData_userByUsernameBuilder>,
        GUserNodeFields {
  GGetUserProfileData_userByUsername._();

  factory GGetUserProfileData_userByUsername(
          [Function(GGetUserProfileData_userByUsernameBuilder b) updates]) =
      _$GGetUserProfileData_userByUsername;

  static void _initializeBuilder(GGetUserProfileData_userByUsernameBuilder b) =>
      b..G__typename = 'UserNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String get username;
  GGetUserProfileData_userByUsername_profile get profile;
  double get totalMeters;
  int get finishedRides;
  bool get isSuperuser;
  static Serializer<GGetUserProfileData_userByUsername> get serializer =>
      _$gGetUserProfileDataUserByUsernameSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetUserProfileData_userByUsername.serializer, this)
      as Map<String, dynamic>);
  static GGetUserProfileData_userByUsername? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetUserProfileData_userByUsername.serializer, json);
}

abstract class GGetUserProfileData_userByUsername_profile
    implements
        Built<GGetUserProfileData_userByUsername_profile,
            GGetUserProfileData_userByUsername_profileBuilder>,
        GUserNodeFields_profile {
  GGetUserProfileData_userByUsername_profile._();

  factory GGetUserProfileData_userByUsername_profile(
      [Function(GGetUserProfileData_userByUsername_profileBuilder b)
          updates]) = _$GGetUserProfileData_userByUsername_profile;

  static void _initializeBuilder(
          GGetUserProfileData_userByUsername_profileBuilder b) =>
      b..G__typename = 'ProfileNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get telegram;
  bool get isPublic;
  static Serializer<GGetUserProfileData_userByUsername_profile>
      get serializer => _$gGetUserProfileDataUserByUsernameProfileSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetUserProfileData_userByUsername_profile.serializer, this)
      as Map<String, dynamic>);
  static GGetUserProfileData_userByUsername_profile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetUserProfileData_userByUsername_profile.serializer, json);
}

abstract class GUpdateProfileData
    implements Built<GUpdateProfileData, GUpdateProfileDataBuilder> {
  GUpdateProfileData._();

  factory GUpdateProfileData([Function(GUpdateProfileDataBuilder b) updates]) =
      _$GUpdateProfileData;

  static void _initializeBuilder(GUpdateProfileDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateProfileData_updateProfile? get updateProfile;
  static Serializer<GUpdateProfileData> get serializer =>
      _$gUpdateProfileDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateProfileData.serializer, this)
          as Map<String, dynamic>);
  static GUpdateProfileData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateProfileData.serializer, json);
}

abstract class GUpdateProfileData_updateProfile
    implements
        Built<GUpdateProfileData_updateProfile,
            GUpdateProfileData_updateProfileBuilder> {
  GUpdateProfileData_updateProfile._();

  factory GUpdateProfileData_updateProfile(
          [Function(GUpdateProfileData_updateProfileBuilder b) updates]) =
      _$GUpdateProfileData_updateProfile;

  static void _initializeBuilder(GUpdateProfileData_updateProfileBuilder b) =>
      b..G__typename = 'UpdateProfileMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  GUpdateProfileData_updateProfile_user get user;
  static Serializer<GUpdateProfileData_updateProfile> get serializer =>
      _$gUpdateProfileDataUpdateProfileSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GUpdateProfileData_updateProfile.serializer, this)
      as Map<String, dynamic>);
  static GUpdateProfileData_updateProfile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUpdateProfileData_updateProfile.serializer, json);
}

abstract class GUpdateProfileData_updateProfile_user
    implements
        Built<GUpdateProfileData_updateProfile_user,
            GUpdateProfileData_updateProfile_userBuilder>,
        GUserNodeFields {
  GUpdateProfileData_updateProfile_user._();

  factory GUpdateProfileData_updateProfile_user(
          [Function(GUpdateProfileData_updateProfile_userBuilder b) updates]) =
      _$GUpdateProfileData_updateProfile_user;

  static void _initializeBuilder(
          GUpdateProfileData_updateProfile_userBuilder b) =>
      b..G__typename = 'UserNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String get username;
  GUpdateProfileData_updateProfile_user_profile get profile;
  double get totalMeters;
  int get finishedRides;
  bool get isSuperuser;
  static Serializer<GUpdateProfileData_updateProfile_user> get serializer =>
      _$gUpdateProfileDataUpdateProfileUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GUpdateProfileData_updateProfile_user.serializer, this)
      as Map<String, dynamic>);
  static GUpdateProfileData_updateProfile_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GUpdateProfileData_updateProfile_user.serializer, json);
}

abstract class GUpdateProfileData_updateProfile_user_profile
    implements
        Built<GUpdateProfileData_updateProfile_user_profile,
            GUpdateProfileData_updateProfile_user_profileBuilder>,
        GUserNodeFields_profile {
  GUpdateProfileData_updateProfile_user_profile._();

  factory GUpdateProfileData_updateProfile_user_profile(
      [Function(GUpdateProfileData_updateProfile_user_profileBuilder b)
          updates]) = _$GUpdateProfileData_updateProfile_user_profile;

  static void _initializeBuilder(
          GUpdateProfileData_updateProfile_user_profileBuilder b) =>
      b..G__typename = 'ProfileNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get telegram;
  bool get isPublic;
  static Serializer<GUpdateProfileData_updateProfile_user_profile>
      get serializer => _$gUpdateProfileDataUpdateProfileUserProfileSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GUpdateProfileData_updateProfile_user_profile.serializer, this)
      as Map<String, dynamic>);
  static GUpdateProfileData_updateProfile_user_profile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GUpdateProfileData_updateProfile_user_profile.serializer, json);
}

abstract class GUpdatePublicData
    implements Built<GUpdatePublicData, GUpdatePublicDataBuilder> {
  GUpdatePublicData._();

  factory GUpdatePublicData([Function(GUpdatePublicDataBuilder b) updates]) =
      _$GUpdatePublicData;

  static void _initializeBuilder(GUpdatePublicDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdatePublicData_updateProfile? get updateProfile;
  static Serializer<GUpdatePublicData> get serializer =>
      _$gUpdatePublicDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdatePublicData.serializer, this)
          as Map<String, dynamic>);
  static GUpdatePublicData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdatePublicData.serializer, json);
}

abstract class GUpdatePublicData_updateProfile
    implements
        Built<GUpdatePublicData_updateProfile,
            GUpdatePublicData_updateProfileBuilder> {
  GUpdatePublicData_updateProfile._();

  factory GUpdatePublicData_updateProfile(
          [Function(GUpdatePublicData_updateProfileBuilder b) updates]) =
      _$GUpdatePublicData_updateProfile;

  static void _initializeBuilder(GUpdatePublicData_updateProfileBuilder b) =>
      b..G__typename = 'UpdateProfileMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<GUpdatePublicData_updateProfile> get serializer =>
      _$gUpdatePublicDataUpdateProfileSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GUpdatePublicData_updateProfile.serializer, this)
      as Map<String, dynamic>);
  static GUpdatePublicData_updateProfile? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUpdatePublicData_updateProfile.serializer, json);
}

abstract class GUserNodeFields {
  String get G__typename;
  String get firstName;
  String get lastName;
  String get username;
  GUserNodeFields_profile get profile;
  double get totalMeters;
  int get finishedRides;
  bool get isSuperuser;
  Map<String, dynamic> toJson();
}

abstract class GUserNodeFields_profile {
  String get G__typename;
  String? get telegram;
  bool get isPublic;
  Map<String, dynamic> toJson();
}

abstract class GUserNodeFieldsData
    implements
        Built<GUserNodeFieldsData, GUserNodeFieldsDataBuilder>,
        GUserNodeFields {
  GUserNodeFieldsData._();

  factory GUserNodeFieldsData(
      [Function(GUserNodeFieldsDataBuilder b) updates]) = _$GUserNodeFieldsData;

  static void _initializeBuilder(GUserNodeFieldsDataBuilder b) =>
      b..G__typename = 'UserNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String get username;
  GUserNodeFieldsData_profile get profile;
  double get totalMeters;
  int get finishedRides;
  bool get isSuperuser;
  static Serializer<GUserNodeFieldsData> get serializer =>
      _$gUserNodeFieldsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserNodeFieldsData.serializer, this)
          as Map<String, dynamic>);
  static GUserNodeFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserNodeFieldsData.serializer, json);
}

abstract class GUserNodeFieldsData_profile
    implements
        Built<GUserNodeFieldsData_profile, GUserNodeFieldsData_profileBuilder>,
        GUserNodeFields_profile {
  GUserNodeFieldsData_profile._();

  factory GUserNodeFieldsData_profile(
          [Function(GUserNodeFieldsData_profileBuilder b) updates]) =
      _$GUserNodeFieldsData_profile;

  static void _initializeBuilder(GUserNodeFieldsData_profileBuilder b) =>
      b..G__typename = 'ProfileNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get telegram;
  bool get isPublic;
  static Serializer<GUserNodeFieldsData_profile> get serializer =>
      _$gUserNodeFieldsDataProfileSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GUserNodeFieldsData_profile.serializer, this) as Map<String, dynamic>);
  static GUserNodeFieldsData_profile? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUserNodeFieldsData_profile.serializer, json);
}

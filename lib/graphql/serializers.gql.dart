import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:http/http.dart';
import 'package:katai/core/util/datetime_serializer.dart'
    show DateTimeSerializer;
import 'package:katai/graphql/Auth.data.gql.dart'
    show
        GCredAuthData,
        GCredAuthData_tokenAuth,
        GRegistrationData,
        GRegistrationData_register,
        GSocialAuthData,
        GSocialAuthData_socialAuth;
import 'package:katai/graphql/Auth.req.gql.dart'
    show GCredAuthReq, GRegistrationReq, GSocialAuthReq;
import 'package:katai/graphql/Auth.var.gql.dart'
    show GCredAuthVars, GRegistrationVars, GSocialAuthVars;
import 'package:katai/graphql/Competition.data.gql.dart'
    show
        GCreateHistoricRideData,
        GCreateHistoricRideData_createRide,
        GCreateHistoricRideData_createRide_ride,
        GCreateRideData,
        GCreateRideData_createRide,
        GCreateRideData_createRide_ride,
        GGetRideData,
        GGetRideData_ride,
        GGetRideData_ride_results,
        GGetRideData_ride_results_user,
        GJoinRideData,
        GJoinRideData_joinRide,
        GJoinRideData_joinRide_ride,
        GLeaveRideData,
        GLeaveRideData_leaveRide,
        GRideNodeFieldsData,
        GStartRideData,
        GStartRideData_startRide,
        GStartRideData_startRide_ride;
import 'package:katai/graphql/Competition.req.gql.dart'
    show
        GCreateHistoricRideReq,
        GCreateRideReq,
        GGetRideReq,
        GJoinRideReq,
        GLeaveRideReq,
        GRideNodeFieldsReq,
        GStartRideReq;
import 'package:katai/graphql/Competition.var.gql.dart'
    show
        GCreateHistoricRideVars,
        GCreateRideVars,
        GGetRideVars,
        GJoinRideVars,
        GLeaveRideVars,
        GRideNodeFieldsVars,
        GStartRideVars;
import 'package:katai/graphql/LeaderBoard.data.gql.dart'
    show
        GGetLeaderBoardData,
        GGetLeaderBoardData_timeLimitLeaderboard,
        GGetLeaderBoardData_timeLimitLeaderboard_user,
        GGetLeaderBoardData_timeLimitLeaderboard_user_profile;
import 'package:katai/graphql/LeaderBoard.req.gql.dart' show GGetLeaderBoardReq;
import 'package:katai/graphql/LeaderBoard.var.gql.dart'
    show GGetLeaderBoardVars;
import 'package:katai/graphql/Map.data.gql.dart'
    show
        GupdateCurrentLocationData,
        GupdateCurrentLocationData_updateCurrentLocation;
import 'package:katai/graphql/Map.req.gql.dart' show GupdateCurrentLocationReq;
import 'package:katai/graphql/Map.var.gql.dart' show GupdateCurrentLocationVars;
import 'package:katai/graphql/Profile.data.gql.dart'
    show
        GGetMyProfileData,
        GGetMyProfileData_me,
        GGetMyProfileData_me_profile,
        GGetMyTracksData,
        GGetMyTracksData_me,
        GGetMyTracksData_me_tracks,
        GGetMyTracksData_me_tracks_tracks,
        GGetUserProfileData,
        GGetUserProfileData_userByUsername,
        GGetUserProfileData_userByUsername_profile,
        GGetUserTracksData,
        GGetUserTracksData_userByUsername,
        GGetUserTracksData_userByUsername_tracks,
        GGetUserTracksData_userByUsername_tracks_tracks,
        GUpdateProfileData,
        GUpdateProfileData_updateProfile,
        GUpdateProfileData_updateProfile_user,
        GUpdateProfileData_updateProfile_user_profile,
        GUpdatePublicData,
        GUpdatePublicData_updateProfile,
        GUserNodeFieldsData,
        GUserNodeFieldsData_profile;
import 'package:katai/graphql/Profile.req.gql.dart'
    show
        GGetMyProfileReq,
        GGetMyTracksReq,
        GGetUserProfileReq,
        GGetUserTracksReq,
        GUpdateProfileReq,
        GUpdatePublicReq,
        GUserNodeFieldsReq;
import 'package:katai/graphql/Profile.var.gql.dart'
    show
        GGetMyProfileVars,
        GGetMyTracksVars,
        GGetUserProfileVars,
        GGetUserTracksVars,
        GUpdateProfileVars,
        GUpdatePublicVars,
        GUserNodeFieldsVars;
import 'package:katai/graphql/schema.schema.gql.dart'
    show
        GLocationInput,
        GRideInput,
        GRideStatusEnum,
        GRideTypeEnum,
        GSocialCamelJSON,
        GTrackOrderEnum,
        GUpdateLocationInput,
        GUpdateProfileInput;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..add(DateTimeSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateHistoricRideData,
  GCreateHistoricRideData_createRide,
  GCreateHistoricRideData_createRide_ride,
  GCreateHistoricRideReq,
  GCreateHistoricRideVars,
  GCreateRideData,
  GCreateRideData_createRide,
  GCreateRideData_createRide_ride,
  GCreateRideReq,
  GCreateRideVars,
  GCredAuthData,
  GCredAuthData_tokenAuth,
  GCredAuthReq,
  GCredAuthVars,
  GGetLeaderBoardData,
  GGetLeaderBoardData_timeLimitLeaderboard,
  GGetLeaderBoardData_timeLimitLeaderboard_user,
  GGetLeaderBoardData_timeLimitLeaderboard_user_profile,
  GGetLeaderBoardReq,
  GGetLeaderBoardVars,
  GGetMyProfileData,
  GGetMyProfileData_me,
  GGetMyProfileData_me_profile,
  GGetMyProfileReq,
  GGetMyProfileVars,
  GGetMyTracksData,
  GGetMyTracksData_me,
  GGetMyTracksData_me_tracks,
  GGetMyTracksData_me_tracks_tracks,
  GGetMyTracksReq,
  GGetMyTracksVars,
  GGetRideData,
  GGetRideData_ride,
  GGetRideData_ride_results,
  GGetRideData_ride_results_user,
  GGetRideReq,
  GGetRideVars,
  GGetUserProfileData,
  GGetUserProfileData_userByUsername,
  GGetUserProfileData_userByUsername_profile,
  GGetUserProfileReq,
  GGetUserProfileVars,
  GGetUserTracksData,
  GGetUserTracksData_userByUsername,
  GGetUserTracksData_userByUsername_tracks,
  GGetUserTracksData_userByUsername_tracks_tracks,
  GGetUserTracksReq,
  GGetUserTracksVars,
  GJoinRideData,
  GJoinRideData_joinRide,
  GJoinRideData_joinRide_ride,
  GJoinRideReq,
  GJoinRideVars,
  GLeaveRideData,
  GLeaveRideData_leaveRide,
  GLeaveRideReq,
  GLeaveRideVars,
  GLocationInput,
  GRegistrationData,
  GRegistrationData_register,
  GRegistrationReq,
  GRegistrationVars,
  GRideInput,
  GRideNodeFieldsData,
  GRideNodeFieldsReq,
  GRideNodeFieldsVars,
  GRideStatusEnum,
  GRideTypeEnum,
  GSocialAuthData,
  GSocialAuthData_socialAuth,
  GSocialAuthReq,
  GSocialAuthVars,
  GSocialCamelJSON,
  GStartRideData,
  GStartRideData_startRide,
  GStartRideData_startRide_ride,
  GStartRideReq,
  GStartRideVars,
  GTrackOrderEnum,
  GUpdateLocationInput,
  GUpdateProfileData,
  GUpdateProfileData_updateProfile,
  GUpdateProfileData_updateProfile_user,
  GUpdateProfileData_updateProfile_user_profile,
  GUpdateProfileInput,
  GUpdateProfileReq,
  GUpdateProfileVars,
  GUpdatePublicData,
  GUpdatePublicData_updateProfile,
  GUpdatePublicReq,
  GUpdatePublicVars,
  GUserNodeFieldsData,
  GUserNodeFieldsData_profile,
  GUserNodeFieldsReq,
  GUserNodeFieldsVars,
  GupdateCurrentLocationData,
  GupdateCurrentLocationData_updateCurrentLocation,
  GupdateCurrentLocationReq,
  GupdateCurrentLocationVars
])
final Serializers serializers = _serializersBuilder.build();

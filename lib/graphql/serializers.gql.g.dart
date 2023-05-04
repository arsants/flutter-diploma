// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(GCreateHistoricRideData.serializer)
      ..add(GCreateHistoricRideData_createRide.serializer)
      ..add(GCreateHistoricRideData_createRide_ride.serializer)
      ..add(GCreateHistoricRideReq.serializer)
      ..add(GCreateHistoricRideVars.serializer)
      ..add(GCreateRideData.serializer)
      ..add(GCreateRideData_createRide.serializer)
      ..add(GCreateRideData_createRide_ride.serializer)
      ..add(GCreateRideReq.serializer)
      ..add(GCreateRideVars.serializer)
      ..add(GCredAuthData.serializer)
      ..add(GCredAuthData_tokenAuth.serializer)
      ..add(GCredAuthReq.serializer)
      ..add(GCredAuthVars.serializer)
      ..add(GGetLeaderBoardData.serializer)
      ..add(GGetLeaderBoardData_timeLimitLeaderboard.serializer)
      ..add(GGetLeaderBoardData_timeLimitLeaderboard_user.serializer)
      ..add(GGetLeaderBoardData_timeLimitLeaderboard_user_profile.serializer)
      ..add(GGetLeaderBoardReq.serializer)
      ..add(GGetLeaderBoardVars.serializer)
      ..add(GGetMyProfileData.serializer)
      ..add(GGetMyProfileData_me.serializer)
      ..add(GGetMyProfileData_me_profile.serializer)
      ..add(GGetMyProfileReq.serializer)
      ..add(GGetMyProfileVars.serializer)
      ..add(GGetMyTracksData.serializer)
      ..add(GGetMyTracksData_me.serializer)
      ..add(GGetMyTracksData_me_tracks.serializer)
      ..add(GGetMyTracksData_me_tracks_tracks.serializer)
      ..add(GGetMyTracksReq.serializer)
      ..add(GGetMyTracksVars.serializer)
      ..add(GGetRideData.serializer)
      ..add(GGetRideData_ride.serializer)
      ..add(GGetRideData_ride_results.serializer)
      ..add(GGetRideData_ride_results_user.serializer)
      ..add(GGetRideReq.serializer)
      ..add(GGetRideVars.serializer)
      ..add(GGetUserProfileData.serializer)
      ..add(GGetUserProfileData_userByUsername.serializer)
      ..add(GGetUserProfileData_userByUsername_profile.serializer)
      ..add(GGetUserProfileReq.serializer)
      ..add(GGetUserProfileVars.serializer)
      ..add(GGetUserTracksData.serializer)
      ..add(GGetUserTracksData_userByUsername.serializer)
      ..add(GGetUserTracksData_userByUsername_tracks.serializer)
      ..add(GGetUserTracksData_userByUsername_tracks_tracks.serializer)
      ..add(GGetUserTracksReq.serializer)
      ..add(GGetUserTracksVars.serializer)
      ..add(GJoinRideData.serializer)
      ..add(GJoinRideData_joinRide.serializer)
      ..add(GJoinRideData_joinRide_ride.serializer)
      ..add(GJoinRideReq.serializer)
      ..add(GJoinRideVars.serializer)
      ..add(GLeaveRideData.serializer)
      ..add(GLeaveRideData_leaveRide.serializer)
      ..add(GLeaveRideReq.serializer)
      ..add(GLeaveRideVars.serializer)
      ..add(GLocationInput.serializer)
      ..add(GRegistrationData.serializer)
      ..add(GRegistrationData_register.serializer)
      ..add(GRegistrationReq.serializer)
      ..add(GRegistrationVars.serializer)
      ..add(GRideInput.serializer)
      ..add(GRideNodeFieldsData.serializer)
      ..add(GRideNodeFieldsReq.serializer)
      ..add(GRideNodeFieldsVars.serializer)
      ..add(GRideStatusEnum.serializer)
      ..add(GRideTypeEnum.serializer)
      ..add(GSocialAuthData.serializer)
      ..add(GSocialAuthData_socialAuth.serializer)
      ..add(GSocialAuthReq.serializer)
      ..add(GSocialAuthVars.serializer)
      ..add(GSocialCamelJSON.serializer)
      ..add(GStartRideData.serializer)
      ..add(GStartRideData_startRide.serializer)
      ..add(GStartRideData_startRide_ride.serializer)
      ..add(GStartRideReq.serializer)
      ..add(GStartRideVars.serializer)
      ..add(GTrackOrderEnum.serializer)
      ..add(GUpdateLocationInput.serializer)
      ..add(GUpdateProfileData.serializer)
      ..add(GUpdateProfileData_updateProfile.serializer)
      ..add(GUpdateProfileData_updateProfile_user.serializer)
      ..add(GUpdateProfileData_updateProfile_user_profile.serializer)
      ..add(GUpdateProfileInput.serializer)
      ..add(GUpdateProfileReq.serializer)
      ..add(GUpdateProfileVars.serializer)
      ..add(GUpdatePublicData.serializer)
      ..add(GUpdatePublicData_updateProfile.serializer)
      ..add(GUpdatePublicReq.serializer)
      ..add(GUpdatePublicVars.serializer)
      ..add(GUserNodeFieldsData.serializer)
      ..add(GUserNodeFieldsData_profile.serializer)
      ..add(GUserNodeFieldsReq.serializer)
      ..add(GUserNodeFieldsVars.serializer)
      ..add(GupdateCurrentLocationData.serializer)
      ..add(GupdateCurrentLocationData_updateCurrentLocation.serializer)
      ..add(GupdateCurrentLocationReq.serializer)
      ..add(GupdateCurrentLocationVars.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetLeaderBoardData_timeLimitLeaderboard)]),
          () => new ListBuilder<GGetLeaderBoardData_timeLimitLeaderboard>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetMyTracksData_me_tracks_tracks)]),
          () => new ListBuilder<GGetMyTracksData_me_tracks_tracks>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGetRideData_ride_results)]),
          () => new ListBuilder<GGetRideData_ride_results>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GGetUserTracksData_userByUsername_tracks_tracks)
          ]),
          () => new ListBuilder<
              GGetUserTracksData_userByUsername_tracks_tracks>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

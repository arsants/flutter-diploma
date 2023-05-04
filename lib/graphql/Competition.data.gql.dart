// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:katai/graphql/schema.schema.gql.dart' as _i2;
import 'package:katai/graphql/serializers.gql.dart' as _i1;

part 'Competition.data.gql.g.dart';

abstract class GGetRideData
    implements Built<GGetRideData, GGetRideDataBuilder> {
  GGetRideData._();

  factory GGetRideData([Function(GGetRideDataBuilder b) updates]) =
      _$GGetRideData;

  static void _initializeBuilder(GGetRideDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetRideData_ride get ride;
  static Serializer<GGetRideData> get serializer => _$gGetRideDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRideData.serializer, this)
          as Map<String, dynamic>);
  static GGetRideData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetRideData.serializer, json);
}

abstract class GGetRideData_ride
    implements
        Built<GGetRideData_ride, GGetRideData_rideBuilder>,
        GRideNodeFields {
  GGetRideData_ride._();

  factory GGetRideData_ride([Function(GGetRideData_rideBuilder b) updates]) =
      _$GGetRideData_ride;

  static void _initializeBuilder(GGetRideData_rideBuilder b) =>
      b..G__typename = 'RideNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetRideData_ride_results> get results;
  String get id;
  _i2.GRideStatusEnum get status;
  DateTime? get startTime;
  bool get isCreator;
  bool get isFinished;
  String get inviteCode;
  int get timeLimitMinutes;
  static Serializer<GGetRideData_ride> get serializer =>
      _$gGetRideDataRideSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRideData_ride.serializer, this)
          as Map<String, dynamic>);
  static GGetRideData_ride? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetRideData_ride.serializer, json);
}

abstract class GGetRideData_ride_results
    implements
        Built<GGetRideData_ride_results, GGetRideData_ride_resultsBuilder> {
  GGetRideData_ride_results._();

  factory GGetRideData_ride_results(
          [Function(GGetRideData_ride_resultsBuilder b) updates]) =
      _$GGetRideData_ride_results;

  static void _initializeBuilder(GGetRideData_ride_resultsBuilder b) =>
      b..G__typename = 'ResultNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get isMe;
  bool get isHistoric;
  String get id;
  GGetRideData_ride_results_user get user;
  double get distanceMeters;
  static Serializer<GGetRideData_ride_results> get serializer =>
      _$gGetRideDataRideResultsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRideData_ride_results.serializer, this)
          as Map<String, dynamic>);
  static GGetRideData_ride_results? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRideData_ride_results.serializer, json);
}

abstract class GGetRideData_ride_results_user
    implements
        Built<GGetRideData_ride_results_user,
            GGetRideData_ride_results_userBuilder> {
  GGetRideData_ride_results_user._();

  factory GGetRideData_ride_results_user(
          [Function(GGetRideData_ride_results_userBuilder b) updates]) =
      _$GGetRideData_ride_results_user;

  static void _initializeBuilder(GGetRideData_ride_results_userBuilder b) =>
      b..G__typename = 'UserNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get username;
  static Serializer<GGetRideData_ride_results_user> get serializer =>
      _$gGetRideDataRideResultsUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRideData_ride_results_user.serializer, this) as Map<String, dynamic>);
  static GGetRideData_ride_results_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRideData_ride_results_user.serializer, json);
}

abstract class GCreateHistoricRideData
    implements Built<GCreateHistoricRideData, GCreateHistoricRideDataBuilder> {
  GCreateHistoricRideData._();

  factory GCreateHistoricRideData(
          [Function(GCreateHistoricRideDataBuilder b) updates]) =
      _$GCreateHistoricRideData;

  static void _initializeBuilder(GCreateHistoricRideDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateHistoricRideData_createRide? get createRide;
  static Serializer<GCreateHistoricRideData> get serializer =>
      _$gCreateHistoricRideDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateHistoricRideData.serializer, this)
          as Map<String, dynamic>);
  static GCreateHistoricRideData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateHistoricRideData.serializer, json);
}

abstract class GCreateHistoricRideData_createRide
    implements
        Built<GCreateHistoricRideData_createRide,
            GCreateHistoricRideData_createRideBuilder> {
  GCreateHistoricRideData_createRide._();

  factory GCreateHistoricRideData_createRide(
          [Function(GCreateHistoricRideData_createRideBuilder b) updates]) =
      _$GCreateHistoricRideData_createRide;

  static void _initializeBuilder(GCreateHistoricRideData_createRideBuilder b) =>
      b..G__typename = 'CreateRideMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateHistoricRideData_createRide_ride get ride;
  static Serializer<GCreateHistoricRideData_createRide> get serializer =>
      _$gCreateHistoricRideDataCreateRideSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GCreateHistoricRideData_createRide.serializer, this)
      as Map<String, dynamic>);
  static GCreateHistoricRideData_createRide? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateHistoricRideData_createRide.serializer, json);
}

abstract class GCreateHistoricRideData_createRide_ride
    implements
        Built<GCreateHistoricRideData_createRide_ride,
            GCreateHistoricRideData_createRide_rideBuilder>,
        GRideNodeFields {
  GCreateHistoricRideData_createRide_ride._();

  factory GCreateHistoricRideData_createRide_ride(
      [Function(GCreateHistoricRideData_createRide_rideBuilder b)
          updates]) = _$GCreateHistoricRideData_createRide_ride;

  static void _initializeBuilder(
          GCreateHistoricRideData_createRide_rideBuilder b) =>
      b..G__typename = 'RideNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GRideStatusEnum get status;
  DateTime? get startTime;
  bool get isCreator;
  bool get isFinished;
  String get inviteCode;
  int get timeLimitMinutes;
  static Serializer<GCreateHistoricRideData_createRide_ride> get serializer =>
      _$gCreateHistoricRideDataCreateRideRideSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCreateHistoricRideData_createRide_ride.serializer, this)
      as Map<String, dynamic>);
  static GCreateHistoricRideData_createRide_ride? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateHistoricRideData_createRide_ride.serializer, json);
}

abstract class GCreateRideData
    implements Built<GCreateRideData, GCreateRideDataBuilder> {
  GCreateRideData._();

  factory GCreateRideData([Function(GCreateRideDataBuilder b) updates]) =
      _$GCreateRideData;

  static void _initializeBuilder(GCreateRideDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateRideData_createRide? get createRide;
  static Serializer<GCreateRideData> get serializer =>
      _$gCreateRideDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateRideData.serializer, this)
          as Map<String, dynamic>);
  static GCreateRideData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateRideData.serializer, json);
}

abstract class GCreateRideData_createRide
    implements
        Built<GCreateRideData_createRide, GCreateRideData_createRideBuilder> {
  GCreateRideData_createRide._();

  factory GCreateRideData_createRide(
          [Function(GCreateRideData_createRideBuilder b) updates]) =
      _$GCreateRideData_createRide;

  static void _initializeBuilder(GCreateRideData_createRideBuilder b) =>
      b..G__typename = 'CreateRideMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateRideData_createRide_ride get ride;
  static Serializer<GCreateRideData_createRide> get serializer =>
      _$gCreateRideDataCreateRideSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCreateRideData_createRide.serializer, this) as Map<String, dynamic>);
  static GCreateRideData_createRide? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateRideData_createRide.serializer, json);
}

abstract class GCreateRideData_createRide_ride
    implements
        Built<GCreateRideData_createRide_ride,
            GCreateRideData_createRide_rideBuilder>,
        GRideNodeFields {
  GCreateRideData_createRide_ride._();

  factory GCreateRideData_createRide_ride(
          [Function(GCreateRideData_createRide_rideBuilder b) updates]) =
      _$GCreateRideData_createRide_ride;

  static void _initializeBuilder(GCreateRideData_createRide_rideBuilder b) =>
      b..G__typename = 'RideNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GRideStatusEnum get status;
  DateTime? get startTime;
  bool get isCreator;
  bool get isFinished;
  String get inviteCode;
  int get timeLimitMinutes;
  static Serializer<GCreateRideData_createRide_ride> get serializer =>
      _$gCreateRideDataCreateRideRideSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GCreateRideData_createRide_ride.serializer, this)
      as Map<String, dynamic>);
  static GCreateRideData_createRide_ride? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateRideData_createRide_ride.serializer, json);
}

abstract class GStartRideData
    implements Built<GStartRideData, GStartRideDataBuilder> {
  GStartRideData._();

  factory GStartRideData([Function(GStartRideDataBuilder b) updates]) =
      _$GStartRideData;

  static void _initializeBuilder(GStartRideDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStartRideData_startRide? get startRide;
  static Serializer<GStartRideData> get serializer =>
      _$gStartRideDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GStartRideData.serializer, this)
          as Map<String, dynamic>);
  static GStartRideData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GStartRideData.serializer, json);
}

abstract class GStartRideData_startRide
    implements
        Built<GStartRideData_startRide, GStartRideData_startRideBuilder> {
  GStartRideData_startRide._();

  factory GStartRideData_startRide(
          [Function(GStartRideData_startRideBuilder b) updates]) =
      _$GStartRideData_startRide;

  static void _initializeBuilder(GStartRideData_startRideBuilder b) =>
      b..G__typename = 'StartRideMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStartRideData_startRide_ride get ride;
  static Serializer<GStartRideData_startRide> get serializer =>
      _$gStartRideDataStartRideSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GStartRideData_startRide.serializer, this)
          as Map<String, dynamic>);
  static GStartRideData_startRide? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GStartRideData_startRide.serializer, json);
}

abstract class GStartRideData_startRide_ride
    implements
        Built<GStartRideData_startRide_ride,
            GStartRideData_startRide_rideBuilder>,
        GRideNodeFields {
  GStartRideData_startRide_ride._();

  factory GStartRideData_startRide_ride(
          [Function(GStartRideData_startRide_rideBuilder b) updates]) =
      _$GStartRideData_startRide_ride;

  static void _initializeBuilder(GStartRideData_startRide_rideBuilder b) =>
      b..G__typename = 'RideNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GRideStatusEnum get status;
  DateTime? get startTime;
  bool get isCreator;
  bool get isFinished;
  String get inviteCode;
  int get timeLimitMinutes;
  static Serializer<GStartRideData_startRide_ride> get serializer =>
      _$gStartRideDataStartRideRideSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GStartRideData_startRide_ride.serializer, this) as Map<String, dynamic>);
  static GStartRideData_startRide_ride? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GStartRideData_startRide_ride.serializer, json);
}

abstract class GLeaveRideData
    implements Built<GLeaveRideData, GLeaveRideDataBuilder> {
  GLeaveRideData._();

  factory GLeaveRideData([Function(GLeaveRideDataBuilder b) updates]) =
      _$GLeaveRideData;

  static void _initializeBuilder(GLeaveRideDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLeaveRideData_leaveRide? get leaveRide;
  static Serializer<GLeaveRideData> get serializer =>
      _$gLeaveRideDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLeaveRideData.serializer, this)
          as Map<String, dynamic>);
  static GLeaveRideData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLeaveRideData.serializer, json);
}

abstract class GLeaveRideData_leaveRide
    implements
        Built<GLeaveRideData_leaveRide, GLeaveRideData_leaveRideBuilder> {
  GLeaveRideData_leaveRide._();

  factory GLeaveRideData_leaveRide(
          [Function(GLeaveRideData_leaveRideBuilder b) updates]) =
      _$GLeaveRideData_leaveRide;

  static void _initializeBuilder(GLeaveRideData_leaveRideBuilder b) =>
      b..G__typename = 'LeaveRideMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<GLeaveRideData_leaveRide> get serializer =>
      _$gLeaveRideDataLeaveRideSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLeaveRideData_leaveRide.serializer, this)
          as Map<String, dynamic>);
  static GLeaveRideData_leaveRide? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GLeaveRideData_leaveRide.serializer, json);
}

abstract class GJoinRideData
    implements Built<GJoinRideData, GJoinRideDataBuilder> {
  GJoinRideData._();

  factory GJoinRideData([Function(GJoinRideDataBuilder b) updates]) =
      _$GJoinRideData;

  static void _initializeBuilder(GJoinRideDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GJoinRideData_joinRide? get joinRide;
  static Serializer<GJoinRideData> get serializer => _$gJoinRideDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GJoinRideData.serializer, this)
          as Map<String, dynamic>);
  static GJoinRideData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GJoinRideData.serializer, json);
}

abstract class GJoinRideData_joinRide
    implements Built<GJoinRideData_joinRide, GJoinRideData_joinRideBuilder> {
  GJoinRideData_joinRide._();

  factory GJoinRideData_joinRide(
          [Function(GJoinRideData_joinRideBuilder b) updates]) =
      _$GJoinRideData_joinRide;

  static void _initializeBuilder(GJoinRideData_joinRideBuilder b) =>
      b..G__typename = 'JoinRideMutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GJoinRideData_joinRide_ride get ride;
  static Serializer<GJoinRideData_joinRide> get serializer =>
      _$gJoinRideDataJoinRideSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GJoinRideData_joinRide.serializer, this)
          as Map<String, dynamic>);
  static GJoinRideData_joinRide? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GJoinRideData_joinRide.serializer, json);
}

abstract class GJoinRideData_joinRide_ride
    implements
        Built<GJoinRideData_joinRide_ride, GJoinRideData_joinRide_rideBuilder>,
        GRideNodeFields {
  GJoinRideData_joinRide_ride._();

  factory GJoinRideData_joinRide_ride(
          [Function(GJoinRideData_joinRide_rideBuilder b) updates]) =
      _$GJoinRideData_joinRide_ride;

  static void _initializeBuilder(GJoinRideData_joinRide_rideBuilder b) =>
      b..G__typename = 'RideNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GRideStatusEnum get status;
  DateTime? get startTime;
  bool get isCreator;
  bool get isFinished;
  String get inviteCode;
  int get timeLimitMinutes;
  static Serializer<GJoinRideData_joinRide_ride> get serializer =>
      _$gJoinRideDataJoinRideRideSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GJoinRideData_joinRide_ride.serializer, this) as Map<String, dynamic>);
  static GJoinRideData_joinRide_ride? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GJoinRideData_joinRide_ride.serializer, json);
}

abstract class GRideNodeFields {
  String get G__typename;
  String get id;
  _i2.GRideStatusEnum get status;
  DateTime? get startTime;
  bool get isCreator;
  bool get isFinished;
  String get inviteCode;
  int get timeLimitMinutes;
  Map<String, dynamic> toJson();
}

abstract class GRideNodeFieldsData
    implements
        Built<GRideNodeFieldsData, GRideNodeFieldsDataBuilder>,
        GRideNodeFields {
  GRideNodeFieldsData._();

  factory GRideNodeFieldsData(
      [Function(GRideNodeFieldsDataBuilder b) updates]) = _$GRideNodeFieldsData;

  static void _initializeBuilder(GRideNodeFieldsDataBuilder b) =>
      b..G__typename = 'RideNode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GRideStatusEnum get status;
  DateTime? get startTime;
  bool get isCreator;
  bool get isFinished;
  String get inviteCode;
  int get timeLimitMinutes;
  static Serializer<GRideNodeFieldsData> get serializer =>
      _$gRideNodeFieldsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRideNodeFieldsData.serializer, this)
          as Map<String, dynamic>);
  static GRideNodeFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRideNodeFieldsData.serializer, json);
}

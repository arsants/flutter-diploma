// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Competition.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetRideData> _$gGetRideDataSerializer =
    new _$GGetRideDataSerializer();
Serializer<GGetRideData_ride> _$gGetRideDataRideSerializer =
    new _$GGetRideData_rideSerializer();
Serializer<GGetRideData_ride_results> _$gGetRideDataRideResultsSerializer =
    new _$GGetRideData_ride_resultsSerializer();
Serializer<GGetRideData_ride_results_user>
    _$gGetRideDataRideResultsUserSerializer =
    new _$GGetRideData_ride_results_userSerializer();
Serializer<GCreateHistoricRideData> _$gCreateHistoricRideDataSerializer =
    new _$GCreateHistoricRideDataSerializer();
Serializer<GCreateHistoricRideData_createRide>
    _$gCreateHistoricRideDataCreateRideSerializer =
    new _$GCreateHistoricRideData_createRideSerializer();
Serializer<GCreateHistoricRideData_createRide_ride>
    _$gCreateHistoricRideDataCreateRideRideSerializer =
    new _$GCreateHistoricRideData_createRide_rideSerializer();
Serializer<GCreateRideData> _$gCreateRideDataSerializer =
    new _$GCreateRideDataSerializer();
Serializer<GCreateRideData_createRide> _$gCreateRideDataCreateRideSerializer =
    new _$GCreateRideData_createRideSerializer();
Serializer<GCreateRideData_createRide_ride>
    _$gCreateRideDataCreateRideRideSerializer =
    new _$GCreateRideData_createRide_rideSerializer();
Serializer<GStartRideData> _$gStartRideDataSerializer =
    new _$GStartRideDataSerializer();
Serializer<GStartRideData_startRide> _$gStartRideDataStartRideSerializer =
    new _$GStartRideData_startRideSerializer();
Serializer<GStartRideData_startRide_ride>
    _$gStartRideDataStartRideRideSerializer =
    new _$GStartRideData_startRide_rideSerializer();
Serializer<GLeaveRideData> _$gLeaveRideDataSerializer =
    new _$GLeaveRideDataSerializer();
Serializer<GLeaveRideData_leaveRide> _$gLeaveRideDataLeaveRideSerializer =
    new _$GLeaveRideData_leaveRideSerializer();
Serializer<GJoinRideData> _$gJoinRideDataSerializer =
    new _$GJoinRideDataSerializer();
Serializer<GJoinRideData_joinRide> _$gJoinRideDataJoinRideSerializer =
    new _$GJoinRideData_joinRideSerializer();
Serializer<GJoinRideData_joinRide_ride> _$gJoinRideDataJoinRideRideSerializer =
    new _$GJoinRideData_joinRide_rideSerializer();
Serializer<GRideNodeFieldsData> _$gRideNodeFieldsDataSerializer =
    new _$GRideNodeFieldsDataSerializer();

class _$GGetRideDataSerializer implements StructuredSerializer<GGetRideData> {
  @override
  final Iterable<Type> types = const [GGetRideData, _$GGetRideData];
  @override
  final String wireName = 'GGetRideData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetRideData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'ride',
      serializers.serialize(object.ride,
          specifiedType: const FullType(GGetRideData_ride)),
    ];

    return result;
  }

  @override
  GGetRideData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRideDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ride':
          result.ride.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetRideData_ride))!
              as GGetRideData_ride);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRideData_rideSerializer
    implements StructuredSerializer<GGetRideData_ride> {
  @override
  final Iterable<Type> types = const [GGetRideData_ride, _$GGetRideData_ride];
  @override
  final String wireName = 'GGetRideData_ride';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetRideData_ride object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'results',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetRideData_ride_results)])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GRideStatusEnum)),
      'isCreator',
      serializers.serialize(object.isCreator,
          specifiedType: const FullType(bool)),
      'isFinished',
      serializers.serialize(object.isFinished,
          specifiedType: const FullType(bool)),
      'inviteCode',
      serializers.serialize(object.inviteCode,
          specifiedType: const FullType(String)),
      'timeLimitMinutes',
      serializers.serialize(object.timeLimitMinutes,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GGetRideData_ride deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRideData_rideBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetRideData_ride_results)
              ]))! as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GRideStatusEnum))
              as _i2.GRideStatusEnum;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'isCreator':
          result.isCreator = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isFinished':
          result.isFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'inviteCode':
          result.inviteCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeLimitMinutes':
          result.timeLimitMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRideData_ride_resultsSerializer
    implements StructuredSerializer<GGetRideData_ride_results> {
  @override
  final Iterable<Type> types = const [
    GGetRideData_ride_results,
    _$GGetRideData_ride_results
  ];
  @override
  final String wireName = 'GGetRideData_ride_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRideData_ride_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isMe',
      serializers.serialize(object.isMe, specifiedType: const FullType(bool)),
      'isHistoric',
      serializers.serialize(object.isHistoric,
          specifiedType: const FullType(bool)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(GGetRideData_ride_results_user)),
      'distanceMeters',
      serializers.serialize(object.distanceMeters,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GGetRideData_ride_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRideData_ride_resultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isMe':
          result.isMe = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isHistoric':
          result.isHistoric = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetRideData_ride_results_user))!
              as GGetRideData_ride_results_user);
          break;
        case 'distanceMeters':
          result.distanceMeters = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRideData_ride_results_userSerializer
    implements StructuredSerializer<GGetRideData_ride_results_user> {
  @override
  final Iterable<Type> types = const [
    GGetRideData_ride_results_user,
    _$GGetRideData_ride_results_user
  ];
  @override
  final String wireName = 'GGetRideData_ride_results_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRideData_ride_results_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetRideData_ride_results_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRideData_ride_results_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateHistoricRideDataSerializer
    implements StructuredSerializer<GCreateHistoricRideData> {
  @override
  final Iterable<Type> types = const [
    GCreateHistoricRideData,
    _$GCreateHistoricRideData
  ];
  @override
  final String wireName = 'GCreateHistoricRideData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateHistoricRideData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createRide;
    if (value != null) {
      result
        ..add('createRide')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCreateHistoricRideData_createRide)));
    }
    return result;
  }

  @override
  GCreateHistoricRideData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateHistoricRideDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createRide':
          result.createRide.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateHistoricRideData_createRide))!
              as GCreateHistoricRideData_createRide);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateHistoricRideData_createRideSerializer
    implements StructuredSerializer<GCreateHistoricRideData_createRide> {
  @override
  final Iterable<Type> types = const [
    GCreateHistoricRideData_createRide,
    _$GCreateHistoricRideData_createRide
  ];
  @override
  final String wireName = 'GCreateHistoricRideData_createRide';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateHistoricRideData_createRide object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'ride',
      serializers.serialize(object.ride,
          specifiedType:
              const FullType(GCreateHistoricRideData_createRide_ride)),
    ];

    return result;
  }

  @override
  GCreateHistoricRideData_createRide deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateHistoricRideData_createRideBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ride':
          result.ride.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateHistoricRideData_createRide_ride))!
              as GCreateHistoricRideData_createRide_ride);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateHistoricRideData_createRide_rideSerializer
    implements StructuredSerializer<GCreateHistoricRideData_createRide_ride> {
  @override
  final Iterable<Type> types = const [
    GCreateHistoricRideData_createRide_ride,
    _$GCreateHistoricRideData_createRide_ride
  ];
  @override
  final String wireName = 'GCreateHistoricRideData_createRide_ride';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateHistoricRideData_createRide_ride object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GRideStatusEnum)),
      'isCreator',
      serializers.serialize(object.isCreator,
          specifiedType: const FullType(bool)),
      'isFinished',
      serializers.serialize(object.isFinished,
          specifiedType: const FullType(bool)),
      'inviteCode',
      serializers.serialize(object.inviteCode,
          specifiedType: const FullType(String)),
      'timeLimitMinutes',
      serializers.serialize(object.timeLimitMinutes,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GCreateHistoricRideData_createRide_ride deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateHistoricRideData_createRide_rideBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GRideStatusEnum))
              as _i2.GRideStatusEnum;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'isCreator':
          result.isCreator = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isFinished':
          result.isFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'inviteCode':
          result.inviteCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeLimitMinutes':
          result.timeLimitMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateRideDataSerializer
    implements StructuredSerializer<GCreateRideData> {
  @override
  final Iterable<Type> types = const [GCreateRideData, _$GCreateRideData];
  @override
  final String wireName = 'GCreateRideData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateRideData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createRide;
    if (value != null) {
      result
        ..add('createRide')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCreateRideData_createRide)));
    }
    return result;
  }

  @override
  GCreateRideData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateRideDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createRide':
          result.createRide.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreateRideData_createRide))!
              as GCreateRideData_createRide);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateRideData_createRideSerializer
    implements StructuredSerializer<GCreateRideData_createRide> {
  @override
  final Iterable<Type> types = const [
    GCreateRideData_createRide,
    _$GCreateRideData_createRide
  ];
  @override
  final String wireName = 'GCreateRideData_createRide';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateRideData_createRide object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'ride',
      serializers.serialize(object.ride,
          specifiedType: const FullType(GCreateRideData_createRide_ride)),
    ];

    return result;
  }

  @override
  GCreateRideData_createRide deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateRideData_createRideBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ride':
          result.ride.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateRideData_createRide_ride))!
              as GCreateRideData_createRide_ride);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateRideData_createRide_rideSerializer
    implements StructuredSerializer<GCreateRideData_createRide_ride> {
  @override
  final Iterable<Type> types = const [
    GCreateRideData_createRide_ride,
    _$GCreateRideData_createRide_ride
  ];
  @override
  final String wireName = 'GCreateRideData_createRide_ride';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateRideData_createRide_ride object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GRideStatusEnum)),
      'isCreator',
      serializers.serialize(object.isCreator,
          specifiedType: const FullType(bool)),
      'isFinished',
      serializers.serialize(object.isFinished,
          specifiedType: const FullType(bool)),
      'inviteCode',
      serializers.serialize(object.inviteCode,
          specifiedType: const FullType(String)),
      'timeLimitMinutes',
      serializers.serialize(object.timeLimitMinutes,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GCreateRideData_createRide_ride deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateRideData_createRide_rideBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GRideStatusEnum))
              as _i2.GRideStatusEnum;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'isCreator':
          result.isCreator = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isFinished':
          result.isFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'inviteCode':
          result.inviteCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeLimitMinutes':
          result.timeLimitMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GStartRideDataSerializer
    implements StructuredSerializer<GStartRideData> {
  @override
  final Iterable<Type> types = const [GStartRideData, _$GStartRideData];
  @override
  final String wireName = 'GStartRideData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GStartRideData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.startRide;
    if (value != null) {
      result
        ..add('startRide')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStartRideData_startRide)));
    }
    return result;
  }

  @override
  GStartRideData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStartRideDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startRide':
          result.startRide.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStartRideData_startRide))!
              as GStartRideData_startRide);
          break;
      }
    }

    return result.build();
  }
}

class _$GStartRideData_startRideSerializer
    implements StructuredSerializer<GStartRideData_startRide> {
  @override
  final Iterable<Type> types = const [
    GStartRideData_startRide,
    _$GStartRideData_startRide
  ];
  @override
  final String wireName = 'GStartRideData_startRide';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStartRideData_startRide object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'ride',
      serializers.serialize(object.ride,
          specifiedType: const FullType(GStartRideData_startRide_ride)),
    ];

    return result;
  }

  @override
  GStartRideData_startRide deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStartRideData_startRideBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ride':
          result.ride.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStartRideData_startRide_ride))!
              as GStartRideData_startRide_ride);
          break;
      }
    }

    return result.build();
  }
}

class _$GStartRideData_startRide_rideSerializer
    implements StructuredSerializer<GStartRideData_startRide_ride> {
  @override
  final Iterable<Type> types = const [
    GStartRideData_startRide_ride,
    _$GStartRideData_startRide_ride
  ];
  @override
  final String wireName = 'GStartRideData_startRide_ride';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStartRideData_startRide_ride object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GRideStatusEnum)),
      'isCreator',
      serializers.serialize(object.isCreator,
          specifiedType: const FullType(bool)),
      'isFinished',
      serializers.serialize(object.isFinished,
          specifiedType: const FullType(bool)),
      'inviteCode',
      serializers.serialize(object.inviteCode,
          specifiedType: const FullType(String)),
      'timeLimitMinutes',
      serializers.serialize(object.timeLimitMinutes,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GStartRideData_startRide_ride deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStartRideData_startRide_rideBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GRideStatusEnum))
              as _i2.GRideStatusEnum;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'isCreator':
          result.isCreator = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isFinished':
          result.isFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'inviteCode':
          result.inviteCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeLimitMinutes':
          result.timeLimitMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GLeaveRideDataSerializer
    implements StructuredSerializer<GLeaveRideData> {
  @override
  final Iterable<Type> types = const [GLeaveRideData, _$GLeaveRideData];
  @override
  final String wireName = 'GLeaveRideData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLeaveRideData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.leaveRide;
    if (value != null) {
      result
        ..add('leaveRide')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLeaveRideData_leaveRide)));
    }
    return result;
  }

  @override
  GLeaveRideData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLeaveRideDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'leaveRide':
          result.leaveRide.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLeaveRideData_leaveRide))!
              as GLeaveRideData_leaveRide);
          break;
      }
    }

    return result.build();
  }
}

class _$GLeaveRideData_leaveRideSerializer
    implements StructuredSerializer<GLeaveRideData_leaveRide> {
  @override
  final Iterable<Type> types = const [
    GLeaveRideData_leaveRide,
    _$GLeaveRideData_leaveRide
  ];
  @override
  final String wireName = 'GLeaveRideData_leaveRide';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLeaveRideData_leaveRide object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GLeaveRideData_leaveRide deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLeaveRideData_leaveRideBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GJoinRideDataSerializer implements StructuredSerializer<GJoinRideData> {
  @override
  final Iterable<Type> types = const [GJoinRideData, _$GJoinRideData];
  @override
  final String wireName = 'GJoinRideData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GJoinRideData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.joinRide;
    if (value != null) {
      result
        ..add('joinRide')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GJoinRideData_joinRide)));
    }
    return result;
  }

  @override
  GJoinRideData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GJoinRideDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'joinRide':
          result.joinRide.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GJoinRideData_joinRide))!
              as GJoinRideData_joinRide);
          break;
      }
    }

    return result.build();
  }
}

class _$GJoinRideData_joinRideSerializer
    implements StructuredSerializer<GJoinRideData_joinRide> {
  @override
  final Iterable<Type> types = const [
    GJoinRideData_joinRide,
    _$GJoinRideData_joinRide
  ];
  @override
  final String wireName = 'GJoinRideData_joinRide';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GJoinRideData_joinRide object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'ride',
      serializers.serialize(object.ride,
          specifiedType: const FullType(GJoinRideData_joinRide_ride)),
    ];

    return result;
  }

  @override
  GJoinRideData_joinRide deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GJoinRideData_joinRideBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ride':
          result.ride.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GJoinRideData_joinRide_ride))!
              as GJoinRideData_joinRide_ride);
          break;
      }
    }

    return result.build();
  }
}

class _$GJoinRideData_joinRide_rideSerializer
    implements StructuredSerializer<GJoinRideData_joinRide_ride> {
  @override
  final Iterable<Type> types = const [
    GJoinRideData_joinRide_ride,
    _$GJoinRideData_joinRide_ride
  ];
  @override
  final String wireName = 'GJoinRideData_joinRide_ride';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GJoinRideData_joinRide_ride object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GRideStatusEnum)),
      'isCreator',
      serializers.serialize(object.isCreator,
          specifiedType: const FullType(bool)),
      'isFinished',
      serializers.serialize(object.isFinished,
          specifiedType: const FullType(bool)),
      'inviteCode',
      serializers.serialize(object.inviteCode,
          specifiedType: const FullType(String)),
      'timeLimitMinutes',
      serializers.serialize(object.timeLimitMinutes,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GJoinRideData_joinRide_ride deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GJoinRideData_joinRide_rideBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GRideStatusEnum))
              as _i2.GRideStatusEnum;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'isCreator':
          result.isCreator = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isFinished':
          result.isFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'inviteCode':
          result.inviteCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeLimitMinutes':
          result.timeLimitMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GRideNodeFieldsDataSerializer
    implements StructuredSerializer<GRideNodeFieldsData> {
  @override
  final Iterable<Type> types = const [
    GRideNodeFieldsData,
    _$GRideNodeFieldsData
  ];
  @override
  final String wireName = 'GRideNodeFieldsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRideNodeFieldsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GRideStatusEnum)),
      'isCreator',
      serializers.serialize(object.isCreator,
          specifiedType: const FullType(bool)),
      'isFinished',
      serializers.serialize(object.isFinished,
          specifiedType: const FullType(bool)),
      'inviteCode',
      serializers.serialize(object.inviteCode,
          specifiedType: const FullType(String)),
      'timeLimitMinutes',
      serializers.serialize(object.timeLimitMinutes,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GRideNodeFieldsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRideNodeFieldsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GRideStatusEnum))
              as _i2.GRideStatusEnum;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'isCreator':
          result.isCreator = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isFinished':
          result.isFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'inviteCode':
          result.inviteCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeLimitMinutes':
          result.timeLimitMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRideData extends GGetRideData {
  @override
  final String G__typename;
  @override
  final GGetRideData_ride ride;

  factory _$GGetRideData([void Function(GGetRideDataBuilder)? updates]) =>
      (new GGetRideDataBuilder()..update(updates)).build();

  _$GGetRideData._({required this.G__typename, required this.ride})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetRideData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(ride, 'GGetRideData', 'ride');
  }

  @override
  GGetRideData rebuild(void Function(GGetRideDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRideDataBuilder toBuilder() => new GGetRideDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRideData &&
        G__typename == other.G__typename &&
        ride == other.ride;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), ride.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRideData')
          ..add('G__typename', G__typename)
          ..add('ride', ride))
        .toString();
  }
}

class GGetRideDataBuilder
    implements Builder<GGetRideData, GGetRideDataBuilder> {
  _$GGetRideData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetRideData_rideBuilder? _ride;
  GGetRideData_rideBuilder get ride =>
      _$this._ride ??= new GGetRideData_rideBuilder();
  set ride(GGetRideData_rideBuilder? ride) => _$this._ride = ride;

  GGetRideDataBuilder() {
    GGetRideData._initializeBuilder(this);
  }

  GGetRideDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ride = $v.ride.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRideData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRideData;
  }

  @override
  void update(void Function(GGetRideDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRideData build() {
    _$GGetRideData _$result;
    try {
      _$result = _$v ??
          new _$GGetRideData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetRideData', 'G__typename'),
              ride: ride.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ride';
        ride.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRideData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRideData_ride extends GGetRideData_ride {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetRideData_ride_results> results;
  @override
  final String id;
  @override
  final _i2.GRideStatusEnum status;
  @override
  final DateTime? startTime;
  @override
  final bool isCreator;
  @override
  final bool isFinished;
  @override
  final String inviteCode;
  @override
  final int timeLimitMinutes;

  factory _$GGetRideData_ride(
          [void Function(GGetRideData_rideBuilder)? updates]) =>
      (new GGetRideData_rideBuilder()..update(updates)).build();

  _$GGetRideData_ride._(
      {required this.G__typename,
      required this.results,
      required this.id,
      required this.status,
      this.startTime,
      required this.isCreator,
      required this.isFinished,
      required this.inviteCode,
      required this.timeLimitMinutes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetRideData_ride', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        results, 'GGetRideData_ride', 'results');
    BuiltValueNullFieldError.checkNotNull(id, 'GGetRideData_ride', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GGetRideData_ride', 'status');
    BuiltValueNullFieldError.checkNotNull(
        isCreator, 'GGetRideData_ride', 'isCreator');
    BuiltValueNullFieldError.checkNotNull(
        isFinished, 'GGetRideData_ride', 'isFinished');
    BuiltValueNullFieldError.checkNotNull(
        inviteCode, 'GGetRideData_ride', 'inviteCode');
    BuiltValueNullFieldError.checkNotNull(
        timeLimitMinutes, 'GGetRideData_ride', 'timeLimitMinutes');
  }

  @override
  GGetRideData_ride rebuild(void Function(GGetRideData_rideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRideData_rideBuilder toBuilder() =>
      new GGetRideData_rideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRideData_ride &&
        G__typename == other.G__typename &&
        results == other.results &&
        id == other.id &&
        status == other.status &&
        startTime == other.startTime &&
        isCreator == other.isCreator &&
        isFinished == other.isFinished &&
        inviteCode == other.inviteCode &&
        timeLimitMinutes == other.timeLimitMinutes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, G__typename.hashCode),
                                    results.hashCode),
                                id.hashCode),
                            status.hashCode),
                        startTime.hashCode),
                    isCreator.hashCode),
                isFinished.hashCode),
            inviteCode.hashCode),
        timeLimitMinutes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRideData_ride')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('id', id)
          ..add('status', status)
          ..add('startTime', startTime)
          ..add('isCreator', isCreator)
          ..add('isFinished', isFinished)
          ..add('inviteCode', inviteCode)
          ..add('timeLimitMinutes', timeLimitMinutes))
        .toString();
  }
}

class GGetRideData_rideBuilder
    implements Builder<GGetRideData_ride, GGetRideData_rideBuilder> {
  _$GGetRideData_ride? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetRideData_ride_results>? _results;
  ListBuilder<GGetRideData_ride_results> get results =>
      _$this._results ??= new ListBuilder<GGetRideData_ride_results>();
  set results(ListBuilder<GGetRideData_ride_results>? results) =>
      _$this._results = results;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GRideStatusEnum? _status;
  _i2.GRideStatusEnum? get status => _$this._status;
  set status(_i2.GRideStatusEnum? status) => _$this._status = status;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  bool? _isCreator;
  bool? get isCreator => _$this._isCreator;
  set isCreator(bool? isCreator) => _$this._isCreator = isCreator;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  String? _inviteCode;
  String? get inviteCode => _$this._inviteCode;
  set inviteCode(String? inviteCode) => _$this._inviteCode = inviteCode;

  int? _timeLimitMinutes;
  int? get timeLimitMinutes => _$this._timeLimitMinutes;
  set timeLimitMinutes(int? timeLimitMinutes) =>
      _$this._timeLimitMinutes = timeLimitMinutes;

  GGetRideData_rideBuilder() {
    GGetRideData_ride._initializeBuilder(this);
  }

  GGetRideData_rideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _results = $v.results.toBuilder();
      _id = $v.id;
      _status = $v.status;
      _startTime = $v.startTime;
      _isCreator = $v.isCreator;
      _isFinished = $v.isFinished;
      _inviteCode = $v.inviteCode;
      _timeLimitMinutes = $v.timeLimitMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRideData_ride other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRideData_ride;
  }

  @override
  void update(void Function(GGetRideData_rideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRideData_ride build() {
    _$GGetRideData_ride _$result;
    try {
      _$result = _$v ??
          new _$GGetRideData_ride._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetRideData_ride', 'G__typename'),
              results: results.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetRideData_ride', 'id'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'GGetRideData_ride', 'status'),
              startTime: startTime,
              isCreator: BuiltValueNullFieldError.checkNotNull(
                  isCreator, 'GGetRideData_ride', 'isCreator'),
              isFinished: BuiltValueNullFieldError.checkNotNull(
                  isFinished, 'GGetRideData_ride', 'isFinished'),
              inviteCode: BuiltValueNullFieldError.checkNotNull(
                  inviteCode, 'GGetRideData_ride', 'inviteCode'),
              timeLimitMinutes: BuiltValueNullFieldError.checkNotNull(
                  timeLimitMinutes, 'GGetRideData_ride', 'timeLimitMinutes'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRideData_ride', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRideData_ride_results extends GGetRideData_ride_results {
  @override
  final String G__typename;
  @override
  final bool isMe;
  @override
  final bool isHistoric;
  @override
  final String id;
  @override
  final GGetRideData_ride_results_user user;
  @override
  final double distanceMeters;

  factory _$GGetRideData_ride_results(
          [void Function(GGetRideData_ride_resultsBuilder)? updates]) =>
      (new GGetRideData_ride_resultsBuilder()..update(updates)).build();

  _$GGetRideData_ride_results._(
      {required this.G__typename,
      required this.isMe,
      required this.isHistoric,
      required this.id,
      required this.user,
      required this.distanceMeters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetRideData_ride_results', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isMe, 'GGetRideData_ride_results', 'isMe');
    BuiltValueNullFieldError.checkNotNull(
        isHistoric, 'GGetRideData_ride_results', 'isHistoric');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRideData_ride_results', 'id');
    BuiltValueNullFieldError.checkNotNull(
        user, 'GGetRideData_ride_results', 'user');
    BuiltValueNullFieldError.checkNotNull(
        distanceMeters, 'GGetRideData_ride_results', 'distanceMeters');
  }

  @override
  GGetRideData_ride_results rebuild(
          void Function(GGetRideData_ride_resultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRideData_ride_resultsBuilder toBuilder() =>
      new GGetRideData_ride_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRideData_ride_results &&
        G__typename == other.G__typename &&
        isMe == other.isMe &&
        isHistoric == other.isHistoric &&
        id == other.id &&
        user == other.user &&
        distanceMeters == other.distanceMeters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), isMe.hashCode),
                    isHistoric.hashCode),
                id.hashCode),
            user.hashCode),
        distanceMeters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRideData_ride_results')
          ..add('G__typename', G__typename)
          ..add('isMe', isMe)
          ..add('isHistoric', isHistoric)
          ..add('id', id)
          ..add('user', user)
          ..add('distanceMeters', distanceMeters))
        .toString();
  }
}

class GGetRideData_ride_resultsBuilder
    implements
        Builder<GGetRideData_ride_results, GGetRideData_ride_resultsBuilder> {
  _$GGetRideData_ride_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _isMe;
  bool? get isMe => _$this._isMe;
  set isMe(bool? isMe) => _$this._isMe = isMe;

  bool? _isHistoric;
  bool? get isHistoric => _$this._isHistoric;
  set isHistoric(bool? isHistoric) => _$this._isHistoric = isHistoric;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetRideData_ride_results_userBuilder? _user;
  GGetRideData_ride_results_userBuilder get user =>
      _$this._user ??= new GGetRideData_ride_results_userBuilder();
  set user(GGetRideData_ride_results_userBuilder? user) => _$this._user = user;

  double? _distanceMeters;
  double? get distanceMeters => _$this._distanceMeters;
  set distanceMeters(double? distanceMeters) =>
      _$this._distanceMeters = distanceMeters;

  GGetRideData_ride_resultsBuilder() {
    GGetRideData_ride_results._initializeBuilder(this);
  }

  GGetRideData_ride_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _isMe = $v.isMe;
      _isHistoric = $v.isHistoric;
      _id = $v.id;
      _user = $v.user.toBuilder();
      _distanceMeters = $v.distanceMeters;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRideData_ride_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRideData_ride_results;
  }

  @override
  void update(void Function(GGetRideData_ride_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRideData_ride_results build() {
    _$GGetRideData_ride_results _$result;
    try {
      _$result = _$v ??
          new _$GGetRideData_ride_results._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetRideData_ride_results', 'G__typename'),
              isMe: BuiltValueNullFieldError.checkNotNull(
                  isMe, 'GGetRideData_ride_results', 'isMe'),
              isHistoric: BuiltValueNullFieldError.checkNotNull(
                  isHistoric, 'GGetRideData_ride_results', 'isHistoric'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetRideData_ride_results', 'id'),
              user: user.build(),
              distanceMeters: BuiltValueNullFieldError.checkNotNull(
                  distanceMeters,
                  'GGetRideData_ride_results',
                  'distanceMeters'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRideData_ride_results', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRideData_ride_results_user extends GGetRideData_ride_results_user {
  @override
  final String G__typename;
  @override
  final String username;

  factory _$GGetRideData_ride_results_user(
          [void Function(GGetRideData_ride_results_userBuilder)? updates]) =>
      (new GGetRideData_ride_results_userBuilder()..update(updates)).build();

  _$GGetRideData_ride_results_user._(
      {required this.G__typename, required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetRideData_ride_results_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GGetRideData_ride_results_user', 'username');
  }

  @override
  GGetRideData_ride_results_user rebuild(
          void Function(GGetRideData_ride_results_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRideData_ride_results_userBuilder toBuilder() =>
      new GGetRideData_ride_results_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRideData_ride_results_user &&
        G__typename == other.G__typename &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRideData_ride_results_user')
          ..add('G__typename', G__typename)
          ..add('username', username))
        .toString();
  }
}

class GGetRideData_ride_results_userBuilder
    implements
        Builder<GGetRideData_ride_results_user,
            GGetRideData_ride_results_userBuilder> {
  _$GGetRideData_ride_results_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GGetRideData_ride_results_userBuilder() {
    GGetRideData_ride_results_user._initializeBuilder(this);
  }

  GGetRideData_ride_results_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRideData_ride_results_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRideData_ride_results_user;
  }

  @override
  void update(void Function(GGetRideData_ride_results_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRideData_ride_results_user build() {
    final _$result = _$v ??
        new _$GGetRideData_ride_results_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetRideData_ride_results_user', 'G__typename'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GGetRideData_ride_results_user', 'username'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateHistoricRideData extends GCreateHistoricRideData {
  @override
  final String G__typename;
  @override
  final GCreateHistoricRideData_createRide? createRide;

  factory _$GCreateHistoricRideData(
          [void Function(GCreateHistoricRideDataBuilder)? updates]) =>
      (new GCreateHistoricRideDataBuilder()..update(updates)).build();

  _$GCreateHistoricRideData._({required this.G__typename, this.createRide})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateHistoricRideData', 'G__typename');
  }

  @override
  GCreateHistoricRideData rebuild(
          void Function(GCreateHistoricRideDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateHistoricRideDataBuilder toBuilder() =>
      new GCreateHistoricRideDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateHistoricRideData &&
        G__typename == other.G__typename &&
        createRide == other.createRide;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createRide.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateHistoricRideData')
          ..add('G__typename', G__typename)
          ..add('createRide', createRide))
        .toString();
  }
}

class GCreateHistoricRideDataBuilder
    implements
        Builder<GCreateHistoricRideData, GCreateHistoricRideDataBuilder> {
  _$GCreateHistoricRideData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateHistoricRideData_createRideBuilder? _createRide;
  GCreateHistoricRideData_createRideBuilder get createRide =>
      _$this._createRide ??= new GCreateHistoricRideData_createRideBuilder();
  set createRide(GCreateHistoricRideData_createRideBuilder? createRide) =>
      _$this._createRide = createRide;

  GCreateHistoricRideDataBuilder() {
    GCreateHistoricRideData._initializeBuilder(this);
  }

  GCreateHistoricRideDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createRide = $v.createRide?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateHistoricRideData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateHistoricRideData;
  }

  @override
  void update(void Function(GCreateHistoricRideDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateHistoricRideData build() {
    _$GCreateHistoricRideData _$result;
    try {
      _$result = _$v ??
          new _$GCreateHistoricRideData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreateHistoricRideData', 'G__typename'),
              createRide: _createRide?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createRide';
        _createRide?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateHistoricRideData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateHistoricRideData_createRide
    extends GCreateHistoricRideData_createRide {
  @override
  final String G__typename;
  @override
  final GCreateHistoricRideData_createRide_ride ride;

  factory _$GCreateHistoricRideData_createRide(
          [void Function(GCreateHistoricRideData_createRideBuilder)?
              updates]) =>
      (new GCreateHistoricRideData_createRideBuilder()..update(updates))
          .build();

  _$GCreateHistoricRideData_createRide._(
      {required this.G__typename, required this.ride})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateHistoricRideData_createRide', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        ride, 'GCreateHistoricRideData_createRide', 'ride');
  }

  @override
  GCreateHistoricRideData_createRide rebuild(
          void Function(GCreateHistoricRideData_createRideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateHistoricRideData_createRideBuilder toBuilder() =>
      new GCreateHistoricRideData_createRideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateHistoricRideData_createRide &&
        G__typename == other.G__typename &&
        ride == other.ride;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), ride.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateHistoricRideData_createRide')
          ..add('G__typename', G__typename)
          ..add('ride', ride))
        .toString();
  }
}

class GCreateHistoricRideData_createRideBuilder
    implements
        Builder<GCreateHistoricRideData_createRide,
            GCreateHistoricRideData_createRideBuilder> {
  _$GCreateHistoricRideData_createRide? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateHistoricRideData_createRide_rideBuilder? _ride;
  GCreateHistoricRideData_createRide_rideBuilder get ride =>
      _$this._ride ??= new GCreateHistoricRideData_createRide_rideBuilder();
  set ride(GCreateHistoricRideData_createRide_rideBuilder? ride) =>
      _$this._ride = ride;

  GCreateHistoricRideData_createRideBuilder() {
    GCreateHistoricRideData_createRide._initializeBuilder(this);
  }

  GCreateHistoricRideData_createRideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ride = $v.ride.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateHistoricRideData_createRide other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateHistoricRideData_createRide;
  }

  @override
  void update(
      void Function(GCreateHistoricRideData_createRideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateHistoricRideData_createRide build() {
    _$GCreateHistoricRideData_createRide _$result;
    try {
      _$result = _$v ??
          new _$GCreateHistoricRideData_createRide._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GCreateHistoricRideData_createRide', 'G__typename'),
              ride: ride.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ride';
        ride.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateHistoricRideData_createRide', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateHistoricRideData_createRide_ride
    extends GCreateHistoricRideData_createRide_ride {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GRideStatusEnum status;
  @override
  final DateTime? startTime;
  @override
  final bool isCreator;
  @override
  final bool isFinished;
  @override
  final String inviteCode;
  @override
  final int timeLimitMinutes;

  factory _$GCreateHistoricRideData_createRide_ride(
          [void Function(GCreateHistoricRideData_createRide_rideBuilder)?
              updates]) =>
      (new GCreateHistoricRideData_createRide_rideBuilder()..update(updates))
          .build();

  _$GCreateHistoricRideData_createRide_ride._(
      {required this.G__typename,
      required this.id,
      required this.status,
      this.startTime,
      required this.isCreator,
      required this.isFinished,
      required this.inviteCode,
      required this.timeLimitMinutes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateHistoricRideData_createRide_ride', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCreateHistoricRideData_createRide_ride', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GCreateHistoricRideData_createRide_ride', 'status');
    BuiltValueNullFieldError.checkNotNull(
        isCreator, 'GCreateHistoricRideData_createRide_ride', 'isCreator');
    BuiltValueNullFieldError.checkNotNull(
        isFinished, 'GCreateHistoricRideData_createRide_ride', 'isFinished');
    BuiltValueNullFieldError.checkNotNull(
        inviteCode, 'GCreateHistoricRideData_createRide_ride', 'inviteCode');
    BuiltValueNullFieldError.checkNotNull(timeLimitMinutes,
        'GCreateHistoricRideData_createRide_ride', 'timeLimitMinutes');
  }

  @override
  GCreateHistoricRideData_createRide_ride rebuild(
          void Function(GCreateHistoricRideData_createRide_rideBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateHistoricRideData_createRide_rideBuilder toBuilder() =>
      new GCreateHistoricRideData_createRide_rideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateHistoricRideData_createRide_ride &&
        G__typename == other.G__typename &&
        id == other.id &&
        status == other.status &&
        startTime == other.startTime &&
        isCreator == other.isCreator &&
        isFinished == other.isFinished &&
        inviteCode == other.inviteCode &&
        timeLimitMinutes == other.timeLimitMinutes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                            status.hashCode),
                        startTime.hashCode),
                    isCreator.hashCode),
                isFinished.hashCode),
            inviteCode.hashCode),
        timeLimitMinutes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GCreateHistoricRideData_createRide_ride')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('status', status)
          ..add('startTime', startTime)
          ..add('isCreator', isCreator)
          ..add('isFinished', isFinished)
          ..add('inviteCode', inviteCode)
          ..add('timeLimitMinutes', timeLimitMinutes))
        .toString();
  }
}

class GCreateHistoricRideData_createRide_rideBuilder
    implements
        Builder<GCreateHistoricRideData_createRide_ride,
            GCreateHistoricRideData_createRide_rideBuilder> {
  _$GCreateHistoricRideData_createRide_ride? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GRideStatusEnum? _status;
  _i2.GRideStatusEnum? get status => _$this._status;
  set status(_i2.GRideStatusEnum? status) => _$this._status = status;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  bool? _isCreator;
  bool? get isCreator => _$this._isCreator;
  set isCreator(bool? isCreator) => _$this._isCreator = isCreator;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  String? _inviteCode;
  String? get inviteCode => _$this._inviteCode;
  set inviteCode(String? inviteCode) => _$this._inviteCode = inviteCode;

  int? _timeLimitMinutes;
  int? get timeLimitMinutes => _$this._timeLimitMinutes;
  set timeLimitMinutes(int? timeLimitMinutes) =>
      _$this._timeLimitMinutes = timeLimitMinutes;

  GCreateHistoricRideData_createRide_rideBuilder() {
    GCreateHistoricRideData_createRide_ride._initializeBuilder(this);
  }

  GCreateHistoricRideData_createRide_rideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _status = $v.status;
      _startTime = $v.startTime;
      _isCreator = $v.isCreator;
      _isFinished = $v.isFinished;
      _inviteCode = $v.inviteCode;
      _timeLimitMinutes = $v.timeLimitMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateHistoricRideData_createRide_ride other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateHistoricRideData_createRide_ride;
  }

  @override
  void update(
      void Function(GCreateHistoricRideData_createRide_rideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateHistoricRideData_createRide_ride build() {
    final _$result = _$v ??
        new _$GCreateHistoricRideData_createRide_ride._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GCreateHistoricRideData_createRide_ride', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCreateHistoricRideData_createRide_ride', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GCreateHistoricRideData_createRide_ride', 'status'),
            startTime: startTime,
            isCreator: BuiltValueNullFieldError.checkNotNull(
                isCreator, 'GCreateHistoricRideData_createRide_ride', 'isCreator'),
            isFinished: BuiltValueNullFieldError.checkNotNull(
                isFinished, 'GCreateHistoricRideData_createRide_ride', 'isFinished'),
            inviteCode: BuiltValueNullFieldError.checkNotNull(
                inviteCode, 'GCreateHistoricRideData_createRide_ride', 'inviteCode'),
            timeLimitMinutes: BuiltValueNullFieldError.checkNotNull(
                timeLimitMinutes,
                'GCreateHistoricRideData_createRide_ride',
                'timeLimitMinutes'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateRideData extends GCreateRideData {
  @override
  final String G__typename;
  @override
  final GCreateRideData_createRide? createRide;

  factory _$GCreateRideData([void Function(GCreateRideDataBuilder)? updates]) =>
      (new GCreateRideDataBuilder()..update(updates)).build();

  _$GCreateRideData._({required this.G__typename, this.createRide})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateRideData', 'G__typename');
  }

  @override
  GCreateRideData rebuild(void Function(GCreateRideDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateRideDataBuilder toBuilder() =>
      new GCreateRideDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateRideData &&
        G__typename == other.G__typename &&
        createRide == other.createRide;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createRide.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateRideData')
          ..add('G__typename', G__typename)
          ..add('createRide', createRide))
        .toString();
  }
}

class GCreateRideDataBuilder
    implements Builder<GCreateRideData, GCreateRideDataBuilder> {
  _$GCreateRideData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateRideData_createRideBuilder? _createRide;
  GCreateRideData_createRideBuilder get createRide =>
      _$this._createRide ??= new GCreateRideData_createRideBuilder();
  set createRide(GCreateRideData_createRideBuilder? createRide) =>
      _$this._createRide = createRide;

  GCreateRideDataBuilder() {
    GCreateRideData._initializeBuilder(this);
  }

  GCreateRideDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createRide = $v.createRide?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateRideData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateRideData;
  }

  @override
  void update(void Function(GCreateRideDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateRideData build() {
    _$GCreateRideData _$result;
    try {
      _$result = _$v ??
          new _$GCreateRideData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreateRideData', 'G__typename'),
              createRide: _createRide?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createRide';
        _createRide?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateRideData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateRideData_createRide extends GCreateRideData_createRide {
  @override
  final String G__typename;
  @override
  final GCreateRideData_createRide_ride ride;

  factory _$GCreateRideData_createRide(
          [void Function(GCreateRideData_createRideBuilder)? updates]) =>
      (new GCreateRideData_createRideBuilder()..update(updates)).build();

  _$GCreateRideData_createRide._(
      {required this.G__typename, required this.ride})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateRideData_createRide', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        ride, 'GCreateRideData_createRide', 'ride');
  }

  @override
  GCreateRideData_createRide rebuild(
          void Function(GCreateRideData_createRideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateRideData_createRideBuilder toBuilder() =>
      new GCreateRideData_createRideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateRideData_createRide &&
        G__typename == other.G__typename &&
        ride == other.ride;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), ride.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateRideData_createRide')
          ..add('G__typename', G__typename)
          ..add('ride', ride))
        .toString();
  }
}

class GCreateRideData_createRideBuilder
    implements
        Builder<GCreateRideData_createRide, GCreateRideData_createRideBuilder> {
  _$GCreateRideData_createRide? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateRideData_createRide_rideBuilder? _ride;
  GCreateRideData_createRide_rideBuilder get ride =>
      _$this._ride ??= new GCreateRideData_createRide_rideBuilder();
  set ride(GCreateRideData_createRide_rideBuilder? ride) => _$this._ride = ride;

  GCreateRideData_createRideBuilder() {
    GCreateRideData_createRide._initializeBuilder(this);
  }

  GCreateRideData_createRideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ride = $v.ride.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateRideData_createRide other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateRideData_createRide;
  }

  @override
  void update(void Function(GCreateRideData_createRideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateRideData_createRide build() {
    _$GCreateRideData_createRide _$result;
    try {
      _$result = _$v ??
          new _$GCreateRideData_createRide._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreateRideData_createRide', 'G__typename'),
              ride: ride.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ride';
        ride.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateRideData_createRide', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateRideData_createRide_ride
    extends GCreateRideData_createRide_ride {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GRideStatusEnum status;
  @override
  final DateTime? startTime;
  @override
  final bool isCreator;
  @override
  final bool isFinished;
  @override
  final String inviteCode;
  @override
  final int timeLimitMinutes;

  factory _$GCreateRideData_createRide_ride(
          [void Function(GCreateRideData_createRide_rideBuilder)? updates]) =>
      (new GCreateRideData_createRide_rideBuilder()..update(updates)).build();

  _$GCreateRideData_createRide_ride._(
      {required this.G__typename,
      required this.id,
      required this.status,
      this.startTime,
      required this.isCreator,
      required this.isFinished,
      required this.inviteCode,
      required this.timeLimitMinutes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateRideData_createRide_ride', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCreateRideData_createRide_ride', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GCreateRideData_createRide_ride', 'status');
    BuiltValueNullFieldError.checkNotNull(
        isCreator, 'GCreateRideData_createRide_ride', 'isCreator');
    BuiltValueNullFieldError.checkNotNull(
        isFinished, 'GCreateRideData_createRide_ride', 'isFinished');
    BuiltValueNullFieldError.checkNotNull(
        inviteCode, 'GCreateRideData_createRide_ride', 'inviteCode');
    BuiltValueNullFieldError.checkNotNull(timeLimitMinutes,
        'GCreateRideData_createRide_ride', 'timeLimitMinutes');
  }

  @override
  GCreateRideData_createRide_ride rebuild(
          void Function(GCreateRideData_createRide_rideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateRideData_createRide_rideBuilder toBuilder() =>
      new GCreateRideData_createRide_rideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateRideData_createRide_ride &&
        G__typename == other.G__typename &&
        id == other.id &&
        status == other.status &&
        startTime == other.startTime &&
        isCreator == other.isCreator &&
        isFinished == other.isFinished &&
        inviteCode == other.inviteCode &&
        timeLimitMinutes == other.timeLimitMinutes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                            status.hashCode),
                        startTime.hashCode),
                    isCreator.hashCode),
                isFinished.hashCode),
            inviteCode.hashCode),
        timeLimitMinutes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateRideData_createRide_ride')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('status', status)
          ..add('startTime', startTime)
          ..add('isCreator', isCreator)
          ..add('isFinished', isFinished)
          ..add('inviteCode', inviteCode)
          ..add('timeLimitMinutes', timeLimitMinutes))
        .toString();
  }
}

class GCreateRideData_createRide_rideBuilder
    implements
        Builder<GCreateRideData_createRide_ride,
            GCreateRideData_createRide_rideBuilder> {
  _$GCreateRideData_createRide_ride? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GRideStatusEnum? _status;
  _i2.GRideStatusEnum? get status => _$this._status;
  set status(_i2.GRideStatusEnum? status) => _$this._status = status;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  bool? _isCreator;
  bool? get isCreator => _$this._isCreator;
  set isCreator(bool? isCreator) => _$this._isCreator = isCreator;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  String? _inviteCode;
  String? get inviteCode => _$this._inviteCode;
  set inviteCode(String? inviteCode) => _$this._inviteCode = inviteCode;

  int? _timeLimitMinutes;
  int? get timeLimitMinutes => _$this._timeLimitMinutes;
  set timeLimitMinutes(int? timeLimitMinutes) =>
      _$this._timeLimitMinutes = timeLimitMinutes;

  GCreateRideData_createRide_rideBuilder() {
    GCreateRideData_createRide_ride._initializeBuilder(this);
  }

  GCreateRideData_createRide_rideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _status = $v.status;
      _startTime = $v.startTime;
      _isCreator = $v.isCreator;
      _isFinished = $v.isFinished;
      _inviteCode = $v.inviteCode;
      _timeLimitMinutes = $v.timeLimitMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateRideData_createRide_ride other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateRideData_createRide_ride;
  }

  @override
  void update(void Function(GCreateRideData_createRide_rideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateRideData_createRide_ride build() {
    final _$result = _$v ??
        new _$GCreateRideData_createRide_ride._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GCreateRideData_createRide_ride', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCreateRideData_createRide_ride', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GCreateRideData_createRide_ride', 'status'),
            startTime: startTime,
            isCreator: BuiltValueNullFieldError.checkNotNull(
                isCreator, 'GCreateRideData_createRide_ride', 'isCreator'),
            isFinished: BuiltValueNullFieldError.checkNotNull(
                isFinished, 'GCreateRideData_createRide_ride', 'isFinished'),
            inviteCode: BuiltValueNullFieldError.checkNotNull(
                inviteCode, 'GCreateRideData_createRide_ride', 'inviteCode'),
            timeLimitMinutes: BuiltValueNullFieldError.checkNotNull(
                timeLimitMinutes,
                'GCreateRideData_createRide_ride',
                'timeLimitMinutes'));
    replace(_$result);
    return _$result;
  }
}

class _$GStartRideData extends GStartRideData {
  @override
  final String G__typename;
  @override
  final GStartRideData_startRide? startRide;

  factory _$GStartRideData([void Function(GStartRideDataBuilder)? updates]) =>
      (new GStartRideDataBuilder()..update(updates)).build();

  _$GStartRideData._({required this.G__typename, this.startRide}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GStartRideData', 'G__typename');
  }

  @override
  GStartRideData rebuild(void Function(GStartRideDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStartRideDataBuilder toBuilder() =>
      new GStartRideDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStartRideData &&
        G__typename == other.G__typename &&
        startRide == other.startRide;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), startRide.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GStartRideData')
          ..add('G__typename', G__typename)
          ..add('startRide', startRide))
        .toString();
  }
}

class GStartRideDataBuilder
    implements Builder<GStartRideData, GStartRideDataBuilder> {
  _$GStartRideData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStartRideData_startRideBuilder? _startRide;
  GStartRideData_startRideBuilder get startRide =>
      _$this._startRide ??= new GStartRideData_startRideBuilder();
  set startRide(GStartRideData_startRideBuilder? startRide) =>
      _$this._startRide = startRide;

  GStartRideDataBuilder() {
    GStartRideData._initializeBuilder(this);
  }

  GStartRideDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _startRide = $v.startRide?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStartRideData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStartRideData;
  }

  @override
  void update(void Function(GStartRideDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GStartRideData build() {
    _$GStartRideData _$result;
    try {
      _$result = _$v ??
          new _$GStartRideData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GStartRideData', 'G__typename'),
              startRide: _startRide?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startRide';
        _startRide?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GStartRideData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStartRideData_startRide extends GStartRideData_startRide {
  @override
  final String G__typename;
  @override
  final GStartRideData_startRide_ride ride;

  factory _$GStartRideData_startRide(
          [void Function(GStartRideData_startRideBuilder)? updates]) =>
      (new GStartRideData_startRideBuilder()..update(updates)).build();

  _$GStartRideData_startRide._({required this.G__typename, required this.ride})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GStartRideData_startRide', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        ride, 'GStartRideData_startRide', 'ride');
  }

  @override
  GStartRideData_startRide rebuild(
          void Function(GStartRideData_startRideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStartRideData_startRideBuilder toBuilder() =>
      new GStartRideData_startRideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStartRideData_startRide &&
        G__typename == other.G__typename &&
        ride == other.ride;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), ride.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GStartRideData_startRide')
          ..add('G__typename', G__typename)
          ..add('ride', ride))
        .toString();
  }
}

class GStartRideData_startRideBuilder
    implements
        Builder<GStartRideData_startRide, GStartRideData_startRideBuilder> {
  _$GStartRideData_startRide? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStartRideData_startRide_rideBuilder? _ride;
  GStartRideData_startRide_rideBuilder get ride =>
      _$this._ride ??= new GStartRideData_startRide_rideBuilder();
  set ride(GStartRideData_startRide_rideBuilder? ride) => _$this._ride = ride;

  GStartRideData_startRideBuilder() {
    GStartRideData_startRide._initializeBuilder(this);
  }

  GStartRideData_startRideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ride = $v.ride.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStartRideData_startRide other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStartRideData_startRide;
  }

  @override
  void update(void Function(GStartRideData_startRideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GStartRideData_startRide build() {
    _$GStartRideData_startRide _$result;
    try {
      _$result = _$v ??
          new _$GStartRideData_startRide._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GStartRideData_startRide', 'G__typename'),
              ride: ride.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ride';
        ride.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GStartRideData_startRide', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStartRideData_startRide_ride extends GStartRideData_startRide_ride {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GRideStatusEnum status;
  @override
  final DateTime? startTime;
  @override
  final bool isCreator;
  @override
  final bool isFinished;
  @override
  final String inviteCode;
  @override
  final int timeLimitMinutes;

  factory _$GStartRideData_startRide_ride(
          [void Function(GStartRideData_startRide_rideBuilder)? updates]) =>
      (new GStartRideData_startRide_rideBuilder()..update(updates)).build();

  _$GStartRideData_startRide_ride._(
      {required this.G__typename,
      required this.id,
      required this.status,
      this.startTime,
      required this.isCreator,
      required this.isFinished,
      required this.inviteCode,
      required this.timeLimitMinutes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GStartRideData_startRide_ride', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GStartRideData_startRide_ride', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GStartRideData_startRide_ride', 'status');
    BuiltValueNullFieldError.checkNotNull(
        isCreator, 'GStartRideData_startRide_ride', 'isCreator');
    BuiltValueNullFieldError.checkNotNull(
        isFinished, 'GStartRideData_startRide_ride', 'isFinished');
    BuiltValueNullFieldError.checkNotNull(
        inviteCode, 'GStartRideData_startRide_ride', 'inviteCode');
    BuiltValueNullFieldError.checkNotNull(
        timeLimitMinutes, 'GStartRideData_startRide_ride', 'timeLimitMinutes');
  }

  @override
  GStartRideData_startRide_ride rebuild(
          void Function(GStartRideData_startRide_rideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStartRideData_startRide_rideBuilder toBuilder() =>
      new GStartRideData_startRide_rideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStartRideData_startRide_ride &&
        G__typename == other.G__typename &&
        id == other.id &&
        status == other.status &&
        startTime == other.startTime &&
        isCreator == other.isCreator &&
        isFinished == other.isFinished &&
        inviteCode == other.inviteCode &&
        timeLimitMinutes == other.timeLimitMinutes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                            status.hashCode),
                        startTime.hashCode),
                    isCreator.hashCode),
                isFinished.hashCode),
            inviteCode.hashCode),
        timeLimitMinutes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GStartRideData_startRide_ride')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('status', status)
          ..add('startTime', startTime)
          ..add('isCreator', isCreator)
          ..add('isFinished', isFinished)
          ..add('inviteCode', inviteCode)
          ..add('timeLimitMinutes', timeLimitMinutes))
        .toString();
  }
}

class GStartRideData_startRide_rideBuilder
    implements
        Builder<GStartRideData_startRide_ride,
            GStartRideData_startRide_rideBuilder> {
  _$GStartRideData_startRide_ride? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GRideStatusEnum? _status;
  _i2.GRideStatusEnum? get status => _$this._status;
  set status(_i2.GRideStatusEnum? status) => _$this._status = status;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  bool? _isCreator;
  bool? get isCreator => _$this._isCreator;
  set isCreator(bool? isCreator) => _$this._isCreator = isCreator;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  String? _inviteCode;
  String? get inviteCode => _$this._inviteCode;
  set inviteCode(String? inviteCode) => _$this._inviteCode = inviteCode;

  int? _timeLimitMinutes;
  int? get timeLimitMinutes => _$this._timeLimitMinutes;
  set timeLimitMinutes(int? timeLimitMinutes) =>
      _$this._timeLimitMinutes = timeLimitMinutes;

  GStartRideData_startRide_rideBuilder() {
    GStartRideData_startRide_ride._initializeBuilder(this);
  }

  GStartRideData_startRide_rideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _status = $v.status;
      _startTime = $v.startTime;
      _isCreator = $v.isCreator;
      _isFinished = $v.isFinished;
      _inviteCode = $v.inviteCode;
      _timeLimitMinutes = $v.timeLimitMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStartRideData_startRide_ride other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStartRideData_startRide_ride;
  }

  @override
  void update(void Function(GStartRideData_startRide_rideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GStartRideData_startRide_ride build() {
    final _$result = _$v ??
        new _$GStartRideData_startRide_ride._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GStartRideData_startRide_ride', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GStartRideData_startRide_ride', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GStartRideData_startRide_ride', 'status'),
            startTime: startTime,
            isCreator: BuiltValueNullFieldError.checkNotNull(
                isCreator, 'GStartRideData_startRide_ride', 'isCreator'),
            isFinished: BuiltValueNullFieldError.checkNotNull(
                isFinished, 'GStartRideData_startRide_ride', 'isFinished'),
            inviteCode: BuiltValueNullFieldError.checkNotNull(
                inviteCode, 'GStartRideData_startRide_ride', 'inviteCode'),
            timeLimitMinutes: BuiltValueNullFieldError.checkNotNull(
                timeLimitMinutes,
                'GStartRideData_startRide_ride',
                'timeLimitMinutes'));
    replace(_$result);
    return _$result;
  }
}

class _$GLeaveRideData extends GLeaveRideData {
  @override
  final String G__typename;
  @override
  final GLeaveRideData_leaveRide? leaveRide;

  factory _$GLeaveRideData([void Function(GLeaveRideDataBuilder)? updates]) =>
      (new GLeaveRideDataBuilder()..update(updates)).build();

  _$GLeaveRideData._({required this.G__typename, this.leaveRide}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLeaveRideData', 'G__typename');
  }

  @override
  GLeaveRideData rebuild(void Function(GLeaveRideDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLeaveRideDataBuilder toBuilder() =>
      new GLeaveRideDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLeaveRideData &&
        G__typename == other.G__typename &&
        leaveRide == other.leaveRide;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), leaveRide.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLeaveRideData')
          ..add('G__typename', G__typename)
          ..add('leaveRide', leaveRide))
        .toString();
  }
}

class GLeaveRideDataBuilder
    implements Builder<GLeaveRideData, GLeaveRideDataBuilder> {
  _$GLeaveRideData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLeaveRideData_leaveRideBuilder? _leaveRide;
  GLeaveRideData_leaveRideBuilder get leaveRide =>
      _$this._leaveRide ??= new GLeaveRideData_leaveRideBuilder();
  set leaveRide(GLeaveRideData_leaveRideBuilder? leaveRide) =>
      _$this._leaveRide = leaveRide;

  GLeaveRideDataBuilder() {
    GLeaveRideData._initializeBuilder(this);
  }

  GLeaveRideDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _leaveRide = $v.leaveRide?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLeaveRideData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLeaveRideData;
  }

  @override
  void update(void Function(GLeaveRideDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLeaveRideData build() {
    _$GLeaveRideData _$result;
    try {
      _$result = _$v ??
          new _$GLeaveRideData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GLeaveRideData', 'G__typename'),
              leaveRide: _leaveRide?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'leaveRide';
        _leaveRide?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLeaveRideData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLeaveRideData_leaveRide extends GLeaveRideData_leaveRide {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$GLeaveRideData_leaveRide(
          [void Function(GLeaveRideData_leaveRideBuilder)? updates]) =>
      (new GLeaveRideData_leaveRideBuilder()..update(updates)).build();

  _$GLeaveRideData_leaveRide._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLeaveRideData_leaveRide', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, 'GLeaveRideData_leaveRide', 'success');
  }

  @override
  GLeaveRideData_leaveRide rebuild(
          void Function(GLeaveRideData_leaveRideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLeaveRideData_leaveRideBuilder toBuilder() =>
      new GLeaveRideData_leaveRideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLeaveRideData_leaveRide &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLeaveRideData_leaveRide')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class GLeaveRideData_leaveRideBuilder
    implements
        Builder<GLeaveRideData_leaveRide, GLeaveRideData_leaveRideBuilder> {
  _$GLeaveRideData_leaveRide? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GLeaveRideData_leaveRideBuilder() {
    GLeaveRideData_leaveRide._initializeBuilder(this);
  }

  GLeaveRideData_leaveRideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLeaveRideData_leaveRide other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLeaveRideData_leaveRide;
  }

  @override
  void update(void Function(GLeaveRideData_leaveRideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLeaveRideData_leaveRide build() {
    final _$result = _$v ??
        new _$GLeaveRideData_leaveRide._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GLeaveRideData_leaveRide', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'GLeaveRideData_leaveRide', 'success'));
    replace(_$result);
    return _$result;
  }
}

class _$GJoinRideData extends GJoinRideData {
  @override
  final String G__typename;
  @override
  final GJoinRideData_joinRide? joinRide;

  factory _$GJoinRideData([void Function(GJoinRideDataBuilder)? updates]) =>
      (new GJoinRideDataBuilder()..update(updates)).build();

  _$GJoinRideData._({required this.G__typename, this.joinRide}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GJoinRideData', 'G__typename');
  }

  @override
  GJoinRideData rebuild(void Function(GJoinRideDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GJoinRideDataBuilder toBuilder() => new GJoinRideDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GJoinRideData &&
        G__typename == other.G__typename &&
        joinRide == other.joinRide;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), joinRide.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GJoinRideData')
          ..add('G__typename', G__typename)
          ..add('joinRide', joinRide))
        .toString();
  }
}

class GJoinRideDataBuilder
    implements Builder<GJoinRideData, GJoinRideDataBuilder> {
  _$GJoinRideData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GJoinRideData_joinRideBuilder? _joinRide;
  GJoinRideData_joinRideBuilder get joinRide =>
      _$this._joinRide ??= new GJoinRideData_joinRideBuilder();
  set joinRide(GJoinRideData_joinRideBuilder? joinRide) =>
      _$this._joinRide = joinRide;

  GJoinRideDataBuilder() {
    GJoinRideData._initializeBuilder(this);
  }

  GJoinRideDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _joinRide = $v.joinRide?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GJoinRideData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GJoinRideData;
  }

  @override
  void update(void Function(GJoinRideDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GJoinRideData build() {
    _$GJoinRideData _$result;
    try {
      _$result = _$v ??
          new _$GJoinRideData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GJoinRideData', 'G__typename'),
              joinRide: _joinRide?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'joinRide';
        _joinRide?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GJoinRideData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GJoinRideData_joinRide extends GJoinRideData_joinRide {
  @override
  final String G__typename;
  @override
  final GJoinRideData_joinRide_ride ride;

  factory _$GJoinRideData_joinRide(
          [void Function(GJoinRideData_joinRideBuilder)? updates]) =>
      (new GJoinRideData_joinRideBuilder()..update(updates)).build();

  _$GJoinRideData_joinRide._({required this.G__typename, required this.ride})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GJoinRideData_joinRide', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        ride, 'GJoinRideData_joinRide', 'ride');
  }

  @override
  GJoinRideData_joinRide rebuild(
          void Function(GJoinRideData_joinRideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GJoinRideData_joinRideBuilder toBuilder() =>
      new GJoinRideData_joinRideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GJoinRideData_joinRide &&
        G__typename == other.G__typename &&
        ride == other.ride;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), ride.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GJoinRideData_joinRide')
          ..add('G__typename', G__typename)
          ..add('ride', ride))
        .toString();
  }
}

class GJoinRideData_joinRideBuilder
    implements Builder<GJoinRideData_joinRide, GJoinRideData_joinRideBuilder> {
  _$GJoinRideData_joinRide? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GJoinRideData_joinRide_rideBuilder? _ride;
  GJoinRideData_joinRide_rideBuilder get ride =>
      _$this._ride ??= new GJoinRideData_joinRide_rideBuilder();
  set ride(GJoinRideData_joinRide_rideBuilder? ride) => _$this._ride = ride;

  GJoinRideData_joinRideBuilder() {
    GJoinRideData_joinRide._initializeBuilder(this);
  }

  GJoinRideData_joinRideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ride = $v.ride.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GJoinRideData_joinRide other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GJoinRideData_joinRide;
  }

  @override
  void update(void Function(GJoinRideData_joinRideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GJoinRideData_joinRide build() {
    _$GJoinRideData_joinRide _$result;
    try {
      _$result = _$v ??
          new _$GJoinRideData_joinRide._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GJoinRideData_joinRide', 'G__typename'),
              ride: ride.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ride';
        ride.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GJoinRideData_joinRide', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GJoinRideData_joinRide_ride extends GJoinRideData_joinRide_ride {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GRideStatusEnum status;
  @override
  final DateTime? startTime;
  @override
  final bool isCreator;
  @override
  final bool isFinished;
  @override
  final String inviteCode;
  @override
  final int timeLimitMinutes;

  factory _$GJoinRideData_joinRide_ride(
          [void Function(GJoinRideData_joinRide_rideBuilder)? updates]) =>
      (new GJoinRideData_joinRide_rideBuilder()..update(updates)).build();

  _$GJoinRideData_joinRide_ride._(
      {required this.G__typename,
      required this.id,
      required this.status,
      this.startTime,
      required this.isCreator,
      required this.isFinished,
      required this.inviteCode,
      required this.timeLimitMinutes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GJoinRideData_joinRide_ride', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GJoinRideData_joinRide_ride', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GJoinRideData_joinRide_ride', 'status');
    BuiltValueNullFieldError.checkNotNull(
        isCreator, 'GJoinRideData_joinRide_ride', 'isCreator');
    BuiltValueNullFieldError.checkNotNull(
        isFinished, 'GJoinRideData_joinRide_ride', 'isFinished');
    BuiltValueNullFieldError.checkNotNull(
        inviteCode, 'GJoinRideData_joinRide_ride', 'inviteCode');
    BuiltValueNullFieldError.checkNotNull(
        timeLimitMinutes, 'GJoinRideData_joinRide_ride', 'timeLimitMinutes');
  }

  @override
  GJoinRideData_joinRide_ride rebuild(
          void Function(GJoinRideData_joinRide_rideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GJoinRideData_joinRide_rideBuilder toBuilder() =>
      new GJoinRideData_joinRide_rideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GJoinRideData_joinRide_ride &&
        G__typename == other.G__typename &&
        id == other.id &&
        status == other.status &&
        startTime == other.startTime &&
        isCreator == other.isCreator &&
        isFinished == other.isFinished &&
        inviteCode == other.inviteCode &&
        timeLimitMinutes == other.timeLimitMinutes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                            status.hashCode),
                        startTime.hashCode),
                    isCreator.hashCode),
                isFinished.hashCode),
            inviteCode.hashCode),
        timeLimitMinutes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GJoinRideData_joinRide_ride')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('status', status)
          ..add('startTime', startTime)
          ..add('isCreator', isCreator)
          ..add('isFinished', isFinished)
          ..add('inviteCode', inviteCode)
          ..add('timeLimitMinutes', timeLimitMinutes))
        .toString();
  }
}

class GJoinRideData_joinRide_rideBuilder
    implements
        Builder<GJoinRideData_joinRide_ride,
            GJoinRideData_joinRide_rideBuilder> {
  _$GJoinRideData_joinRide_ride? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GRideStatusEnum? _status;
  _i2.GRideStatusEnum? get status => _$this._status;
  set status(_i2.GRideStatusEnum? status) => _$this._status = status;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  bool? _isCreator;
  bool? get isCreator => _$this._isCreator;
  set isCreator(bool? isCreator) => _$this._isCreator = isCreator;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  String? _inviteCode;
  String? get inviteCode => _$this._inviteCode;
  set inviteCode(String? inviteCode) => _$this._inviteCode = inviteCode;

  int? _timeLimitMinutes;
  int? get timeLimitMinutes => _$this._timeLimitMinutes;
  set timeLimitMinutes(int? timeLimitMinutes) =>
      _$this._timeLimitMinutes = timeLimitMinutes;

  GJoinRideData_joinRide_rideBuilder() {
    GJoinRideData_joinRide_ride._initializeBuilder(this);
  }

  GJoinRideData_joinRide_rideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _status = $v.status;
      _startTime = $v.startTime;
      _isCreator = $v.isCreator;
      _isFinished = $v.isFinished;
      _inviteCode = $v.inviteCode;
      _timeLimitMinutes = $v.timeLimitMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GJoinRideData_joinRide_ride other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GJoinRideData_joinRide_ride;
  }

  @override
  void update(void Function(GJoinRideData_joinRide_rideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GJoinRideData_joinRide_ride build() {
    final _$result = _$v ??
        new _$GJoinRideData_joinRide_ride._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GJoinRideData_joinRide_ride', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GJoinRideData_joinRide_ride', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GJoinRideData_joinRide_ride', 'status'),
            startTime: startTime,
            isCreator: BuiltValueNullFieldError.checkNotNull(
                isCreator, 'GJoinRideData_joinRide_ride', 'isCreator'),
            isFinished: BuiltValueNullFieldError.checkNotNull(
                isFinished, 'GJoinRideData_joinRide_ride', 'isFinished'),
            inviteCode: BuiltValueNullFieldError.checkNotNull(
                inviteCode, 'GJoinRideData_joinRide_ride', 'inviteCode'),
            timeLimitMinutes: BuiltValueNullFieldError.checkNotNull(
                timeLimitMinutes,
                'GJoinRideData_joinRide_ride',
                'timeLimitMinutes'));
    replace(_$result);
    return _$result;
  }
}

class _$GRideNodeFieldsData extends GRideNodeFieldsData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GRideStatusEnum status;
  @override
  final DateTime? startTime;
  @override
  final bool isCreator;
  @override
  final bool isFinished;
  @override
  final String inviteCode;
  @override
  final int timeLimitMinutes;

  factory _$GRideNodeFieldsData(
          [void Function(GRideNodeFieldsDataBuilder)? updates]) =>
      (new GRideNodeFieldsDataBuilder()..update(updates)).build();

  _$GRideNodeFieldsData._(
      {required this.G__typename,
      required this.id,
      required this.status,
      this.startTime,
      required this.isCreator,
      required this.isFinished,
      required this.inviteCode,
      required this.timeLimitMinutes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRideNodeFieldsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GRideNodeFieldsData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GRideNodeFieldsData', 'status');
    BuiltValueNullFieldError.checkNotNull(
        isCreator, 'GRideNodeFieldsData', 'isCreator');
    BuiltValueNullFieldError.checkNotNull(
        isFinished, 'GRideNodeFieldsData', 'isFinished');
    BuiltValueNullFieldError.checkNotNull(
        inviteCode, 'GRideNodeFieldsData', 'inviteCode');
    BuiltValueNullFieldError.checkNotNull(
        timeLimitMinutes, 'GRideNodeFieldsData', 'timeLimitMinutes');
  }

  @override
  GRideNodeFieldsData rebuild(
          void Function(GRideNodeFieldsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRideNodeFieldsDataBuilder toBuilder() =>
      new GRideNodeFieldsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRideNodeFieldsData &&
        G__typename == other.G__typename &&
        id == other.id &&
        status == other.status &&
        startTime == other.startTime &&
        isCreator == other.isCreator &&
        isFinished == other.isFinished &&
        inviteCode == other.inviteCode &&
        timeLimitMinutes == other.timeLimitMinutes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                            status.hashCode),
                        startTime.hashCode),
                    isCreator.hashCode),
                isFinished.hashCode),
            inviteCode.hashCode),
        timeLimitMinutes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRideNodeFieldsData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('status', status)
          ..add('startTime', startTime)
          ..add('isCreator', isCreator)
          ..add('isFinished', isFinished)
          ..add('inviteCode', inviteCode)
          ..add('timeLimitMinutes', timeLimitMinutes))
        .toString();
  }
}

class GRideNodeFieldsDataBuilder
    implements Builder<GRideNodeFieldsData, GRideNodeFieldsDataBuilder> {
  _$GRideNodeFieldsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GRideStatusEnum? _status;
  _i2.GRideStatusEnum? get status => _$this._status;
  set status(_i2.GRideStatusEnum? status) => _$this._status = status;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  bool? _isCreator;
  bool? get isCreator => _$this._isCreator;
  set isCreator(bool? isCreator) => _$this._isCreator = isCreator;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  String? _inviteCode;
  String? get inviteCode => _$this._inviteCode;
  set inviteCode(String? inviteCode) => _$this._inviteCode = inviteCode;

  int? _timeLimitMinutes;
  int? get timeLimitMinutes => _$this._timeLimitMinutes;
  set timeLimitMinutes(int? timeLimitMinutes) =>
      _$this._timeLimitMinutes = timeLimitMinutes;

  GRideNodeFieldsDataBuilder() {
    GRideNodeFieldsData._initializeBuilder(this);
  }

  GRideNodeFieldsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _status = $v.status;
      _startTime = $v.startTime;
      _isCreator = $v.isCreator;
      _isFinished = $v.isFinished;
      _inviteCode = $v.inviteCode;
      _timeLimitMinutes = $v.timeLimitMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRideNodeFieldsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRideNodeFieldsData;
  }

  @override
  void update(void Function(GRideNodeFieldsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRideNodeFieldsData build() {
    final _$result = _$v ??
        new _$GRideNodeFieldsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRideNodeFieldsData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GRideNodeFieldsData', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GRideNodeFieldsData', 'status'),
            startTime: startTime,
            isCreator: BuiltValueNullFieldError.checkNotNull(
                isCreator, 'GRideNodeFieldsData', 'isCreator'),
            isFinished: BuiltValueNullFieldError.checkNotNull(
                isFinished, 'GRideNodeFieldsData', 'isFinished'),
            inviteCode: BuiltValueNullFieldError.checkNotNull(
                inviteCode, 'GRideNodeFieldsData', 'inviteCode'),
            timeLimitMinutes: BuiltValueNullFieldError.checkNotNull(
                timeLimitMinutes, 'GRideNodeFieldsData', 'timeLimitMinutes'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

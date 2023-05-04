// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Profile.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetMyProfileData> _$gGetMyProfileDataSerializer =
    new _$GGetMyProfileDataSerializer();
Serializer<GGetMyProfileData_me> _$gGetMyProfileDataMeSerializer =
    new _$GGetMyProfileData_meSerializer();
Serializer<GGetMyProfileData_me_profile>
    _$gGetMyProfileDataMeProfileSerializer =
    new _$GGetMyProfileData_me_profileSerializer();
Serializer<GGetMyTracksData> _$gGetMyTracksDataSerializer =
    new _$GGetMyTracksDataSerializer();
Serializer<GGetMyTracksData_me> _$gGetMyTracksDataMeSerializer =
    new _$GGetMyTracksData_meSerializer();
Serializer<GGetMyTracksData_me_tracks> _$gGetMyTracksDataMeTracksSerializer =
    new _$GGetMyTracksData_me_tracksSerializer();
Serializer<GGetMyTracksData_me_tracks_tracks>
    _$gGetMyTracksDataMeTracksTracksSerializer =
    new _$GGetMyTracksData_me_tracks_tracksSerializer();
Serializer<GGetUserTracksData> _$gGetUserTracksDataSerializer =
    new _$GGetUserTracksDataSerializer();
Serializer<GGetUserTracksData_userByUsername>
    _$gGetUserTracksDataUserByUsernameSerializer =
    new _$GGetUserTracksData_userByUsernameSerializer();
Serializer<GGetUserTracksData_userByUsername_tracks>
    _$gGetUserTracksDataUserByUsernameTracksSerializer =
    new _$GGetUserTracksData_userByUsername_tracksSerializer();
Serializer<GGetUserTracksData_userByUsername_tracks_tracks>
    _$gGetUserTracksDataUserByUsernameTracksTracksSerializer =
    new _$GGetUserTracksData_userByUsername_tracks_tracksSerializer();
Serializer<GGetUserProfileData> _$gGetUserProfileDataSerializer =
    new _$GGetUserProfileDataSerializer();
Serializer<GGetUserProfileData_userByUsername>
    _$gGetUserProfileDataUserByUsernameSerializer =
    new _$GGetUserProfileData_userByUsernameSerializer();
Serializer<GGetUserProfileData_userByUsername_profile>
    _$gGetUserProfileDataUserByUsernameProfileSerializer =
    new _$GGetUserProfileData_userByUsername_profileSerializer();
Serializer<GUpdateProfileData> _$gUpdateProfileDataSerializer =
    new _$GUpdateProfileDataSerializer();
Serializer<GUpdateProfileData_updateProfile>
    _$gUpdateProfileDataUpdateProfileSerializer =
    new _$GUpdateProfileData_updateProfileSerializer();
Serializer<GUpdateProfileData_updateProfile_user>
    _$gUpdateProfileDataUpdateProfileUserSerializer =
    new _$GUpdateProfileData_updateProfile_userSerializer();
Serializer<GUpdateProfileData_updateProfile_user_profile>
    _$gUpdateProfileDataUpdateProfileUserProfileSerializer =
    new _$GUpdateProfileData_updateProfile_user_profileSerializer();
Serializer<GUpdatePublicData> _$gUpdatePublicDataSerializer =
    new _$GUpdatePublicDataSerializer();
Serializer<GUpdatePublicData_updateProfile>
    _$gUpdatePublicDataUpdateProfileSerializer =
    new _$GUpdatePublicData_updateProfileSerializer();
Serializer<GUserNodeFieldsData> _$gUserNodeFieldsDataSerializer =
    new _$GUserNodeFieldsDataSerializer();
Serializer<GUserNodeFieldsData_profile> _$gUserNodeFieldsDataProfileSerializer =
    new _$GUserNodeFieldsData_profileSerializer();

class _$GGetMyProfileDataSerializer
    implements StructuredSerializer<GGetMyProfileData> {
  @override
  final Iterable<Type> types = const [GGetMyProfileData, _$GGetMyProfileData];
  @override
  final String wireName = 'GGetMyProfileData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetMyProfileData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'me',
      serializers.serialize(object.me,
          specifiedType: const FullType(GGetMyProfileData_me)),
    ];

    return result;
  }

  @override
  GGetMyProfileData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMyProfileDataBuilder();

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
        case 'me':
          result.me.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetMyProfileData_me))!
              as GGetMyProfileData_me);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyProfileData_meSerializer
    implements StructuredSerializer<GGetMyProfileData_me> {
  @override
  final Iterable<Type> types = const [
    GGetMyProfileData_me,
    _$GGetMyProfileData_me
  ];
  @override
  final String wireName = 'GGetMyProfileData_me';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetMyProfileData_me object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'profile',
      serializers.serialize(object.profile,
          specifiedType: const FullType(GGetMyProfileData_me_profile)),
      'totalMeters',
      serializers.serialize(object.totalMeters,
          specifiedType: const FullType(double)),
      'finishedRides',
      serializers.serialize(object.finishedRides,
          specifiedType: const FullType(int)),
      'isSuperuser',
      serializers.serialize(object.isSuperuser,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GGetMyProfileData_me deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMyProfileData_meBuilder();

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
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetMyProfileData_me_profile))!
              as GGetMyProfileData_me_profile);
          break;
        case 'totalMeters':
          result.totalMeters = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'finishedRides':
          result.finishedRides = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isSuperuser':
          result.isSuperuser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyProfileData_me_profileSerializer
    implements StructuredSerializer<GGetMyProfileData_me_profile> {
  @override
  final Iterable<Type> types = const [
    GGetMyProfileData_me_profile,
    _$GGetMyProfileData_me_profile
  ];
  @override
  final String wireName = 'GGetMyProfileData_me_profile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetMyProfileData_me_profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isPublic',
      serializers.serialize(object.isPublic,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.telegram;
    if (value != null) {
      result
        ..add('telegram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetMyProfileData_me_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMyProfileData_me_profileBuilder();

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
        case 'telegram':
          result.telegram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyTracksDataSerializer
    implements StructuredSerializer<GGetMyTracksData> {
  @override
  final Iterable<Type> types = const [GGetMyTracksData, _$GGetMyTracksData];
  @override
  final String wireName = 'GGetMyTracksData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetMyTracksData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'me',
      serializers.serialize(object.me,
          specifiedType: const FullType(GGetMyTracksData_me)),
    ];

    return result;
  }

  @override
  GGetMyTracksData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMyTracksDataBuilder();

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
        case 'me':
          result.me.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetMyTracksData_me))!
              as GGetMyTracksData_me);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyTracksData_meSerializer
    implements StructuredSerializer<GGetMyTracksData_me> {
  @override
  final Iterable<Type> types = const [
    GGetMyTracksData_me,
    _$GGetMyTracksData_me
  ];
  @override
  final String wireName = 'GGetMyTracksData_me';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetMyTracksData_me object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'tracks',
      serializers.serialize(object.tracks,
          specifiedType: const FullType(GGetMyTracksData_me_tracks)),
    ];

    return result;
  }

  @override
  GGetMyTracksData_me deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMyTracksData_meBuilder();

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
        case 'tracks':
          result.tracks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetMyTracksData_me_tracks))!
              as GGetMyTracksData_me_tracks);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyTracksData_me_tracksSerializer
    implements StructuredSerializer<GGetMyTracksData_me_tracks> {
  @override
  final Iterable<Type> types = const [
    GGetMyTracksData_me_tracks,
    _$GGetMyTracksData_me_tracks
  ];
  @override
  final String wireName = 'GGetMyTracksData_me_tracks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetMyTracksData_me_tracks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'tracks',
      serializers.serialize(object.tracks,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetMyTracksData_me_tracks_tracks)])),
    ];

    return result;
  }

  @override
  GGetMyTracksData_me_tracks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMyTracksData_me_tracksBuilder();

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
        case 'tracks':
          result.tracks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetMyTracksData_me_tracks_tracks)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyTracksData_me_tracks_tracksSerializer
    implements StructuredSerializer<GGetMyTracksData_me_tracks_tracks> {
  @override
  final Iterable<Type> types = const [
    GGetMyTracksData_me_tracks_tracks,
    _$GGetMyTracksData_me_tracks_tracks
  ];
  @override
  final String wireName = 'GGetMyTracksData_me_tracks_tracks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetMyTracksData_me_tracks_tracks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'distanceMeters',
      serializers.serialize(object.distanceMeters,
          specifiedType: const FullType(double)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GGetMyTracksData_me_tracks_tracks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMyTracksData_me_tracks_tracksBuilder();

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
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'distanceMeters':
          result.distanceMeters = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserTracksDataSerializer
    implements StructuredSerializer<GGetUserTracksData> {
  @override
  final Iterable<Type> types = const [GGetUserTracksData, _$GGetUserTracksData];
  @override
  final String wireName = 'GGetUserTracksData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserTracksData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userByUsername',
      serializers.serialize(object.userByUsername,
          specifiedType: const FullType(GGetUserTracksData_userByUsername)),
    ];

    return result;
  }

  @override
  GGetUserTracksData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserTracksDataBuilder();

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
        case 'userByUsername':
          result.userByUsername.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetUserTracksData_userByUsername))!
              as GGetUserTracksData_userByUsername);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserTracksData_userByUsernameSerializer
    implements StructuredSerializer<GGetUserTracksData_userByUsername> {
  @override
  final Iterable<Type> types = const [
    GGetUserTracksData_userByUsername,
    _$GGetUserTracksData_userByUsername
  ];
  @override
  final String wireName = 'GGetUserTracksData_userByUsername';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserTracksData_userByUsername object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'tracks',
      serializers.serialize(object.tracks,
          specifiedType:
              const FullType(GGetUserTracksData_userByUsername_tracks)),
    ];

    return result;
  }

  @override
  GGetUserTracksData_userByUsername deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserTracksData_userByUsernameBuilder();

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
        case 'tracks':
          result.tracks.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetUserTracksData_userByUsername_tracks))!
              as GGetUserTracksData_userByUsername_tracks);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserTracksData_userByUsername_tracksSerializer
    implements StructuredSerializer<GGetUserTracksData_userByUsername_tracks> {
  @override
  final Iterable<Type> types = const [
    GGetUserTracksData_userByUsername_tracks,
    _$GGetUserTracksData_userByUsername_tracks
  ];
  @override
  final String wireName = 'GGetUserTracksData_userByUsername_tracks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserTracksData_userByUsername_tracks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'tracks',
      serializers.serialize(object.tracks,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GGetUserTracksData_userByUsername_tracks_tracks)
          ])),
    ];

    return result;
  }

  @override
  GGetUserTracksData_userByUsername_tracks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserTracksData_userByUsername_tracksBuilder();

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
        case 'tracks':
          result.tracks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetUserTracksData_userByUsername_tracks_tracks)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserTracksData_userByUsername_tracks_tracksSerializer
    implements
        StructuredSerializer<GGetUserTracksData_userByUsername_tracks_tracks> {
  @override
  final Iterable<Type> types = const [
    GGetUserTracksData_userByUsername_tracks_tracks,
    _$GGetUserTracksData_userByUsername_tracks_tracks
  ];
  @override
  final String wireName = 'GGetUserTracksData_userByUsername_tracks_tracks';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetUserTracksData_userByUsername_tracks_tracks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'distanceMeters',
      serializers.serialize(object.distanceMeters,
          specifiedType: const FullType(double)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GGetUserTracksData_userByUsername_tracks_tracks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserTracksData_userByUsername_tracks_tracksBuilder();

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
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'distanceMeters':
          result.distanceMeters = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserProfileDataSerializer
    implements StructuredSerializer<GGetUserProfileData> {
  @override
  final Iterable<Type> types = const [
    GGetUserProfileData,
    _$GGetUserProfileData
  ];
  @override
  final String wireName = 'GGetUserProfileData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserProfileData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userByUsername',
      serializers.serialize(object.userByUsername,
          specifiedType: const FullType(GGetUserProfileData_userByUsername)),
    ];

    return result;
  }

  @override
  GGetUserProfileData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserProfileDataBuilder();

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
        case 'userByUsername':
          result.userByUsername.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetUserProfileData_userByUsername))!
              as GGetUserProfileData_userByUsername);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserProfileData_userByUsernameSerializer
    implements StructuredSerializer<GGetUserProfileData_userByUsername> {
  @override
  final Iterable<Type> types = const [
    GGetUserProfileData_userByUsername,
    _$GGetUserProfileData_userByUsername
  ];
  @override
  final String wireName = 'GGetUserProfileData_userByUsername';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserProfileData_userByUsername object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'profile',
      serializers.serialize(object.profile,
          specifiedType:
              const FullType(GGetUserProfileData_userByUsername_profile)),
      'totalMeters',
      serializers.serialize(object.totalMeters,
          specifiedType: const FullType(double)),
      'finishedRides',
      serializers.serialize(object.finishedRides,
          specifiedType: const FullType(int)),
      'isSuperuser',
      serializers.serialize(object.isSuperuser,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GGetUserProfileData_userByUsername deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserProfileData_userByUsernameBuilder();

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
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetUserProfileData_userByUsername_profile))!
              as GGetUserProfileData_userByUsername_profile);
          break;
        case 'totalMeters':
          result.totalMeters = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'finishedRides':
          result.finishedRides = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isSuperuser':
          result.isSuperuser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserProfileData_userByUsername_profileSerializer
    implements
        StructuredSerializer<GGetUserProfileData_userByUsername_profile> {
  @override
  final Iterable<Type> types = const [
    GGetUserProfileData_userByUsername_profile,
    _$GGetUserProfileData_userByUsername_profile
  ];
  @override
  final String wireName = 'GGetUserProfileData_userByUsername_profile';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetUserProfileData_userByUsername_profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isPublic',
      serializers.serialize(object.isPublic,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.telegram;
    if (value != null) {
      result
        ..add('telegram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUserProfileData_userByUsername_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserProfileData_userByUsername_profileBuilder();

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
        case 'telegram':
          result.telegram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateProfileDataSerializer
    implements StructuredSerializer<GUpdateProfileData> {
  @override
  final Iterable<Type> types = const [GUpdateProfileData, _$GUpdateProfileData];
  @override
  final String wireName = 'GUpdateProfileData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateProfileData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateProfile;
    if (value != null) {
      result
        ..add('updateProfile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUpdateProfileData_updateProfile)));
    }
    return result;
  }

  @override
  GUpdateProfileData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateProfileDataBuilder();

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
        case 'updateProfile':
          result.updateProfile.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdateProfileData_updateProfile))!
              as GUpdateProfileData_updateProfile);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateProfileData_updateProfileSerializer
    implements StructuredSerializer<GUpdateProfileData_updateProfile> {
  @override
  final Iterable<Type> types = const [
    GUpdateProfileData_updateProfile,
    _$GUpdateProfileData_updateProfile
  ];
  @override
  final String wireName = 'GUpdateProfileData_updateProfile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateProfileData_updateProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(GUpdateProfileData_updateProfile_user)),
    ];

    return result;
  }

  @override
  GUpdateProfileData_updateProfile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateProfileData_updateProfileBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdateProfileData_updateProfile_user))!
              as GUpdateProfileData_updateProfile_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateProfileData_updateProfile_userSerializer
    implements StructuredSerializer<GUpdateProfileData_updateProfile_user> {
  @override
  final Iterable<Type> types = const [
    GUpdateProfileData_updateProfile_user,
    _$GUpdateProfileData_updateProfile_user
  ];
  @override
  final String wireName = 'GUpdateProfileData_updateProfile_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateProfileData_updateProfile_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'profile',
      serializers.serialize(object.profile,
          specifiedType:
              const FullType(GUpdateProfileData_updateProfile_user_profile)),
      'totalMeters',
      serializers.serialize(object.totalMeters,
          specifiedType: const FullType(double)),
      'finishedRides',
      serializers.serialize(object.finishedRides,
          specifiedType: const FullType(int)),
      'isSuperuser',
      serializers.serialize(object.isSuperuser,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GUpdateProfileData_updateProfile_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateProfileData_updateProfile_userBuilder();

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
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUpdateProfileData_updateProfile_user_profile))!
              as GUpdateProfileData_updateProfile_user_profile);
          break;
        case 'totalMeters':
          result.totalMeters = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'finishedRides':
          result.finishedRides = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isSuperuser':
          result.isSuperuser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateProfileData_updateProfile_user_profileSerializer
    implements
        StructuredSerializer<GUpdateProfileData_updateProfile_user_profile> {
  @override
  final Iterable<Type> types = const [
    GUpdateProfileData_updateProfile_user_profile,
    _$GUpdateProfileData_updateProfile_user_profile
  ];
  @override
  final String wireName = 'GUpdateProfileData_updateProfile_user_profile';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUpdateProfileData_updateProfile_user_profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isPublic',
      serializers.serialize(object.isPublic,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.telegram;
    if (value != null) {
      result
        ..add('telegram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateProfileData_updateProfile_user_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateProfileData_updateProfile_user_profileBuilder();

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
        case 'telegram':
          result.telegram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePublicDataSerializer
    implements StructuredSerializer<GUpdatePublicData> {
  @override
  final Iterable<Type> types = const [GUpdatePublicData, _$GUpdatePublicData];
  @override
  final String wireName = 'GUpdatePublicData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdatePublicData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateProfile;
    if (value != null) {
      result
        ..add('updateProfile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUpdatePublicData_updateProfile)));
    }
    return result;
  }

  @override
  GUpdatePublicData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePublicDataBuilder();

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
        case 'updateProfile':
          result.updateProfile.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdatePublicData_updateProfile))!
              as GUpdatePublicData_updateProfile);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePublicData_updateProfileSerializer
    implements StructuredSerializer<GUpdatePublicData_updateProfile> {
  @override
  final Iterable<Type> types = const [
    GUpdatePublicData_updateProfile,
    _$GUpdatePublicData_updateProfile
  ];
  @override
  final String wireName = 'GUpdatePublicData_updateProfile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdatePublicData_updateProfile object,
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
  GUpdatePublicData_updateProfile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePublicData_updateProfileBuilder();

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

class _$GUserNodeFieldsDataSerializer
    implements StructuredSerializer<GUserNodeFieldsData> {
  @override
  final Iterable<Type> types = const [
    GUserNodeFieldsData,
    _$GUserNodeFieldsData
  ];
  @override
  final String wireName = 'GUserNodeFieldsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserNodeFieldsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'profile',
      serializers.serialize(object.profile,
          specifiedType: const FullType(GUserNodeFieldsData_profile)),
      'totalMeters',
      serializers.serialize(object.totalMeters,
          specifiedType: const FullType(double)),
      'finishedRides',
      serializers.serialize(object.finishedRides,
          specifiedType: const FullType(int)),
      'isSuperuser',
      serializers.serialize(object.isSuperuser,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GUserNodeFieldsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserNodeFieldsDataBuilder();

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
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserNodeFieldsData_profile))!
              as GUserNodeFieldsData_profile);
          break;
        case 'totalMeters':
          result.totalMeters = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'finishedRides':
          result.finishedRides = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isSuperuser':
          result.isSuperuser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserNodeFieldsData_profileSerializer
    implements StructuredSerializer<GUserNodeFieldsData_profile> {
  @override
  final Iterable<Type> types = const [
    GUserNodeFieldsData_profile,
    _$GUserNodeFieldsData_profile
  ];
  @override
  final String wireName = 'GUserNodeFieldsData_profile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserNodeFieldsData_profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isPublic',
      serializers.serialize(object.isPublic,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.telegram;
    if (value != null) {
      result
        ..add('telegram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserNodeFieldsData_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserNodeFieldsData_profileBuilder();

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
        case 'telegram':
          result.telegram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyProfileData extends GGetMyProfileData {
  @override
  final String G__typename;
  @override
  final GGetMyProfileData_me me;

  factory _$GGetMyProfileData(
          [void Function(GGetMyProfileDataBuilder)? updates]) =>
      (new GGetMyProfileDataBuilder()..update(updates)).build();

  _$GGetMyProfileData._({required this.G__typename, required this.me})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMyProfileData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(me, 'GGetMyProfileData', 'me');
  }

  @override
  GGetMyProfileData rebuild(void Function(GGetMyProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyProfileDataBuilder toBuilder() =>
      new GGetMyProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyProfileData &&
        G__typename == other.G__typename &&
        me == other.me;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), me.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMyProfileData')
          ..add('G__typename', G__typename)
          ..add('me', me))
        .toString();
  }
}

class GGetMyProfileDataBuilder
    implements Builder<GGetMyProfileData, GGetMyProfileDataBuilder> {
  _$GGetMyProfileData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetMyProfileData_meBuilder? _me;
  GGetMyProfileData_meBuilder get me =>
      _$this._me ??= new GGetMyProfileData_meBuilder();
  set me(GGetMyProfileData_meBuilder? me) => _$this._me = me;

  GGetMyProfileDataBuilder() {
    GGetMyProfileData._initializeBuilder(this);
  }

  GGetMyProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _me = $v.me.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyProfileData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMyProfileData;
  }

  @override
  void update(void Function(GGetMyProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMyProfileData build() {
    _$GGetMyProfileData _$result;
    try {
      _$result = _$v ??
          new _$GGetMyProfileData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetMyProfileData', 'G__typename'),
              me: me.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'me';
        me.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetMyProfileData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetMyProfileData_me extends GGetMyProfileData_me {
  @override
  final String G__typename;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final GGetMyProfileData_me_profile profile;
  @override
  final double totalMeters;
  @override
  final int finishedRides;
  @override
  final bool isSuperuser;

  factory _$GGetMyProfileData_me(
          [void Function(GGetMyProfileData_meBuilder)? updates]) =>
      (new GGetMyProfileData_meBuilder()..update(updates)).build();

  _$GGetMyProfileData_me._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.profile,
      required this.totalMeters,
      required this.finishedRides,
      required this.isSuperuser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMyProfileData_me', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GGetMyProfileData_me', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GGetMyProfileData_me', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GGetMyProfileData_me', 'username');
    BuiltValueNullFieldError.checkNotNull(
        profile, 'GGetMyProfileData_me', 'profile');
    BuiltValueNullFieldError.checkNotNull(
        totalMeters, 'GGetMyProfileData_me', 'totalMeters');
    BuiltValueNullFieldError.checkNotNull(
        finishedRides, 'GGetMyProfileData_me', 'finishedRides');
    BuiltValueNullFieldError.checkNotNull(
        isSuperuser, 'GGetMyProfileData_me', 'isSuperuser');
  }

  @override
  GGetMyProfileData_me rebuild(
          void Function(GGetMyProfileData_meBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyProfileData_meBuilder toBuilder() =>
      new GGetMyProfileData_meBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyProfileData_me &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        username == other.username &&
        profile == other.profile &&
        totalMeters == other.totalMeters &&
        finishedRides == other.finishedRides &&
        isSuperuser == other.isSuperuser;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, G__typename.hashCode),
                                firstName.hashCode),
                            lastName.hashCode),
                        username.hashCode),
                    profile.hashCode),
                totalMeters.hashCode),
            finishedRides.hashCode),
        isSuperuser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMyProfileData_me')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('username', username)
          ..add('profile', profile)
          ..add('totalMeters', totalMeters)
          ..add('finishedRides', finishedRides)
          ..add('isSuperuser', isSuperuser))
        .toString();
  }
}

class GGetMyProfileData_meBuilder
    implements Builder<GGetMyProfileData_me, GGetMyProfileData_meBuilder> {
  _$GGetMyProfileData_me? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GGetMyProfileData_me_profileBuilder? _profile;
  GGetMyProfileData_me_profileBuilder get profile =>
      _$this._profile ??= new GGetMyProfileData_me_profileBuilder();
  set profile(GGetMyProfileData_me_profileBuilder? profile) =>
      _$this._profile = profile;

  double? _totalMeters;
  double? get totalMeters => _$this._totalMeters;
  set totalMeters(double? totalMeters) => _$this._totalMeters = totalMeters;

  int? _finishedRides;
  int? get finishedRides => _$this._finishedRides;
  set finishedRides(int? finishedRides) =>
      _$this._finishedRides = finishedRides;

  bool? _isSuperuser;
  bool? get isSuperuser => _$this._isSuperuser;
  set isSuperuser(bool? isSuperuser) => _$this._isSuperuser = isSuperuser;

  GGetMyProfileData_meBuilder() {
    GGetMyProfileData_me._initializeBuilder(this);
  }

  GGetMyProfileData_meBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _username = $v.username;
      _profile = $v.profile.toBuilder();
      _totalMeters = $v.totalMeters;
      _finishedRides = $v.finishedRides;
      _isSuperuser = $v.isSuperuser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyProfileData_me other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMyProfileData_me;
  }

  @override
  void update(void Function(GGetMyProfileData_meBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMyProfileData_me build() {
    _$GGetMyProfileData_me _$result;
    try {
      _$result = _$v ??
          new _$GGetMyProfileData_me._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetMyProfileData_me', 'G__typename'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, 'GGetMyProfileData_me', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, 'GGetMyProfileData_me', 'lastName'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'GGetMyProfileData_me', 'username'),
              profile: profile.build(),
              totalMeters: BuiltValueNullFieldError.checkNotNull(
                  totalMeters, 'GGetMyProfileData_me', 'totalMeters'),
              finishedRides: BuiltValueNullFieldError.checkNotNull(
                  finishedRides, 'GGetMyProfileData_me', 'finishedRides'),
              isSuperuser: BuiltValueNullFieldError.checkNotNull(
                  isSuperuser, 'GGetMyProfileData_me', 'isSuperuser'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        profile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetMyProfileData_me', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetMyProfileData_me_profile extends GGetMyProfileData_me_profile {
  @override
  final String G__typename;
  @override
  final String? telegram;
  @override
  final bool isPublic;

  factory _$GGetMyProfileData_me_profile(
          [void Function(GGetMyProfileData_me_profileBuilder)? updates]) =>
      (new GGetMyProfileData_me_profileBuilder()..update(updates)).build();

  _$GGetMyProfileData_me_profile._(
      {required this.G__typename, this.telegram, required this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMyProfileData_me_profile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isPublic, 'GGetMyProfileData_me_profile', 'isPublic');
  }

  @override
  GGetMyProfileData_me_profile rebuild(
          void Function(GGetMyProfileData_me_profileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyProfileData_me_profileBuilder toBuilder() =>
      new GGetMyProfileData_me_profileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyProfileData_me_profile &&
        G__typename == other.G__typename &&
        telegram == other.telegram &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), telegram.hashCode),
        isPublic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMyProfileData_me_profile')
          ..add('G__typename', G__typename)
          ..add('telegram', telegram)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class GGetMyProfileData_me_profileBuilder
    implements
        Builder<GGetMyProfileData_me_profile,
            GGetMyProfileData_me_profileBuilder> {
  _$GGetMyProfileData_me_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _telegram;
  String? get telegram => _$this._telegram;
  set telegram(String? telegram) => _$this._telegram = telegram;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  GGetMyProfileData_me_profileBuilder() {
    GGetMyProfileData_me_profile._initializeBuilder(this);
  }

  GGetMyProfileData_me_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _telegram = $v.telegram;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyProfileData_me_profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMyProfileData_me_profile;
  }

  @override
  void update(void Function(GGetMyProfileData_me_profileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMyProfileData_me_profile build() {
    final _$result = _$v ??
        new _$GGetMyProfileData_me_profile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetMyProfileData_me_profile', 'G__typename'),
            telegram: telegram,
            isPublic: BuiltValueNullFieldError.checkNotNull(
                isPublic, 'GGetMyProfileData_me_profile', 'isPublic'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetMyTracksData extends GGetMyTracksData {
  @override
  final String G__typename;
  @override
  final GGetMyTracksData_me me;

  factory _$GGetMyTracksData(
          [void Function(GGetMyTracksDataBuilder)? updates]) =>
      (new GGetMyTracksDataBuilder()..update(updates)).build();

  _$GGetMyTracksData._({required this.G__typename, required this.me})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMyTracksData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(me, 'GGetMyTracksData', 'me');
  }

  @override
  GGetMyTracksData rebuild(void Function(GGetMyTracksDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyTracksDataBuilder toBuilder() =>
      new GGetMyTracksDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyTracksData &&
        G__typename == other.G__typename &&
        me == other.me;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), me.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMyTracksData')
          ..add('G__typename', G__typename)
          ..add('me', me))
        .toString();
  }
}

class GGetMyTracksDataBuilder
    implements Builder<GGetMyTracksData, GGetMyTracksDataBuilder> {
  _$GGetMyTracksData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetMyTracksData_meBuilder? _me;
  GGetMyTracksData_meBuilder get me =>
      _$this._me ??= new GGetMyTracksData_meBuilder();
  set me(GGetMyTracksData_meBuilder? me) => _$this._me = me;

  GGetMyTracksDataBuilder() {
    GGetMyTracksData._initializeBuilder(this);
  }

  GGetMyTracksDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _me = $v.me.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyTracksData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMyTracksData;
  }

  @override
  void update(void Function(GGetMyTracksDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMyTracksData build() {
    _$GGetMyTracksData _$result;
    try {
      _$result = _$v ??
          new _$GGetMyTracksData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetMyTracksData', 'G__typename'),
              me: me.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'me';
        me.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetMyTracksData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetMyTracksData_me extends GGetMyTracksData_me {
  @override
  final String G__typename;
  @override
  final GGetMyTracksData_me_tracks tracks;

  factory _$GGetMyTracksData_me(
          [void Function(GGetMyTracksData_meBuilder)? updates]) =>
      (new GGetMyTracksData_meBuilder()..update(updates)).build();

  _$GGetMyTracksData_me._({required this.G__typename, required this.tracks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMyTracksData_me', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        tracks, 'GGetMyTracksData_me', 'tracks');
  }

  @override
  GGetMyTracksData_me rebuild(
          void Function(GGetMyTracksData_meBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyTracksData_meBuilder toBuilder() =>
      new GGetMyTracksData_meBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyTracksData_me &&
        G__typename == other.G__typename &&
        tracks == other.tracks;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), tracks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMyTracksData_me')
          ..add('G__typename', G__typename)
          ..add('tracks', tracks))
        .toString();
  }
}

class GGetMyTracksData_meBuilder
    implements Builder<GGetMyTracksData_me, GGetMyTracksData_meBuilder> {
  _$GGetMyTracksData_me? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetMyTracksData_me_tracksBuilder? _tracks;
  GGetMyTracksData_me_tracksBuilder get tracks =>
      _$this._tracks ??= new GGetMyTracksData_me_tracksBuilder();
  set tracks(GGetMyTracksData_me_tracksBuilder? tracks) =>
      _$this._tracks = tracks;

  GGetMyTracksData_meBuilder() {
    GGetMyTracksData_me._initializeBuilder(this);
  }

  GGetMyTracksData_meBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _tracks = $v.tracks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyTracksData_me other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMyTracksData_me;
  }

  @override
  void update(void Function(GGetMyTracksData_meBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMyTracksData_me build() {
    _$GGetMyTracksData_me _$result;
    try {
      _$result = _$v ??
          new _$GGetMyTracksData_me._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetMyTracksData_me', 'G__typename'),
              tracks: tracks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tracks';
        tracks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetMyTracksData_me', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetMyTracksData_me_tracks extends GGetMyTracksData_me_tracks {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetMyTracksData_me_tracks_tracks> tracks;

  factory _$GGetMyTracksData_me_tracks(
          [void Function(GGetMyTracksData_me_tracksBuilder)? updates]) =>
      (new GGetMyTracksData_me_tracksBuilder()..update(updates)).build();

  _$GGetMyTracksData_me_tracks._(
      {required this.G__typename, required this.tracks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMyTracksData_me_tracks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        tracks, 'GGetMyTracksData_me_tracks', 'tracks');
  }

  @override
  GGetMyTracksData_me_tracks rebuild(
          void Function(GGetMyTracksData_me_tracksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyTracksData_me_tracksBuilder toBuilder() =>
      new GGetMyTracksData_me_tracksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyTracksData_me_tracks &&
        G__typename == other.G__typename &&
        tracks == other.tracks;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), tracks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMyTracksData_me_tracks')
          ..add('G__typename', G__typename)
          ..add('tracks', tracks))
        .toString();
  }
}

class GGetMyTracksData_me_tracksBuilder
    implements
        Builder<GGetMyTracksData_me_tracks, GGetMyTracksData_me_tracksBuilder> {
  _$GGetMyTracksData_me_tracks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetMyTracksData_me_tracks_tracks>? _tracks;
  ListBuilder<GGetMyTracksData_me_tracks_tracks> get tracks =>
      _$this._tracks ??= new ListBuilder<GGetMyTracksData_me_tracks_tracks>();
  set tracks(ListBuilder<GGetMyTracksData_me_tracks_tracks>? tracks) =>
      _$this._tracks = tracks;

  GGetMyTracksData_me_tracksBuilder() {
    GGetMyTracksData_me_tracks._initializeBuilder(this);
  }

  GGetMyTracksData_me_tracksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _tracks = $v.tracks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyTracksData_me_tracks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMyTracksData_me_tracks;
  }

  @override
  void update(void Function(GGetMyTracksData_me_tracksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMyTracksData_me_tracks build() {
    _$GGetMyTracksData_me_tracks _$result;
    try {
      _$result = _$v ??
          new _$GGetMyTracksData_me_tracks._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetMyTracksData_me_tracks', 'G__typename'),
              tracks: tracks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tracks';
        tracks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetMyTracksData_me_tracks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetMyTracksData_me_tracks_tracks
    extends GGetMyTracksData_me_tracks_tracks {
  @override
  final String G__typename;
  @override
  final DateTime? endTime;
  @override
  final double distanceMeters;
  @override
  final String id;

  factory _$GGetMyTracksData_me_tracks_tracks(
          [void Function(GGetMyTracksData_me_tracks_tracksBuilder)? updates]) =>
      (new GGetMyTracksData_me_tracks_tracksBuilder()..update(updates)).build();

  _$GGetMyTracksData_me_tracks_tracks._(
      {required this.G__typename,
      this.endTime,
      required this.distanceMeters,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMyTracksData_me_tracks_tracks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        distanceMeters, 'GGetMyTracksData_me_tracks_tracks', 'distanceMeters');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetMyTracksData_me_tracks_tracks', 'id');
  }

  @override
  GGetMyTracksData_me_tracks_tracks rebuild(
          void Function(GGetMyTracksData_me_tracks_tracksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyTracksData_me_tracks_tracksBuilder toBuilder() =>
      new GGetMyTracksData_me_tracks_tracksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyTracksData_me_tracks_tracks &&
        G__typename == other.G__typename &&
        endTime == other.endTime &&
        distanceMeters == other.distanceMeters &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), endTime.hashCode),
            distanceMeters.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMyTracksData_me_tracks_tracks')
          ..add('G__typename', G__typename)
          ..add('endTime', endTime)
          ..add('distanceMeters', distanceMeters)
          ..add('id', id))
        .toString();
  }
}

class GGetMyTracksData_me_tracks_tracksBuilder
    implements
        Builder<GGetMyTracksData_me_tracks_tracks,
            GGetMyTracksData_me_tracks_tracksBuilder> {
  _$GGetMyTracksData_me_tracks_tracks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  double? _distanceMeters;
  double? get distanceMeters => _$this._distanceMeters;
  set distanceMeters(double? distanceMeters) =>
      _$this._distanceMeters = distanceMeters;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetMyTracksData_me_tracks_tracksBuilder() {
    GGetMyTracksData_me_tracks_tracks._initializeBuilder(this);
  }

  GGetMyTracksData_me_tracks_tracksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _endTime = $v.endTime;
      _distanceMeters = $v.distanceMeters;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyTracksData_me_tracks_tracks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMyTracksData_me_tracks_tracks;
  }

  @override
  void update(
      void Function(GGetMyTracksData_me_tracks_tracksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMyTracksData_me_tracks_tracks build() {
    final _$result = _$v ??
        new _$GGetMyTracksData_me_tracks_tracks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetMyTracksData_me_tracks_tracks', 'G__typename'),
            endTime: endTime,
            distanceMeters: BuiltValueNullFieldError.checkNotNull(
                distanceMeters,
                'GGetMyTracksData_me_tracks_tracks',
                'distanceMeters'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetMyTracksData_me_tracks_tracks', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserTracksData extends GGetUserTracksData {
  @override
  final String G__typename;
  @override
  final GGetUserTracksData_userByUsername userByUsername;

  factory _$GGetUserTracksData(
          [void Function(GGetUserTracksDataBuilder)? updates]) =>
      (new GGetUserTracksDataBuilder()..update(updates)).build();

  _$GGetUserTracksData._(
      {required this.G__typename, required this.userByUsername})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserTracksData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userByUsername, 'GGetUserTracksData', 'userByUsername');
  }

  @override
  GGetUserTracksData rebuild(
          void Function(GGetUserTracksDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserTracksDataBuilder toBuilder() =>
      new GGetUserTracksDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserTracksData &&
        G__typename == other.G__typename &&
        userByUsername == other.userByUsername;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), userByUsername.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserTracksData')
          ..add('G__typename', G__typename)
          ..add('userByUsername', userByUsername))
        .toString();
  }
}

class GGetUserTracksDataBuilder
    implements Builder<GGetUserTracksData, GGetUserTracksDataBuilder> {
  _$GGetUserTracksData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetUserTracksData_userByUsernameBuilder? _userByUsername;
  GGetUserTracksData_userByUsernameBuilder get userByUsername =>
      _$this._userByUsername ??= new GGetUserTracksData_userByUsernameBuilder();
  set userByUsername(
          GGetUserTracksData_userByUsernameBuilder? userByUsername) =>
      _$this._userByUsername = userByUsername;

  GGetUserTracksDataBuilder() {
    GGetUserTracksData._initializeBuilder(this);
  }

  GGetUserTracksDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userByUsername = $v.userByUsername.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserTracksData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserTracksData;
  }

  @override
  void update(void Function(GGetUserTracksDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserTracksData build() {
    _$GGetUserTracksData _$result;
    try {
      _$result = _$v ??
          new _$GGetUserTracksData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUserTracksData', 'G__typename'),
              userByUsername: userByUsername.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userByUsername';
        userByUsername.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserTracksData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserTracksData_userByUsername
    extends GGetUserTracksData_userByUsername {
  @override
  final String G__typename;
  @override
  final GGetUserTracksData_userByUsername_tracks tracks;

  factory _$GGetUserTracksData_userByUsername(
          [void Function(GGetUserTracksData_userByUsernameBuilder)? updates]) =>
      (new GGetUserTracksData_userByUsernameBuilder()..update(updates)).build();

  _$GGetUserTracksData_userByUsername._(
      {required this.G__typename, required this.tracks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserTracksData_userByUsername', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        tracks, 'GGetUserTracksData_userByUsername', 'tracks');
  }

  @override
  GGetUserTracksData_userByUsername rebuild(
          void Function(GGetUserTracksData_userByUsernameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserTracksData_userByUsernameBuilder toBuilder() =>
      new GGetUserTracksData_userByUsernameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserTracksData_userByUsername &&
        G__typename == other.G__typename &&
        tracks == other.tracks;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), tracks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserTracksData_userByUsername')
          ..add('G__typename', G__typename)
          ..add('tracks', tracks))
        .toString();
  }
}

class GGetUserTracksData_userByUsernameBuilder
    implements
        Builder<GGetUserTracksData_userByUsername,
            GGetUserTracksData_userByUsernameBuilder> {
  _$GGetUserTracksData_userByUsername? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetUserTracksData_userByUsername_tracksBuilder? _tracks;
  GGetUserTracksData_userByUsername_tracksBuilder get tracks =>
      _$this._tracks ??= new GGetUserTracksData_userByUsername_tracksBuilder();
  set tracks(GGetUserTracksData_userByUsername_tracksBuilder? tracks) =>
      _$this._tracks = tracks;

  GGetUserTracksData_userByUsernameBuilder() {
    GGetUserTracksData_userByUsername._initializeBuilder(this);
  }

  GGetUserTracksData_userByUsernameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _tracks = $v.tracks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserTracksData_userByUsername other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserTracksData_userByUsername;
  }

  @override
  void update(
      void Function(GGetUserTracksData_userByUsernameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserTracksData_userByUsername build() {
    _$GGetUserTracksData_userByUsername _$result;
    try {
      _$result = _$v ??
          new _$GGetUserTracksData_userByUsername._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetUserTracksData_userByUsername', 'G__typename'),
              tracks: tracks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tracks';
        tracks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserTracksData_userByUsername', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserTracksData_userByUsername_tracks
    extends GGetUserTracksData_userByUsername_tracks {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetUserTracksData_userByUsername_tracks_tracks> tracks;

  factory _$GGetUserTracksData_userByUsername_tracks(
          [void Function(GGetUserTracksData_userByUsername_tracksBuilder)?
              updates]) =>
      (new GGetUserTracksData_userByUsername_tracksBuilder()..update(updates))
          .build();

  _$GGetUserTracksData_userByUsername_tracks._(
      {required this.G__typename, required this.tracks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserTracksData_userByUsername_tracks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        tracks, 'GGetUserTracksData_userByUsername_tracks', 'tracks');
  }

  @override
  GGetUserTracksData_userByUsername_tracks rebuild(
          void Function(GGetUserTracksData_userByUsername_tracksBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserTracksData_userByUsername_tracksBuilder toBuilder() =>
      new GGetUserTracksData_userByUsername_tracksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserTracksData_userByUsername_tracks &&
        G__typename == other.G__typename &&
        tracks == other.tracks;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), tracks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetUserTracksData_userByUsername_tracks')
          ..add('G__typename', G__typename)
          ..add('tracks', tracks))
        .toString();
  }
}

class GGetUserTracksData_userByUsername_tracksBuilder
    implements
        Builder<GGetUserTracksData_userByUsername_tracks,
            GGetUserTracksData_userByUsername_tracksBuilder> {
  _$GGetUserTracksData_userByUsername_tracks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetUserTracksData_userByUsername_tracks_tracks>? _tracks;
  ListBuilder<GGetUserTracksData_userByUsername_tracks_tracks> get tracks =>
      _$this._tracks ??=
          new ListBuilder<GGetUserTracksData_userByUsername_tracks_tracks>();
  set tracks(
          ListBuilder<GGetUserTracksData_userByUsername_tracks_tracks>?
              tracks) =>
      _$this._tracks = tracks;

  GGetUserTracksData_userByUsername_tracksBuilder() {
    GGetUserTracksData_userByUsername_tracks._initializeBuilder(this);
  }

  GGetUserTracksData_userByUsername_tracksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _tracks = $v.tracks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserTracksData_userByUsername_tracks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserTracksData_userByUsername_tracks;
  }

  @override
  void update(
      void Function(GGetUserTracksData_userByUsername_tracksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserTracksData_userByUsername_tracks build() {
    _$GGetUserTracksData_userByUsername_tracks _$result;
    try {
      _$result = _$v ??
          new _$GGetUserTracksData_userByUsername_tracks._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetUserTracksData_userByUsername_tracks', 'G__typename'),
              tracks: tracks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tracks';
        tracks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserTracksData_userByUsername_tracks',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserTracksData_userByUsername_tracks_tracks
    extends GGetUserTracksData_userByUsername_tracks_tracks {
  @override
  final String G__typename;
  @override
  final DateTime? endTime;
  @override
  final double distanceMeters;
  @override
  final String id;

  factory _$GGetUserTracksData_userByUsername_tracks_tracks(
          [void Function(
                  GGetUserTracksData_userByUsername_tracks_tracksBuilder)?
              updates]) =>
      (new GGetUserTracksData_userByUsername_tracks_tracksBuilder()
            ..update(updates))
          .build();

  _$GGetUserTracksData_userByUsername_tracks_tracks._(
      {required this.G__typename,
      this.endTime,
      required this.distanceMeters,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetUserTracksData_userByUsername_tracks_tracks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(distanceMeters,
        'GGetUserTracksData_userByUsername_tracks_tracks', 'distanceMeters');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetUserTracksData_userByUsername_tracks_tracks', 'id');
  }

  @override
  GGetUserTracksData_userByUsername_tracks_tracks rebuild(
          void Function(GGetUserTracksData_userByUsername_tracks_tracksBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserTracksData_userByUsername_tracks_tracksBuilder toBuilder() =>
      new GGetUserTracksData_userByUsername_tracks_tracksBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserTracksData_userByUsername_tracks_tracks &&
        G__typename == other.G__typename &&
        endTime == other.endTime &&
        distanceMeters == other.distanceMeters &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), endTime.hashCode),
            distanceMeters.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetUserTracksData_userByUsername_tracks_tracks')
          ..add('G__typename', G__typename)
          ..add('endTime', endTime)
          ..add('distanceMeters', distanceMeters)
          ..add('id', id))
        .toString();
  }
}

class GGetUserTracksData_userByUsername_tracks_tracksBuilder
    implements
        Builder<GGetUserTracksData_userByUsername_tracks_tracks,
            GGetUserTracksData_userByUsername_tracks_tracksBuilder> {
  _$GGetUserTracksData_userByUsername_tracks_tracks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  double? _distanceMeters;
  double? get distanceMeters => _$this._distanceMeters;
  set distanceMeters(double? distanceMeters) =>
      _$this._distanceMeters = distanceMeters;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetUserTracksData_userByUsername_tracks_tracksBuilder() {
    GGetUserTracksData_userByUsername_tracks_tracks._initializeBuilder(this);
  }

  GGetUserTracksData_userByUsername_tracks_tracksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _endTime = $v.endTime;
      _distanceMeters = $v.distanceMeters;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserTracksData_userByUsername_tracks_tracks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserTracksData_userByUsername_tracks_tracks;
  }

  @override
  void update(
      void Function(GGetUserTracksData_userByUsername_tracks_tracksBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserTracksData_userByUsername_tracks_tracks build() {
    final _$result = _$v ??
        new _$GGetUserTracksData_userByUsername_tracks_tracks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetUserTracksData_userByUsername_tracks_tracks',
                'G__typename'),
            endTime: endTime,
            distanceMeters: BuiltValueNullFieldError.checkNotNull(
                distanceMeters,
                'GGetUserTracksData_userByUsername_tracks_tracks',
                'distanceMeters'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetUserTracksData_userByUsername_tracks_tracks', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserProfileData extends GGetUserProfileData {
  @override
  final String G__typename;
  @override
  final GGetUserProfileData_userByUsername userByUsername;

  factory _$GGetUserProfileData(
          [void Function(GGetUserProfileDataBuilder)? updates]) =>
      (new GGetUserProfileDataBuilder()..update(updates)).build();

  _$GGetUserProfileData._(
      {required this.G__typename, required this.userByUsername})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserProfileData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userByUsername, 'GGetUserProfileData', 'userByUsername');
  }

  @override
  GGetUserProfileData rebuild(
          void Function(GGetUserProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserProfileDataBuilder toBuilder() =>
      new GGetUserProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserProfileData &&
        G__typename == other.G__typename &&
        userByUsername == other.userByUsername;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), userByUsername.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserProfileData')
          ..add('G__typename', G__typename)
          ..add('userByUsername', userByUsername))
        .toString();
  }
}

class GGetUserProfileDataBuilder
    implements Builder<GGetUserProfileData, GGetUserProfileDataBuilder> {
  _$GGetUserProfileData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetUserProfileData_userByUsernameBuilder? _userByUsername;
  GGetUserProfileData_userByUsernameBuilder get userByUsername =>
      _$this._userByUsername ??=
          new GGetUserProfileData_userByUsernameBuilder();
  set userByUsername(
          GGetUserProfileData_userByUsernameBuilder? userByUsername) =>
      _$this._userByUsername = userByUsername;

  GGetUserProfileDataBuilder() {
    GGetUserProfileData._initializeBuilder(this);
  }

  GGetUserProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userByUsername = $v.userByUsername.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserProfileData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserProfileData;
  }

  @override
  void update(void Function(GGetUserProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserProfileData build() {
    _$GGetUserProfileData _$result;
    try {
      _$result = _$v ??
          new _$GGetUserProfileData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUserProfileData', 'G__typename'),
              userByUsername: userByUsername.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userByUsername';
        userByUsername.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserProfileData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserProfileData_userByUsername
    extends GGetUserProfileData_userByUsername {
  @override
  final String G__typename;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final GGetUserProfileData_userByUsername_profile profile;
  @override
  final double totalMeters;
  @override
  final int finishedRides;
  @override
  final bool isSuperuser;

  factory _$GGetUserProfileData_userByUsername(
          [void Function(GGetUserProfileData_userByUsernameBuilder)?
              updates]) =>
      (new GGetUserProfileData_userByUsernameBuilder()..update(updates))
          .build();

  _$GGetUserProfileData_userByUsername._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.profile,
      required this.totalMeters,
      required this.finishedRides,
      required this.isSuperuser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserProfileData_userByUsername', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GGetUserProfileData_userByUsername', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GGetUserProfileData_userByUsername', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GGetUserProfileData_userByUsername', 'username');
    BuiltValueNullFieldError.checkNotNull(
        profile, 'GGetUserProfileData_userByUsername', 'profile');
    BuiltValueNullFieldError.checkNotNull(
        totalMeters, 'GGetUserProfileData_userByUsername', 'totalMeters');
    BuiltValueNullFieldError.checkNotNull(
        finishedRides, 'GGetUserProfileData_userByUsername', 'finishedRides');
    BuiltValueNullFieldError.checkNotNull(
        isSuperuser, 'GGetUserProfileData_userByUsername', 'isSuperuser');
  }

  @override
  GGetUserProfileData_userByUsername rebuild(
          void Function(GGetUserProfileData_userByUsernameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserProfileData_userByUsernameBuilder toBuilder() =>
      new GGetUserProfileData_userByUsernameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserProfileData_userByUsername &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        username == other.username &&
        profile == other.profile &&
        totalMeters == other.totalMeters &&
        finishedRides == other.finishedRides &&
        isSuperuser == other.isSuperuser;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, G__typename.hashCode),
                                firstName.hashCode),
                            lastName.hashCode),
                        username.hashCode),
                    profile.hashCode),
                totalMeters.hashCode),
            finishedRides.hashCode),
        isSuperuser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserProfileData_userByUsername')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('username', username)
          ..add('profile', profile)
          ..add('totalMeters', totalMeters)
          ..add('finishedRides', finishedRides)
          ..add('isSuperuser', isSuperuser))
        .toString();
  }
}

class GGetUserProfileData_userByUsernameBuilder
    implements
        Builder<GGetUserProfileData_userByUsername,
            GGetUserProfileData_userByUsernameBuilder> {
  _$GGetUserProfileData_userByUsername? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GGetUserProfileData_userByUsername_profileBuilder? _profile;
  GGetUserProfileData_userByUsername_profileBuilder get profile =>
      _$this._profile ??=
          new GGetUserProfileData_userByUsername_profileBuilder();
  set profile(GGetUserProfileData_userByUsername_profileBuilder? profile) =>
      _$this._profile = profile;

  double? _totalMeters;
  double? get totalMeters => _$this._totalMeters;
  set totalMeters(double? totalMeters) => _$this._totalMeters = totalMeters;

  int? _finishedRides;
  int? get finishedRides => _$this._finishedRides;
  set finishedRides(int? finishedRides) =>
      _$this._finishedRides = finishedRides;

  bool? _isSuperuser;
  bool? get isSuperuser => _$this._isSuperuser;
  set isSuperuser(bool? isSuperuser) => _$this._isSuperuser = isSuperuser;

  GGetUserProfileData_userByUsernameBuilder() {
    GGetUserProfileData_userByUsername._initializeBuilder(this);
  }

  GGetUserProfileData_userByUsernameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _username = $v.username;
      _profile = $v.profile.toBuilder();
      _totalMeters = $v.totalMeters;
      _finishedRides = $v.finishedRides;
      _isSuperuser = $v.isSuperuser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserProfileData_userByUsername other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserProfileData_userByUsername;
  }

  @override
  void update(
      void Function(GGetUserProfileData_userByUsernameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserProfileData_userByUsername build() {
    _$GGetUserProfileData_userByUsername _$result;
    try {
      _$result = _$v ??
          new _$GGetUserProfileData_userByUsername._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUserProfileData_userByUsername', 'G__typename'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, 'GGetUserProfileData_userByUsername', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, 'GGetUserProfileData_userByUsername', 'lastName'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'GGetUserProfileData_userByUsername', 'username'),
              profile: profile.build(),
              totalMeters: BuiltValueNullFieldError.checkNotNull(
                  totalMeters, 'GGetUserProfileData_userByUsername', 'totalMeters'),
              finishedRides: BuiltValueNullFieldError.checkNotNull(
                  finishedRides,
                  'GGetUserProfileData_userByUsername',
                  'finishedRides'),
              isSuperuser: BuiltValueNullFieldError.checkNotNull(
                  isSuperuser, 'GGetUserProfileData_userByUsername', 'isSuperuser'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        profile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserProfileData_userByUsername', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserProfileData_userByUsername_profile
    extends GGetUserProfileData_userByUsername_profile {
  @override
  final String G__typename;
  @override
  final String? telegram;
  @override
  final bool isPublic;

  factory _$GGetUserProfileData_userByUsername_profile(
          [void Function(GGetUserProfileData_userByUsername_profileBuilder)?
              updates]) =>
      (new GGetUserProfileData_userByUsername_profileBuilder()..update(updates))
          .build();

  _$GGetUserProfileData_userByUsername_profile._(
      {required this.G__typename, this.telegram, required this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetUserProfileData_userByUsername_profile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isPublic, 'GGetUserProfileData_userByUsername_profile', 'isPublic');
  }

  @override
  GGetUserProfileData_userByUsername_profile rebuild(
          void Function(GGetUserProfileData_userByUsername_profileBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserProfileData_userByUsername_profileBuilder toBuilder() =>
      new GGetUserProfileData_userByUsername_profileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserProfileData_userByUsername_profile &&
        G__typename == other.G__typename &&
        telegram == other.telegram &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), telegram.hashCode),
        isPublic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetUserProfileData_userByUsername_profile')
          ..add('G__typename', G__typename)
          ..add('telegram', telegram)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class GGetUserProfileData_userByUsername_profileBuilder
    implements
        Builder<GGetUserProfileData_userByUsername_profile,
            GGetUserProfileData_userByUsername_profileBuilder> {
  _$GGetUserProfileData_userByUsername_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _telegram;
  String? get telegram => _$this._telegram;
  set telegram(String? telegram) => _$this._telegram = telegram;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  GGetUserProfileData_userByUsername_profileBuilder() {
    GGetUserProfileData_userByUsername_profile._initializeBuilder(this);
  }

  GGetUserProfileData_userByUsername_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _telegram = $v.telegram;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserProfileData_userByUsername_profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserProfileData_userByUsername_profile;
  }

  @override
  void update(
      void Function(GGetUserProfileData_userByUsername_profileBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserProfileData_userByUsername_profile build() {
    final _$result = _$v ??
        new _$GGetUserProfileData_userByUsername_profile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetUserProfileData_userByUsername_profile', 'G__typename'),
            telegram: telegram,
            isPublic: BuiltValueNullFieldError.checkNotNull(isPublic,
                'GGetUserProfileData_userByUsername_profile', 'isPublic'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProfileData extends GUpdateProfileData {
  @override
  final String G__typename;
  @override
  final GUpdateProfileData_updateProfile? updateProfile;

  factory _$GUpdateProfileData(
          [void Function(GUpdateProfileDataBuilder)? updates]) =>
      (new GUpdateProfileDataBuilder()..update(updates)).build();

  _$GUpdateProfileData._({required this.G__typename, this.updateProfile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdateProfileData', 'G__typename');
  }

  @override
  GUpdateProfileData rebuild(
          void Function(GUpdateProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProfileDataBuilder toBuilder() =>
      new GUpdateProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProfileData &&
        G__typename == other.G__typename &&
        updateProfile == other.updateProfile;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), updateProfile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateProfileData')
          ..add('G__typename', G__typename)
          ..add('updateProfile', updateProfile))
        .toString();
  }
}

class GUpdateProfileDataBuilder
    implements Builder<GUpdateProfileData, GUpdateProfileDataBuilder> {
  _$GUpdateProfileData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateProfileData_updateProfileBuilder? _updateProfile;
  GUpdateProfileData_updateProfileBuilder get updateProfile =>
      _$this._updateProfile ??= new GUpdateProfileData_updateProfileBuilder();
  set updateProfile(GUpdateProfileData_updateProfileBuilder? updateProfile) =>
      _$this._updateProfile = updateProfile;

  GUpdateProfileDataBuilder() {
    GUpdateProfileData._initializeBuilder(this);
  }

  GUpdateProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateProfile = $v.updateProfile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProfileData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateProfileData;
  }

  @override
  void update(void Function(GUpdateProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateProfileData build() {
    _$GUpdateProfileData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateProfileData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUpdateProfileData', 'G__typename'),
              updateProfile: _updateProfile?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateProfile';
        _updateProfile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateProfileData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProfileData_updateProfile
    extends GUpdateProfileData_updateProfile {
  @override
  final String G__typename;
  @override
  final bool success;
  @override
  final GUpdateProfileData_updateProfile_user user;

  factory _$GUpdateProfileData_updateProfile(
          [void Function(GUpdateProfileData_updateProfileBuilder)? updates]) =>
      (new GUpdateProfileData_updateProfileBuilder()..update(updates)).build();

  _$GUpdateProfileData_updateProfile._(
      {required this.G__typename, required this.success, required this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdateProfileData_updateProfile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, 'GUpdateProfileData_updateProfile', 'success');
    BuiltValueNullFieldError.checkNotNull(
        user, 'GUpdateProfileData_updateProfile', 'user');
  }

  @override
  GUpdateProfileData_updateProfile rebuild(
          void Function(GUpdateProfileData_updateProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProfileData_updateProfileBuilder toBuilder() =>
      new GUpdateProfileData_updateProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProfileData_updateProfile &&
        G__typename == other.G__typename &&
        success == other.success &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), success.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateProfileData_updateProfile')
          ..add('G__typename', G__typename)
          ..add('success', success)
          ..add('user', user))
        .toString();
  }
}

class GUpdateProfileData_updateProfileBuilder
    implements
        Builder<GUpdateProfileData_updateProfile,
            GUpdateProfileData_updateProfileBuilder> {
  _$GUpdateProfileData_updateProfile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GUpdateProfileData_updateProfile_userBuilder? _user;
  GUpdateProfileData_updateProfile_userBuilder get user =>
      _$this._user ??= new GUpdateProfileData_updateProfile_userBuilder();
  set user(GUpdateProfileData_updateProfile_userBuilder? user) =>
      _$this._user = user;

  GUpdateProfileData_updateProfileBuilder() {
    GUpdateProfileData_updateProfile._initializeBuilder(this);
  }

  GUpdateProfileData_updateProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProfileData_updateProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateProfileData_updateProfile;
  }

  @override
  void update(void Function(GUpdateProfileData_updateProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateProfileData_updateProfile build() {
    _$GUpdateProfileData_updateProfile _$result;
    try {
      _$result = _$v ??
          new _$GUpdateProfileData_updateProfile._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GUpdateProfileData_updateProfile', 'G__typename'),
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'GUpdateProfileData_updateProfile', 'success'),
              user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateProfileData_updateProfile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProfileData_updateProfile_user
    extends GUpdateProfileData_updateProfile_user {
  @override
  final String G__typename;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final GUpdateProfileData_updateProfile_user_profile profile;
  @override
  final double totalMeters;
  @override
  final int finishedRides;
  @override
  final bool isSuperuser;

  factory _$GUpdateProfileData_updateProfile_user(
          [void Function(GUpdateProfileData_updateProfile_userBuilder)?
              updates]) =>
      (new GUpdateProfileData_updateProfile_userBuilder()..update(updates))
          .build();

  _$GUpdateProfileData_updateProfile_user._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.profile,
      required this.totalMeters,
      required this.finishedRides,
      required this.isSuperuser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdateProfileData_updateProfile_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GUpdateProfileData_updateProfile_user', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GUpdateProfileData_updateProfile_user', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GUpdateProfileData_updateProfile_user', 'username');
    BuiltValueNullFieldError.checkNotNull(
        profile, 'GUpdateProfileData_updateProfile_user', 'profile');
    BuiltValueNullFieldError.checkNotNull(
        totalMeters, 'GUpdateProfileData_updateProfile_user', 'totalMeters');
    BuiltValueNullFieldError.checkNotNull(finishedRides,
        'GUpdateProfileData_updateProfile_user', 'finishedRides');
    BuiltValueNullFieldError.checkNotNull(
        isSuperuser, 'GUpdateProfileData_updateProfile_user', 'isSuperuser');
  }

  @override
  GUpdateProfileData_updateProfile_user rebuild(
          void Function(GUpdateProfileData_updateProfile_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProfileData_updateProfile_userBuilder toBuilder() =>
      new GUpdateProfileData_updateProfile_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProfileData_updateProfile_user &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        username == other.username &&
        profile == other.profile &&
        totalMeters == other.totalMeters &&
        finishedRides == other.finishedRides &&
        isSuperuser == other.isSuperuser;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, G__typename.hashCode),
                                firstName.hashCode),
                            lastName.hashCode),
                        username.hashCode),
                    profile.hashCode),
                totalMeters.hashCode),
            finishedRides.hashCode),
        isSuperuser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateProfileData_updateProfile_user')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('username', username)
          ..add('profile', profile)
          ..add('totalMeters', totalMeters)
          ..add('finishedRides', finishedRides)
          ..add('isSuperuser', isSuperuser))
        .toString();
  }
}

class GUpdateProfileData_updateProfile_userBuilder
    implements
        Builder<GUpdateProfileData_updateProfile_user,
            GUpdateProfileData_updateProfile_userBuilder> {
  _$GUpdateProfileData_updateProfile_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GUpdateProfileData_updateProfile_user_profileBuilder? _profile;
  GUpdateProfileData_updateProfile_user_profileBuilder get profile =>
      _$this._profile ??=
          new GUpdateProfileData_updateProfile_user_profileBuilder();
  set profile(GUpdateProfileData_updateProfile_user_profileBuilder? profile) =>
      _$this._profile = profile;

  double? _totalMeters;
  double? get totalMeters => _$this._totalMeters;
  set totalMeters(double? totalMeters) => _$this._totalMeters = totalMeters;

  int? _finishedRides;
  int? get finishedRides => _$this._finishedRides;
  set finishedRides(int? finishedRides) =>
      _$this._finishedRides = finishedRides;

  bool? _isSuperuser;
  bool? get isSuperuser => _$this._isSuperuser;
  set isSuperuser(bool? isSuperuser) => _$this._isSuperuser = isSuperuser;

  GUpdateProfileData_updateProfile_userBuilder() {
    GUpdateProfileData_updateProfile_user._initializeBuilder(this);
  }

  GUpdateProfileData_updateProfile_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _username = $v.username;
      _profile = $v.profile.toBuilder();
      _totalMeters = $v.totalMeters;
      _finishedRides = $v.finishedRides;
      _isSuperuser = $v.isSuperuser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProfileData_updateProfile_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateProfileData_updateProfile_user;
  }

  @override
  void update(
      void Function(GUpdateProfileData_updateProfile_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateProfileData_updateProfile_user build() {
    _$GUpdateProfileData_updateProfile_user _$result;
    try {
      _$result = _$v ??
          new _$GUpdateProfileData_updateProfile_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUpdateProfileData_updateProfile_user', 'G__typename'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, 'GUpdateProfileData_updateProfile_user', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, 'GUpdateProfileData_updateProfile_user', 'lastName'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'GUpdateProfileData_updateProfile_user', 'username'),
              profile: profile.build(),
              totalMeters: BuiltValueNullFieldError.checkNotNull(
                  totalMeters, 'GUpdateProfileData_updateProfile_user', 'totalMeters'),
              finishedRides: BuiltValueNullFieldError.checkNotNull(
                  finishedRides, 'GUpdateProfileData_updateProfile_user', 'finishedRides'),
              isSuperuser: BuiltValueNullFieldError.checkNotNull(
                  isSuperuser, 'GUpdateProfileData_updateProfile_user', 'isSuperuser'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        profile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateProfileData_updateProfile_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProfileData_updateProfile_user_profile
    extends GUpdateProfileData_updateProfile_user_profile {
  @override
  final String G__typename;
  @override
  final String? telegram;
  @override
  final bool isPublic;

  factory _$GUpdateProfileData_updateProfile_user_profile(
          [void Function(GUpdateProfileData_updateProfile_user_profileBuilder)?
              updates]) =>
      (new GUpdateProfileData_updateProfile_user_profileBuilder()
            ..update(updates))
          .build();

  _$GUpdateProfileData_updateProfile_user_profile._(
      {required this.G__typename, this.telegram, required this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GUpdateProfileData_updateProfile_user_profile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isPublic, 'GUpdateProfileData_updateProfile_user_profile', 'isPublic');
  }

  @override
  GUpdateProfileData_updateProfile_user_profile rebuild(
          void Function(GUpdateProfileData_updateProfile_user_profileBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProfileData_updateProfile_user_profileBuilder toBuilder() =>
      new GUpdateProfileData_updateProfile_user_profileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProfileData_updateProfile_user_profile &&
        G__typename == other.G__typename &&
        telegram == other.telegram &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), telegram.hashCode),
        isPublic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GUpdateProfileData_updateProfile_user_profile')
          ..add('G__typename', G__typename)
          ..add('telegram', telegram)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class GUpdateProfileData_updateProfile_user_profileBuilder
    implements
        Builder<GUpdateProfileData_updateProfile_user_profile,
            GUpdateProfileData_updateProfile_user_profileBuilder> {
  _$GUpdateProfileData_updateProfile_user_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _telegram;
  String? get telegram => _$this._telegram;
  set telegram(String? telegram) => _$this._telegram = telegram;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  GUpdateProfileData_updateProfile_user_profileBuilder() {
    GUpdateProfileData_updateProfile_user_profile._initializeBuilder(this);
  }

  GUpdateProfileData_updateProfile_user_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _telegram = $v.telegram;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProfileData_updateProfile_user_profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateProfileData_updateProfile_user_profile;
  }

  @override
  void update(
      void Function(GUpdateProfileData_updateProfile_user_profileBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateProfileData_updateProfile_user_profile build() {
    final _$result = _$v ??
        new _$GUpdateProfileData_updateProfile_user_profile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GUpdateProfileData_updateProfile_user_profile', 'G__typename'),
            telegram: telegram,
            isPublic: BuiltValueNullFieldError.checkNotNull(isPublic,
                'GUpdateProfileData_updateProfile_user_profile', 'isPublic'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePublicData extends GUpdatePublicData {
  @override
  final String G__typename;
  @override
  final GUpdatePublicData_updateProfile? updateProfile;

  factory _$GUpdatePublicData(
          [void Function(GUpdatePublicDataBuilder)? updates]) =>
      (new GUpdatePublicDataBuilder()..update(updates)).build();

  _$GUpdatePublicData._({required this.G__typename, this.updateProfile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdatePublicData', 'G__typename');
  }

  @override
  GUpdatePublicData rebuild(void Function(GUpdatePublicDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePublicDataBuilder toBuilder() =>
      new GUpdatePublicDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePublicData &&
        G__typename == other.G__typename &&
        updateProfile == other.updateProfile;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), updateProfile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdatePublicData')
          ..add('G__typename', G__typename)
          ..add('updateProfile', updateProfile))
        .toString();
  }
}

class GUpdatePublicDataBuilder
    implements Builder<GUpdatePublicData, GUpdatePublicDataBuilder> {
  _$GUpdatePublicData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdatePublicData_updateProfileBuilder? _updateProfile;
  GUpdatePublicData_updateProfileBuilder get updateProfile =>
      _$this._updateProfile ??= new GUpdatePublicData_updateProfileBuilder();
  set updateProfile(GUpdatePublicData_updateProfileBuilder? updateProfile) =>
      _$this._updateProfile = updateProfile;

  GUpdatePublicDataBuilder() {
    GUpdatePublicData._initializeBuilder(this);
  }

  GUpdatePublicDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateProfile = $v.updateProfile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePublicData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePublicData;
  }

  @override
  void update(void Function(GUpdatePublicDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdatePublicData build() {
    _$GUpdatePublicData _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePublicData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUpdatePublicData', 'G__typename'),
              updateProfile: _updateProfile?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateProfile';
        _updateProfile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdatePublicData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePublicData_updateProfile
    extends GUpdatePublicData_updateProfile {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$GUpdatePublicData_updateProfile(
          [void Function(GUpdatePublicData_updateProfileBuilder)? updates]) =>
      (new GUpdatePublicData_updateProfileBuilder()..update(updates)).build();

  _$GUpdatePublicData_updateProfile._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdatePublicData_updateProfile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, 'GUpdatePublicData_updateProfile', 'success');
  }

  @override
  GUpdatePublicData_updateProfile rebuild(
          void Function(GUpdatePublicData_updateProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePublicData_updateProfileBuilder toBuilder() =>
      new GUpdatePublicData_updateProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePublicData_updateProfile &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdatePublicData_updateProfile')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class GUpdatePublicData_updateProfileBuilder
    implements
        Builder<GUpdatePublicData_updateProfile,
            GUpdatePublicData_updateProfileBuilder> {
  _$GUpdatePublicData_updateProfile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GUpdatePublicData_updateProfileBuilder() {
    GUpdatePublicData_updateProfile._initializeBuilder(this);
  }

  GUpdatePublicData_updateProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePublicData_updateProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePublicData_updateProfile;
  }

  @override
  void update(void Function(GUpdatePublicData_updateProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdatePublicData_updateProfile build() {
    final _$result = _$v ??
        new _$GUpdatePublicData_updateProfile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GUpdatePublicData_updateProfile', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'GUpdatePublicData_updateProfile', 'success'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserNodeFieldsData extends GUserNodeFieldsData {
  @override
  final String G__typename;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final GUserNodeFieldsData_profile profile;
  @override
  final double totalMeters;
  @override
  final int finishedRides;
  @override
  final bool isSuperuser;

  factory _$GUserNodeFieldsData(
          [void Function(GUserNodeFieldsDataBuilder)? updates]) =>
      (new GUserNodeFieldsDataBuilder()..update(updates)).build();

  _$GUserNodeFieldsData._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.profile,
      required this.totalMeters,
      required this.finishedRides,
      required this.isSuperuser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUserNodeFieldsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GUserNodeFieldsData', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GUserNodeFieldsData', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GUserNodeFieldsData', 'username');
    BuiltValueNullFieldError.checkNotNull(
        profile, 'GUserNodeFieldsData', 'profile');
    BuiltValueNullFieldError.checkNotNull(
        totalMeters, 'GUserNodeFieldsData', 'totalMeters');
    BuiltValueNullFieldError.checkNotNull(
        finishedRides, 'GUserNodeFieldsData', 'finishedRides');
    BuiltValueNullFieldError.checkNotNull(
        isSuperuser, 'GUserNodeFieldsData', 'isSuperuser');
  }

  @override
  GUserNodeFieldsData rebuild(
          void Function(GUserNodeFieldsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserNodeFieldsDataBuilder toBuilder() =>
      new GUserNodeFieldsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserNodeFieldsData &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        username == other.username &&
        profile == other.profile &&
        totalMeters == other.totalMeters &&
        finishedRides == other.finishedRides &&
        isSuperuser == other.isSuperuser;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, G__typename.hashCode),
                                firstName.hashCode),
                            lastName.hashCode),
                        username.hashCode),
                    profile.hashCode),
                totalMeters.hashCode),
            finishedRides.hashCode),
        isSuperuser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserNodeFieldsData')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('username', username)
          ..add('profile', profile)
          ..add('totalMeters', totalMeters)
          ..add('finishedRides', finishedRides)
          ..add('isSuperuser', isSuperuser))
        .toString();
  }
}

class GUserNodeFieldsDataBuilder
    implements Builder<GUserNodeFieldsData, GUserNodeFieldsDataBuilder> {
  _$GUserNodeFieldsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GUserNodeFieldsData_profileBuilder? _profile;
  GUserNodeFieldsData_profileBuilder get profile =>
      _$this._profile ??= new GUserNodeFieldsData_profileBuilder();
  set profile(GUserNodeFieldsData_profileBuilder? profile) =>
      _$this._profile = profile;

  double? _totalMeters;
  double? get totalMeters => _$this._totalMeters;
  set totalMeters(double? totalMeters) => _$this._totalMeters = totalMeters;

  int? _finishedRides;
  int? get finishedRides => _$this._finishedRides;
  set finishedRides(int? finishedRides) =>
      _$this._finishedRides = finishedRides;

  bool? _isSuperuser;
  bool? get isSuperuser => _$this._isSuperuser;
  set isSuperuser(bool? isSuperuser) => _$this._isSuperuser = isSuperuser;

  GUserNodeFieldsDataBuilder() {
    GUserNodeFieldsData._initializeBuilder(this);
  }

  GUserNodeFieldsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _username = $v.username;
      _profile = $v.profile.toBuilder();
      _totalMeters = $v.totalMeters;
      _finishedRides = $v.finishedRides;
      _isSuperuser = $v.isSuperuser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserNodeFieldsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserNodeFieldsData;
  }

  @override
  void update(void Function(GUserNodeFieldsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUserNodeFieldsData build() {
    _$GUserNodeFieldsData _$result;
    try {
      _$result = _$v ??
          new _$GUserNodeFieldsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUserNodeFieldsData', 'G__typename'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, 'GUserNodeFieldsData', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, 'GUserNodeFieldsData', 'lastName'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'GUserNodeFieldsData', 'username'),
              profile: profile.build(),
              totalMeters: BuiltValueNullFieldError.checkNotNull(
                  totalMeters, 'GUserNodeFieldsData', 'totalMeters'),
              finishedRides: BuiltValueNullFieldError.checkNotNull(
                  finishedRides, 'GUserNodeFieldsData', 'finishedRides'),
              isSuperuser: BuiltValueNullFieldError.checkNotNull(
                  isSuperuser, 'GUserNodeFieldsData', 'isSuperuser'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        profile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUserNodeFieldsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserNodeFieldsData_profile extends GUserNodeFieldsData_profile {
  @override
  final String G__typename;
  @override
  final String? telegram;
  @override
  final bool isPublic;

  factory _$GUserNodeFieldsData_profile(
          [void Function(GUserNodeFieldsData_profileBuilder)? updates]) =>
      (new GUserNodeFieldsData_profileBuilder()..update(updates)).build();

  _$GUserNodeFieldsData_profile._(
      {required this.G__typename, this.telegram, required this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUserNodeFieldsData_profile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isPublic, 'GUserNodeFieldsData_profile', 'isPublic');
  }

  @override
  GUserNodeFieldsData_profile rebuild(
          void Function(GUserNodeFieldsData_profileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserNodeFieldsData_profileBuilder toBuilder() =>
      new GUserNodeFieldsData_profileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserNodeFieldsData_profile &&
        G__typename == other.G__typename &&
        telegram == other.telegram &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), telegram.hashCode),
        isPublic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserNodeFieldsData_profile')
          ..add('G__typename', G__typename)
          ..add('telegram', telegram)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class GUserNodeFieldsData_profileBuilder
    implements
        Builder<GUserNodeFieldsData_profile,
            GUserNodeFieldsData_profileBuilder> {
  _$GUserNodeFieldsData_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _telegram;
  String? get telegram => _$this._telegram;
  set telegram(String? telegram) => _$this._telegram = telegram;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  GUserNodeFieldsData_profileBuilder() {
    GUserNodeFieldsData_profile._initializeBuilder(this);
  }

  GUserNodeFieldsData_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _telegram = $v.telegram;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserNodeFieldsData_profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserNodeFieldsData_profile;
  }

  @override
  void update(void Function(GUserNodeFieldsData_profileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUserNodeFieldsData_profile build() {
    final _$result = _$v ??
        new _$GUserNodeFieldsData_profile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GUserNodeFieldsData_profile', 'G__typename'),
            telegram: telegram,
            isPublic: BuiltValueNullFieldError.checkNotNull(
                isPublic, 'GUserNodeFieldsData_profile', 'isPublic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LeaderBoard.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetLeaderBoardData> _$gGetLeaderBoardDataSerializer =
    new _$GGetLeaderBoardDataSerializer();
Serializer<GGetLeaderBoardData_timeLimitLeaderboard>
    _$gGetLeaderBoardDataTimeLimitLeaderboardSerializer =
    new _$GGetLeaderBoardData_timeLimitLeaderboardSerializer();
Serializer<GGetLeaderBoardData_timeLimitLeaderboard_user>
    _$gGetLeaderBoardDataTimeLimitLeaderboardUserSerializer =
    new _$GGetLeaderBoardData_timeLimitLeaderboard_userSerializer();
Serializer<GGetLeaderBoardData_timeLimitLeaderboard_user_profile>
    _$gGetLeaderBoardDataTimeLimitLeaderboardUserProfileSerializer =
    new _$GGetLeaderBoardData_timeLimitLeaderboard_user_profileSerializer();

class _$GGetLeaderBoardDataSerializer
    implements StructuredSerializer<GGetLeaderBoardData> {
  @override
  final Iterable<Type> types = const [
    GGetLeaderBoardData,
    _$GGetLeaderBoardData
  ];
  @override
  final String wireName = 'GGetLeaderBoardData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLeaderBoardData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'timeLimitLeaderboard',
      serializers.serialize(object.timeLimitLeaderboard,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GGetLeaderBoardData_timeLimitLeaderboard)
          ])),
    ];

    return result;
  }

  @override
  GGetLeaderBoardData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLeaderBoardDataBuilder();

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
        case 'timeLimitLeaderboard':
          result.timeLimitLeaderboard.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetLeaderBoardData_timeLimitLeaderboard)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLeaderBoardData_timeLimitLeaderboardSerializer
    implements StructuredSerializer<GGetLeaderBoardData_timeLimitLeaderboard> {
  @override
  final Iterable<Type> types = const [
    GGetLeaderBoardData_timeLimitLeaderboard,
    _$GGetLeaderBoardData_timeLimitLeaderboard
  ];
  @override
  final String wireName = 'GGetLeaderBoardData_timeLimitLeaderboard';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLeaderBoardData_timeLimitLeaderboard object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType:
              const FullType(GGetLeaderBoardData_timeLimitLeaderboard_user)),
      'distanceMeters',
      serializers.serialize(object.distanceMeters,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GGetLeaderBoardData_timeLimitLeaderboard deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLeaderBoardData_timeLimitLeaderboardBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetLeaderBoardData_timeLimitLeaderboard_user))!
              as GGetLeaderBoardData_timeLimitLeaderboard_user);
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

class _$GGetLeaderBoardData_timeLimitLeaderboard_userSerializer
    implements
        StructuredSerializer<GGetLeaderBoardData_timeLimitLeaderboard_user> {
  @override
  final Iterable<Type> types = const [
    GGetLeaderBoardData_timeLimitLeaderboard_user,
    _$GGetLeaderBoardData_timeLimitLeaderboard_user
  ];
  @override
  final String wireName = 'GGetLeaderBoardData_timeLimitLeaderboard_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetLeaderBoardData_timeLimitLeaderboard_user object,
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
          specifiedType: const FullType(
              GGetLeaderBoardData_timeLimitLeaderboard_user_profile)),
    ];

    return result;
  }

  @override
  GGetLeaderBoardData_timeLimitLeaderboard_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLeaderBoardData_timeLimitLeaderboard_userBuilder();

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
                      GGetLeaderBoardData_timeLimitLeaderboard_user_profile))!
              as GGetLeaderBoardData_timeLimitLeaderboard_user_profile);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLeaderBoardData_timeLimitLeaderboard_user_profileSerializer
    implements
        StructuredSerializer<
            GGetLeaderBoardData_timeLimitLeaderboard_user_profile> {
  @override
  final Iterable<Type> types = const [
    GGetLeaderBoardData_timeLimitLeaderboard_user_profile,
    _$GGetLeaderBoardData_timeLimitLeaderboard_user_profile
  ];
  @override
  final String wireName =
      'GGetLeaderBoardData_timeLimitLeaderboard_user_profile';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetLeaderBoardData_timeLimitLeaderboard_user_profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isPublic',
      serializers.serialize(object.isPublic,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GGetLeaderBoardData_timeLimitLeaderboard_user_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder();

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
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLeaderBoardData extends GGetLeaderBoardData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetLeaderBoardData_timeLimitLeaderboard>
      timeLimitLeaderboard;

  factory _$GGetLeaderBoardData(
          [void Function(GGetLeaderBoardDataBuilder)? updates]) =>
      (new GGetLeaderBoardDataBuilder()..update(updates)).build();

  _$GGetLeaderBoardData._(
      {required this.G__typename, required this.timeLimitLeaderboard})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetLeaderBoardData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        timeLimitLeaderboard, 'GGetLeaderBoardData', 'timeLimitLeaderboard');
  }

  @override
  GGetLeaderBoardData rebuild(
          void Function(GGetLeaderBoardDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLeaderBoardDataBuilder toBuilder() =>
      new GGetLeaderBoardDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLeaderBoardData &&
        G__typename == other.G__typename &&
        timeLimitLeaderboard == other.timeLimitLeaderboard;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), timeLimitLeaderboard.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetLeaderBoardData')
          ..add('G__typename', G__typename)
          ..add('timeLimitLeaderboard', timeLimitLeaderboard))
        .toString();
  }
}

class GGetLeaderBoardDataBuilder
    implements Builder<GGetLeaderBoardData, GGetLeaderBoardDataBuilder> {
  _$GGetLeaderBoardData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetLeaderBoardData_timeLimitLeaderboard>? _timeLimitLeaderboard;
  ListBuilder<GGetLeaderBoardData_timeLimitLeaderboard>
      get timeLimitLeaderboard => _$this._timeLimitLeaderboard ??=
          new ListBuilder<GGetLeaderBoardData_timeLimitLeaderboard>();
  set timeLimitLeaderboard(
          ListBuilder<GGetLeaderBoardData_timeLimitLeaderboard>?
              timeLimitLeaderboard) =>
      _$this._timeLimitLeaderboard = timeLimitLeaderboard;

  GGetLeaderBoardDataBuilder() {
    GGetLeaderBoardData._initializeBuilder(this);
  }

  GGetLeaderBoardDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _timeLimitLeaderboard = $v.timeLimitLeaderboard.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLeaderBoardData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLeaderBoardData;
  }

  @override
  void update(void Function(GGetLeaderBoardDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetLeaderBoardData build() {
    _$GGetLeaderBoardData _$result;
    try {
      _$result = _$v ??
          new _$GGetLeaderBoardData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetLeaderBoardData', 'G__typename'),
              timeLimitLeaderboard: timeLimitLeaderboard.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeLimitLeaderboard';
        timeLimitLeaderboard.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetLeaderBoardData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetLeaderBoardData_timeLimitLeaderboard
    extends GGetLeaderBoardData_timeLimitLeaderboard {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GGetLeaderBoardData_timeLimitLeaderboard_user user;
  @override
  final double distanceMeters;

  factory _$GGetLeaderBoardData_timeLimitLeaderboard(
          [void Function(GGetLeaderBoardData_timeLimitLeaderboardBuilder)?
              updates]) =>
      (new GGetLeaderBoardData_timeLimitLeaderboardBuilder()..update(updates))
          .build();

  _$GGetLeaderBoardData_timeLimitLeaderboard._(
      {required this.G__typename,
      required this.id,
      required this.user,
      required this.distanceMeters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetLeaderBoardData_timeLimitLeaderboard', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetLeaderBoardData_timeLimitLeaderboard', 'id');
    BuiltValueNullFieldError.checkNotNull(
        user, 'GGetLeaderBoardData_timeLimitLeaderboard', 'user');
    BuiltValueNullFieldError.checkNotNull(distanceMeters,
        'GGetLeaderBoardData_timeLimitLeaderboard', 'distanceMeters');
  }

  @override
  GGetLeaderBoardData_timeLimitLeaderboard rebuild(
          void Function(GGetLeaderBoardData_timeLimitLeaderboardBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLeaderBoardData_timeLimitLeaderboardBuilder toBuilder() =>
      new GGetLeaderBoardData_timeLimitLeaderboardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLeaderBoardData_timeLimitLeaderboard &&
        G__typename == other.G__typename &&
        id == other.id &&
        user == other.user &&
        distanceMeters == other.distanceMeters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), user.hashCode),
        distanceMeters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetLeaderBoardData_timeLimitLeaderboard')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('user', user)
          ..add('distanceMeters', distanceMeters))
        .toString();
  }
}

class GGetLeaderBoardData_timeLimitLeaderboardBuilder
    implements
        Builder<GGetLeaderBoardData_timeLimitLeaderboard,
            GGetLeaderBoardData_timeLimitLeaderboardBuilder> {
  _$GGetLeaderBoardData_timeLimitLeaderboard? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetLeaderBoardData_timeLimitLeaderboard_userBuilder? _user;
  GGetLeaderBoardData_timeLimitLeaderboard_userBuilder get user =>
      _$this._user ??=
          new GGetLeaderBoardData_timeLimitLeaderboard_userBuilder();
  set user(GGetLeaderBoardData_timeLimitLeaderboard_userBuilder? user) =>
      _$this._user = user;

  double? _distanceMeters;
  double? get distanceMeters => _$this._distanceMeters;
  set distanceMeters(double? distanceMeters) =>
      _$this._distanceMeters = distanceMeters;

  GGetLeaderBoardData_timeLimitLeaderboardBuilder() {
    GGetLeaderBoardData_timeLimitLeaderboard._initializeBuilder(this);
  }

  GGetLeaderBoardData_timeLimitLeaderboardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _user = $v.user.toBuilder();
      _distanceMeters = $v.distanceMeters;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLeaderBoardData_timeLimitLeaderboard other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLeaderBoardData_timeLimitLeaderboard;
  }

  @override
  void update(
      void Function(GGetLeaderBoardData_timeLimitLeaderboardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetLeaderBoardData_timeLimitLeaderboard build() {
    _$GGetLeaderBoardData_timeLimitLeaderboard _$result;
    try {
      _$result = _$v ??
          new _$GGetLeaderBoardData_timeLimitLeaderboard._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetLeaderBoardData_timeLimitLeaderboard', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetLeaderBoardData_timeLimitLeaderboard', 'id'),
              user: user.build(),
              distanceMeters: BuiltValueNullFieldError.checkNotNull(
                  distanceMeters,
                  'GGetLeaderBoardData_timeLimitLeaderboard',
                  'distanceMeters'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetLeaderBoardData_timeLimitLeaderboard',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetLeaderBoardData_timeLimitLeaderboard_user
    extends GGetLeaderBoardData_timeLimitLeaderboard_user {
  @override
  final String G__typename;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final GGetLeaderBoardData_timeLimitLeaderboard_user_profile profile;

  factory _$GGetLeaderBoardData_timeLimitLeaderboard_user(
          [void Function(GGetLeaderBoardData_timeLimitLeaderboard_userBuilder)?
              updates]) =>
      (new GGetLeaderBoardData_timeLimitLeaderboard_userBuilder()
            ..update(updates))
          .build();

  _$GGetLeaderBoardData_timeLimitLeaderboard_user._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.profile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetLeaderBoardData_timeLimitLeaderboard_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(firstName,
        'GGetLeaderBoardData_timeLimitLeaderboard_user', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GGetLeaderBoardData_timeLimitLeaderboard_user', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GGetLeaderBoardData_timeLimitLeaderboard_user', 'username');
    BuiltValueNullFieldError.checkNotNull(
        profile, 'GGetLeaderBoardData_timeLimitLeaderboard_user', 'profile');
  }

  @override
  GGetLeaderBoardData_timeLimitLeaderboard_user rebuild(
          void Function(GGetLeaderBoardData_timeLimitLeaderboard_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLeaderBoardData_timeLimitLeaderboard_userBuilder toBuilder() =>
      new GGetLeaderBoardData_timeLimitLeaderboard_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLeaderBoardData_timeLimitLeaderboard_user &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        username == other.username &&
        profile == other.profile;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), firstName.hashCode),
                lastName.hashCode),
            username.hashCode),
        profile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetLeaderBoardData_timeLimitLeaderboard_user')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('username', username)
          ..add('profile', profile))
        .toString();
  }
}

class GGetLeaderBoardData_timeLimitLeaderboard_userBuilder
    implements
        Builder<GGetLeaderBoardData_timeLimitLeaderboard_user,
            GGetLeaderBoardData_timeLimitLeaderboard_userBuilder> {
  _$GGetLeaderBoardData_timeLimitLeaderboard_user? _$v;

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

  GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder? _profile;
  GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder get profile =>
      _$this._profile ??=
          new GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder();
  set profile(
          GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder?
              profile) =>
      _$this._profile = profile;

  GGetLeaderBoardData_timeLimitLeaderboard_userBuilder() {
    GGetLeaderBoardData_timeLimitLeaderboard_user._initializeBuilder(this);
  }

  GGetLeaderBoardData_timeLimitLeaderboard_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _username = $v.username;
      _profile = $v.profile.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLeaderBoardData_timeLimitLeaderboard_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLeaderBoardData_timeLimitLeaderboard_user;
  }

  @override
  void update(
      void Function(GGetLeaderBoardData_timeLimitLeaderboard_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetLeaderBoardData_timeLimitLeaderboard_user build() {
    _$GGetLeaderBoardData_timeLimitLeaderboard_user _$result;
    try {
      _$result = _$v ??
          new _$GGetLeaderBoardData_timeLimitLeaderboard_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GGetLeaderBoardData_timeLimitLeaderboard_user',
                  'G__typename'),
              firstName: BuiltValueNullFieldError.checkNotNull(firstName,
                  'GGetLeaderBoardData_timeLimitLeaderboard_user', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(lastName,
                  'GGetLeaderBoardData_timeLimitLeaderboard_user', 'lastName'),
              username: BuiltValueNullFieldError.checkNotNull(username,
                  'GGetLeaderBoardData_timeLimitLeaderboard_user', 'username'),
              profile: profile.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        profile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetLeaderBoardData_timeLimitLeaderboard_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetLeaderBoardData_timeLimitLeaderboard_user_profile
    extends GGetLeaderBoardData_timeLimitLeaderboard_user_profile {
  @override
  final String G__typename;
  @override
  final bool isPublic;

  factory _$GGetLeaderBoardData_timeLimitLeaderboard_user_profile(
          [void Function(
                  GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder)?
              updates]) =>
      (new GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder()
            ..update(updates))
          .build();

  _$GGetLeaderBoardData_timeLimitLeaderboard_user_profile._(
      {required this.G__typename, required this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetLeaderBoardData_timeLimitLeaderboard_user_profile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(isPublic,
        'GGetLeaderBoardData_timeLimitLeaderboard_user_profile', 'isPublic');
  }

  @override
  GGetLeaderBoardData_timeLimitLeaderboard_user_profile rebuild(
          void Function(
                  GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder toBuilder() =>
      new GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLeaderBoardData_timeLimitLeaderboard_user_profile &&
        G__typename == other.G__typename &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), isPublic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetLeaderBoardData_timeLimitLeaderboard_user_profile')
          ..add('G__typename', G__typename)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder
    implements
        Builder<GGetLeaderBoardData_timeLimitLeaderboard_user_profile,
            GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder> {
  _$GGetLeaderBoardData_timeLimitLeaderboard_user_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder() {
    GGetLeaderBoardData_timeLimitLeaderboard_user_profile._initializeBuilder(
        this);
  }

  GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLeaderBoardData_timeLimitLeaderboard_user_profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLeaderBoardData_timeLimitLeaderboard_user_profile;
  }

  @override
  void update(
      void Function(
              GGetLeaderBoardData_timeLimitLeaderboard_user_profileBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetLeaderBoardData_timeLimitLeaderboard_user_profile build() {
    final _$result = _$v ??
        new _$GGetLeaderBoardData_timeLimitLeaderboard_user_profile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetLeaderBoardData_timeLimitLeaderboard_user_profile',
                'G__typename'),
            isPublic: BuiltValueNullFieldError.checkNotNull(
                isPublic,
                'GGetLeaderBoardData_timeLimitLeaderboard_user_profile',
                'isPublic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Profile.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetMyProfileVars> _$gGetMyProfileVarsSerializer =
    new _$GGetMyProfileVarsSerializer();
Serializer<GGetMyTracksVars> _$gGetMyTracksVarsSerializer =
    new _$GGetMyTracksVarsSerializer();
Serializer<GGetUserTracksVars> _$gGetUserTracksVarsSerializer =
    new _$GGetUserTracksVarsSerializer();
Serializer<GGetUserProfileVars> _$gGetUserProfileVarsSerializer =
    new _$GGetUserProfileVarsSerializer();
Serializer<GUpdateProfileVars> _$gUpdateProfileVarsSerializer =
    new _$GUpdateProfileVarsSerializer();
Serializer<GUpdatePublicVars> _$gUpdatePublicVarsSerializer =
    new _$GUpdatePublicVarsSerializer();
Serializer<GUserNodeFieldsVars> _$gUserNodeFieldsVarsSerializer =
    new _$GUserNodeFieldsVarsSerializer();

class _$GGetMyProfileVarsSerializer
    implements StructuredSerializer<GGetMyProfileVars> {
  @override
  final Iterable<Type> types = const [GGetMyProfileVars, _$GGetMyProfileVars];
  @override
  final String wireName = 'GGetMyProfileVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetMyProfileVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetMyProfileVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetMyProfileVarsBuilder().build();
  }
}

class _$GGetMyTracksVarsSerializer
    implements StructuredSerializer<GGetMyTracksVars> {
  @override
  final Iterable<Type> types = const [GGetMyTracksVars, _$GGetMyTracksVars];
  @override
  final String wireName = 'GGetMyTracksVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetMyTracksVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'timeLimitMinutes',
      serializers.serialize(object.timeLimitMinutes,
          specifiedType: const FullType(int)),
      'orderBy',
      serializers.serialize(object.orderBy,
          specifiedType: const FullType(_i2.GTrackOrderEnum)),
    ];

    return result;
  }

  @override
  GGetMyTracksVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMyTracksVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'timeLimitMinutes':
          result.timeLimitMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderBy':
          result.orderBy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GTrackOrderEnum))
              as _i2.GTrackOrderEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserTracksVarsSerializer
    implements StructuredSerializer<GGetUserTracksVars> {
  @override
  final Iterable<Type> types = const [GGetUserTracksVars, _$GGetUserTracksVars];
  @override
  final String wireName = 'GGetUserTracksVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserTracksVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'timeLimitMinutes',
      serializers.serialize(object.timeLimitMinutes,
          specifiedType: const FullType(int)),
      'orderBy',
      serializers.serialize(object.orderBy,
          specifiedType: const FullType(_i2.GTrackOrderEnum)),
    ];

    return result;
  }

  @override
  GGetUserTracksVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserTracksVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeLimitMinutes':
          result.timeLimitMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderBy':
          result.orderBy = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GTrackOrderEnum))
              as _i2.GTrackOrderEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserProfileVarsSerializer
    implements StructuredSerializer<GGetUserProfileVars> {
  @override
  final Iterable<Type> types = const [
    GGetUserProfileVars,
    _$GGetUserProfileVars
  ];
  @override
  final String wireName = 'GGetUserProfileVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserProfileVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetUserProfileVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserProfileVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateProfileVarsSerializer
    implements StructuredSerializer<GUpdateProfileVars> {
  @override
  final Iterable<Type> types = const [GUpdateProfileVars, _$GUpdateProfileVars];
  @override
  final String wireName = 'GUpdateProfileVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateProfileVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  GUpdateProfileVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateProfileVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
        case 'telegram':
          result.telegram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePublicVarsSerializer
    implements StructuredSerializer<GUpdatePublicVars> {
  @override
  final Iterable<Type> types = const [GUpdatePublicVars, _$GUpdatePublicVars];
  @override
  final String wireName = 'GUpdatePublicVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdatePublicVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.isPublic;
    if (value != null) {
      result
        ..add('isPublic')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUpdatePublicVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePublicVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserNodeFieldsVarsSerializer
    implements StructuredSerializer<GUserNodeFieldsVars> {
  @override
  final Iterable<Type> types = const [
    GUserNodeFieldsVars,
    _$GUserNodeFieldsVars
  ];
  @override
  final String wireName = 'GUserNodeFieldsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserNodeFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserNodeFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserNodeFieldsVarsBuilder().build();
  }
}

class _$GGetMyProfileVars extends GGetMyProfileVars {
  factory _$GGetMyProfileVars(
          [void Function(GGetMyProfileVarsBuilder)? updates]) =>
      (new GGetMyProfileVarsBuilder()..update(updates)).build();

  _$GGetMyProfileVars._() : super._();

  @override
  GGetMyProfileVars rebuild(void Function(GGetMyProfileVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyProfileVarsBuilder toBuilder() =>
      new GGetMyProfileVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyProfileVars;
  }

  @override
  int get hashCode {
    return 200601782;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetMyProfileVars').toString();
  }
}

class GGetMyProfileVarsBuilder
    implements Builder<GGetMyProfileVars, GGetMyProfileVarsBuilder> {
  _$GGetMyProfileVars? _$v;

  GGetMyProfileVarsBuilder();

  @override
  void replace(GGetMyProfileVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMyProfileVars;
  }

  @override
  void update(void Function(GGetMyProfileVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMyProfileVars build() {
    final _$result = _$v ?? new _$GGetMyProfileVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GGetMyTracksVars extends GGetMyTracksVars {
  @override
  final int timeLimitMinutes;
  @override
  final _i2.GTrackOrderEnum orderBy;

  factory _$GGetMyTracksVars(
          [void Function(GGetMyTracksVarsBuilder)? updates]) =>
      (new GGetMyTracksVarsBuilder()..update(updates)).build();

  _$GGetMyTracksVars._({required this.timeLimitMinutes, required this.orderBy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timeLimitMinutes, 'GGetMyTracksVars', 'timeLimitMinutes');
    BuiltValueNullFieldError.checkNotNull(
        orderBy, 'GGetMyTracksVars', 'orderBy');
  }

  @override
  GGetMyTracksVars rebuild(void Function(GGetMyTracksVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyTracksVarsBuilder toBuilder() =>
      new GGetMyTracksVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyTracksVars &&
        timeLimitMinutes == other.timeLimitMinutes &&
        orderBy == other.orderBy;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, timeLimitMinutes.hashCode), orderBy.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMyTracksVars')
          ..add('timeLimitMinutes', timeLimitMinutes)
          ..add('orderBy', orderBy))
        .toString();
  }
}

class GGetMyTracksVarsBuilder
    implements Builder<GGetMyTracksVars, GGetMyTracksVarsBuilder> {
  _$GGetMyTracksVars? _$v;

  int? _timeLimitMinutes;
  int? get timeLimitMinutes => _$this._timeLimitMinutes;
  set timeLimitMinutes(int? timeLimitMinutes) =>
      _$this._timeLimitMinutes = timeLimitMinutes;

  _i2.GTrackOrderEnum? _orderBy;
  _i2.GTrackOrderEnum? get orderBy => _$this._orderBy;
  set orderBy(_i2.GTrackOrderEnum? orderBy) => _$this._orderBy = orderBy;

  GGetMyTracksVarsBuilder();

  GGetMyTracksVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeLimitMinutes = $v.timeLimitMinutes;
      _orderBy = $v.orderBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyTracksVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMyTracksVars;
  }

  @override
  void update(void Function(GGetMyTracksVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMyTracksVars build() {
    final _$result = _$v ??
        new _$GGetMyTracksVars._(
            timeLimitMinutes: BuiltValueNullFieldError.checkNotNull(
                timeLimitMinutes, 'GGetMyTracksVars', 'timeLimitMinutes'),
            orderBy: BuiltValueNullFieldError.checkNotNull(
                orderBy, 'GGetMyTracksVars', 'orderBy'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserTracksVars extends GGetUserTracksVars {
  @override
  final String username;
  @override
  final int timeLimitMinutes;
  @override
  final _i2.GTrackOrderEnum orderBy;

  factory _$GGetUserTracksVars(
          [void Function(GGetUserTracksVarsBuilder)? updates]) =>
      (new GGetUserTracksVarsBuilder()..update(updates)).build();

  _$GGetUserTracksVars._(
      {required this.username,
      required this.timeLimitMinutes,
      required this.orderBy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'GGetUserTracksVars', 'username');
    BuiltValueNullFieldError.checkNotNull(
        timeLimitMinutes, 'GGetUserTracksVars', 'timeLimitMinutes');
    BuiltValueNullFieldError.checkNotNull(
        orderBy, 'GGetUserTracksVars', 'orderBy');
  }

  @override
  GGetUserTracksVars rebuild(
          void Function(GGetUserTracksVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserTracksVarsBuilder toBuilder() =>
      new GGetUserTracksVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserTracksVars &&
        username == other.username &&
        timeLimitMinutes == other.timeLimitMinutes &&
        orderBy == other.orderBy;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, username.hashCode), timeLimitMinutes.hashCode),
        orderBy.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserTracksVars')
          ..add('username', username)
          ..add('timeLimitMinutes', timeLimitMinutes)
          ..add('orderBy', orderBy))
        .toString();
  }
}

class GGetUserTracksVarsBuilder
    implements Builder<GGetUserTracksVars, GGetUserTracksVarsBuilder> {
  _$GGetUserTracksVars? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  int? _timeLimitMinutes;
  int? get timeLimitMinutes => _$this._timeLimitMinutes;
  set timeLimitMinutes(int? timeLimitMinutes) =>
      _$this._timeLimitMinutes = timeLimitMinutes;

  _i2.GTrackOrderEnum? _orderBy;
  _i2.GTrackOrderEnum? get orderBy => _$this._orderBy;
  set orderBy(_i2.GTrackOrderEnum? orderBy) => _$this._orderBy = orderBy;

  GGetUserTracksVarsBuilder();

  GGetUserTracksVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _timeLimitMinutes = $v.timeLimitMinutes;
      _orderBy = $v.orderBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserTracksVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserTracksVars;
  }

  @override
  void update(void Function(GGetUserTracksVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserTracksVars build() {
    final _$result = _$v ??
        new _$GGetUserTracksVars._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GGetUserTracksVars', 'username'),
            timeLimitMinutes: BuiltValueNullFieldError.checkNotNull(
                timeLimitMinutes, 'GGetUserTracksVars', 'timeLimitMinutes'),
            orderBy: BuiltValueNullFieldError.checkNotNull(
                orderBy, 'GGetUserTracksVars', 'orderBy'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserProfileVars extends GGetUserProfileVars {
  @override
  final String username;

  factory _$GGetUserProfileVars(
          [void Function(GGetUserProfileVarsBuilder)? updates]) =>
      (new GGetUserProfileVarsBuilder()..update(updates)).build();

  _$GGetUserProfileVars._({required this.username}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'GGetUserProfileVars', 'username');
  }

  @override
  GGetUserProfileVars rebuild(
          void Function(GGetUserProfileVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserProfileVarsBuilder toBuilder() =>
      new GGetUserProfileVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserProfileVars && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserProfileVars')
          ..add('username', username))
        .toString();
  }
}

class GGetUserProfileVarsBuilder
    implements Builder<GGetUserProfileVars, GGetUserProfileVarsBuilder> {
  _$GGetUserProfileVars? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GGetUserProfileVarsBuilder();

  GGetUserProfileVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserProfileVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserProfileVars;
  }

  @override
  void update(void Function(GGetUserProfileVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserProfileVars build() {
    final _$result = _$v ??
        new _$GGetUserProfileVars._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GGetUserProfileVars', 'username'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProfileVars extends GUpdateProfileVars {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? username;
  @override
  final String? telegram;

  factory _$GUpdateProfileVars(
          [void Function(GUpdateProfileVarsBuilder)? updates]) =>
      (new GUpdateProfileVarsBuilder()..update(updates)).build();

  _$GUpdateProfileVars._(
      {this.firstName, this.lastName, this.username, this.telegram})
      : super._();

  @override
  GUpdateProfileVars rebuild(
          void Function(GUpdateProfileVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProfileVarsBuilder toBuilder() =>
      new GUpdateProfileVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProfileVars &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        username == other.username &&
        telegram == other.telegram;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, firstName.hashCode), lastName.hashCode),
            username.hashCode),
        telegram.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateProfileVars')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('username', username)
          ..add('telegram', telegram))
        .toString();
  }
}

class GUpdateProfileVarsBuilder
    implements Builder<GUpdateProfileVars, GUpdateProfileVarsBuilder> {
  _$GUpdateProfileVars? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _telegram;
  String? get telegram => _$this._telegram;
  set telegram(String? telegram) => _$this._telegram = telegram;

  GUpdateProfileVarsBuilder();

  GUpdateProfileVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _username = $v.username;
      _telegram = $v.telegram;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProfileVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateProfileVars;
  }

  @override
  void update(void Function(GUpdateProfileVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateProfileVars build() {
    final _$result = _$v ??
        new _$GUpdateProfileVars._(
            firstName: firstName,
            lastName: lastName,
            username: username,
            telegram: telegram);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePublicVars extends GUpdatePublicVars {
  @override
  final bool? isPublic;

  factory _$GUpdatePublicVars(
          [void Function(GUpdatePublicVarsBuilder)? updates]) =>
      (new GUpdatePublicVarsBuilder()..update(updates)).build();

  _$GUpdatePublicVars._({this.isPublic}) : super._();

  @override
  GUpdatePublicVars rebuild(void Function(GUpdatePublicVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePublicVarsBuilder toBuilder() =>
      new GUpdatePublicVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePublicVars && isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    return $jf($jc(0, isPublic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdatePublicVars')
          ..add('isPublic', isPublic))
        .toString();
  }
}

class GUpdatePublicVarsBuilder
    implements Builder<GUpdatePublicVars, GUpdatePublicVarsBuilder> {
  _$GUpdatePublicVars? _$v;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  GUpdatePublicVarsBuilder();

  GUpdatePublicVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePublicVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePublicVars;
  }

  @override
  void update(void Function(GUpdatePublicVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdatePublicVars build() {
    final _$result = _$v ?? new _$GUpdatePublicVars._(isPublic: isPublic);
    replace(_$result);
    return _$result;
  }
}

class _$GUserNodeFieldsVars extends GUserNodeFieldsVars {
  factory _$GUserNodeFieldsVars(
          [void Function(GUserNodeFieldsVarsBuilder)? updates]) =>
      (new GUserNodeFieldsVarsBuilder()..update(updates)).build();

  _$GUserNodeFieldsVars._() : super._();

  @override
  GUserNodeFieldsVars rebuild(
          void Function(GUserNodeFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserNodeFieldsVarsBuilder toBuilder() =>
      new GUserNodeFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserNodeFieldsVars;
  }

  @override
  int get hashCode {
    return 389932598;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GUserNodeFieldsVars').toString();
  }
}

class GUserNodeFieldsVarsBuilder
    implements Builder<GUserNodeFieldsVars, GUserNodeFieldsVarsBuilder> {
  _$GUserNodeFieldsVars? _$v;

  GUserNodeFieldsVarsBuilder();

  @override
  void replace(GUserNodeFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserNodeFieldsVars;
  }

  @override
  void update(void Function(GUserNodeFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUserNodeFieldsVars build() {
    final _$result = _$v ?? new _$GUserNodeFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

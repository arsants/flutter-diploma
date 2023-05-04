// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCredAuthVars> _$gCredAuthVarsSerializer =
    new _$GCredAuthVarsSerializer();
Serializer<GSocialAuthVars> _$gSocialAuthVarsSerializer =
    new _$GSocialAuthVarsSerializer();
Serializer<GRegistrationVars> _$gRegistrationVarsSerializer =
    new _$GRegistrationVarsSerializer();

class _$GCredAuthVarsSerializer implements StructuredSerializer<GCredAuthVars> {
  @override
  final Iterable<Type> types = const [GCredAuthVars, _$GCredAuthVars];
  @override
  final String wireName = 'GCredAuthVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCredAuthVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCredAuthVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCredAuthVarsBuilder();

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
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialAuthVarsSerializer
    implements StructuredSerializer<GSocialAuthVars> {
  @override
  final Iterable<Type> types = const [GSocialAuthVars, _$GSocialAuthVars];
  @override
  final String wireName = 'GSocialAuthVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSocialAuthVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'provider',
      serializers.serialize(object.provider,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSocialAuthVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialAuthVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'provider':
          result.provider = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRegistrationVarsSerializer
    implements StructuredSerializer<GRegistrationVars> {
  @override
  final Iterable<Type> types = const [GRegistrationVars, _$GRegistrationVars];
  @override
  final String wireName = 'GRegistrationVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRegistrationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'password1',
      serializers.serialize(object.password1,
          specifiedType: const FullType(String)),
      'password2',
      serializers.serialize(object.password2,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRegistrationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRegistrationVarsBuilder();

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
        case 'password1':
          result.password1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password2':
          result.password2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCredAuthVars extends GCredAuthVars {
  @override
  final String username;
  @override
  final String password;

  factory _$GCredAuthVars([void Function(GCredAuthVarsBuilder)? updates]) =>
      (new GCredAuthVarsBuilder()..update(updates)).build();

  _$GCredAuthVars._({required this.username, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'GCredAuthVars', 'username');
    BuiltValueNullFieldError.checkNotNull(
        password, 'GCredAuthVars', 'password');
  }

  @override
  GCredAuthVars rebuild(void Function(GCredAuthVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCredAuthVarsBuilder toBuilder() => new GCredAuthVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCredAuthVars &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCredAuthVars')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class GCredAuthVarsBuilder
    implements Builder<GCredAuthVars, GCredAuthVarsBuilder> {
  _$GCredAuthVars? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GCredAuthVarsBuilder();

  GCredAuthVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCredAuthVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCredAuthVars;
  }

  @override
  void update(void Function(GCredAuthVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCredAuthVars build() {
    final _$result = _$v ??
        new _$GCredAuthVars._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GCredAuthVars', 'username'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'GCredAuthVars', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GSocialAuthVars extends GSocialAuthVars {
  @override
  final String accessToken;
  @override
  final String provider;

  factory _$GSocialAuthVars([void Function(GSocialAuthVarsBuilder)? updates]) =>
      (new GSocialAuthVarsBuilder()..update(updates)).build();

  _$GSocialAuthVars._({required this.accessToken, required this.provider})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'GSocialAuthVars', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        provider, 'GSocialAuthVars', 'provider');
  }

  @override
  GSocialAuthVars rebuild(void Function(GSocialAuthVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialAuthVarsBuilder toBuilder() =>
      new GSocialAuthVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialAuthVars &&
        accessToken == other.accessToken &&
        provider == other.provider;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, accessToken.hashCode), provider.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSocialAuthVars')
          ..add('accessToken', accessToken)
          ..add('provider', provider))
        .toString();
  }
}

class GSocialAuthVarsBuilder
    implements Builder<GSocialAuthVars, GSocialAuthVarsBuilder> {
  _$GSocialAuthVars? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  GSocialAuthVarsBuilder();

  GSocialAuthVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _provider = $v.provider;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialAuthVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialAuthVars;
  }

  @override
  void update(void Function(GSocialAuthVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSocialAuthVars build() {
    final _$result = _$v ??
        new _$GSocialAuthVars._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, 'GSocialAuthVars', 'accessToken'),
            provider: BuiltValueNullFieldError.checkNotNull(
                provider, 'GSocialAuthVars', 'provider'));
    replace(_$result);
    return _$result;
  }
}

class _$GRegistrationVars extends GRegistrationVars {
  @override
  final String username;
  @override
  final String password1;
  @override
  final String password2;

  factory _$GRegistrationVars(
          [void Function(GRegistrationVarsBuilder)? updates]) =>
      (new GRegistrationVarsBuilder()..update(updates)).build();

  _$GRegistrationVars._(
      {required this.username,
      required this.password1,
      required this.password2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'GRegistrationVars', 'username');
    BuiltValueNullFieldError.checkNotNull(
        password1, 'GRegistrationVars', 'password1');
    BuiltValueNullFieldError.checkNotNull(
        password2, 'GRegistrationVars', 'password2');
  }

  @override
  GRegistrationVars rebuild(void Function(GRegistrationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegistrationVarsBuilder toBuilder() =>
      new GRegistrationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegistrationVars &&
        username == other.username &&
        password1 == other.password1 &&
        password2 == other.password2;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, username.hashCode), password1.hashCode),
        password2.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRegistrationVars')
          ..add('username', username)
          ..add('password1', password1)
          ..add('password2', password2))
        .toString();
  }
}

class GRegistrationVarsBuilder
    implements Builder<GRegistrationVars, GRegistrationVarsBuilder> {
  _$GRegistrationVars? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password1;
  String? get password1 => _$this._password1;
  set password1(String? password1) => _$this._password1 = password1;

  String? _password2;
  String? get password2 => _$this._password2;
  set password2(String? password2) => _$this._password2 = password2;

  GRegistrationVarsBuilder();

  GRegistrationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password1 = $v.password1;
      _password2 = $v.password2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegistrationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRegistrationVars;
  }

  @override
  void update(void Function(GRegistrationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRegistrationVars build() {
    final _$result = _$v ??
        new _$GRegistrationVars._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GRegistrationVars', 'username'),
            password1: BuiltValueNullFieldError.checkNotNull(
                password1, 'GRegistrationVars', 'password1'),
            password2: BuiltValueNullFieldError.checkNotNull(
                password2, 'GRegistrationVars', 'password2'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

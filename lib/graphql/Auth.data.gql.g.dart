// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Auth.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCredAuthData> _$gCredAuthDataSerializer =
    new _$GCredAuthDataSerializer();
Serializer<GCredAuthData_tokenAuth> _$gCredAuthDataTokenAuthSerializer =
    new _$GCredAuthData_tokenAuthSerializer();
Serializer<GSocialAuthData> _$gSocialAuthDataSerializer =
    new _$GSocialAuthDataSerializer();
Serializer<GSocialAuthData_socialAuth> _$gSocialAuthDataSocialAuthSerializer =
    new _$GSocialAuthData_socialAuthSerializer();
Serializer<GRegistrationData> _$gRegistrationDataSerializer =
    new _$GRegistrationDataSerializer();
Serializer<GRegistrationData_register> _$gRegistrationDataRegisterSerializer =
    new _$GRegistrationData_registerSerializer();

class _$GCredAuthDataSerializer implements StructuredSerializer<GCredAuthData> {
  @override
  final Iterable<Type> types = const [GCredAuthData, _$GCredAuthData];
  @override
  final String wireName = 'GCredAuthData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCredAuthData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.tokenAuth;
    if (value != null) {
      result
        ..add('tokenAuth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCredAuthData_tokenAuth)));
    }
    return result;
  }

  @override
  GCredAuthData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCredAuthDataBuilder();

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
        case 'tokenAuth':
          result.tokenAuth.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCredAuthData_tokenAuth))!
              as GCredAuthData_tokenAuth);
          break;
      }
    }

    return result.build();
  }
}

class _$GCredAuthData_tokenAuthSerializer
    implements StructuredSerializer<GCredAuthData_tokenAuth> {
  @override
  final Iterable<Type> types = const [
    GCredAuthData_tokenAuth,
    _$GCredAuthData_tokenAuth
  ];
  @override
  final String wireName = 'GCredAuthData_tokenAuth';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCredAuthData_tokenAuth object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCredAuthData_tokenAuth deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCredAuthData_tokenAuthBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialAuthDataSerializer
    implements StructuredSerializer<GSocialAuthData> {
  @override
  final Iterable<Type> types = const [GSocialAuthData, _$GSocialAuthData];
  @override
  final String wireName = 'GSocialAuthData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSocialAuthData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.socialAuth;
    if (value != null) {
      result
        ..add('socialAuth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSocialAuthData_socialAuth)));
    }
    return result;
  }

  @override
  GSocialAuthData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialAuthDataBuilder();

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
        case 'socialAuth':
          result.socialAuth.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSocialAuthData_socialAuth))!
              as GSocialAuthData_socialAuth);
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialAuthData_socialAuthSerializer
    implements StructuredSerializer<GSocialAuthData_socialAuth> {
  @override
  final Iterable<Type> types = const [
    GSocialAuthData_socialAuth,
    _$GSocialAuthData_socialAuth
  ];
  @override
  final String wireName = 'GSocialAuthData_socialAuth';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialAuthData_socialAuth object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSocialAuthData_socialAuth deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialAuthData_socialAuthBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRegistrationDataSerializer
    implements StructuredSerializer<GRegistrationData> {
  @override
  final Iterable<Type> types = const [GRegistrationData, _$GRegistrationData];
  @override
  final String wireName = 'GRegistrationData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRegistrationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.register;
    if (value != null) {
      result
        ..add('register')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GRegistrationData_register)));
    }
    return result;
  }

  @override
  GRegistrationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRegistrationDataBuilder();

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
        case 'register':
          result.register.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GRegistrationData_register))!
              as GRegistrationData_register);
          break;
      }
    }

    return result.build();
  }
}

class _$GRegistrationData_registerSerializer
    implements StructuredSerializer<GRegistrationData_register> {
  @override
  final Iterable<Type> types = const [
    GRegistrationData_register,
    _$GRegistrationData_register
  ];
  @override
  final String wireName = 'GRegistrationData_register';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRegistrationData_register object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRegistrationData_register deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRegistrationData_registerBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCredAuthData extends GCredAuthData {
  @override
  final String G__typename;
  @override
  final GCredAuthData_tokenAuth? tokenAuth;

  factory _$GCredAuthData([void Function(GCredAuthDataBuilder)? updates]) =>
      (new GCredAuthDataBuilder()..update(updates)).build();

  _$GCredAuthData._({required this.G__typename, this.tokenAuth}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCredAuthData', 'G__typename');
  }

  @override
  GCredAuthData rebuild(void Function(GCredAuthDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCredAuthDataBuilder toBuilder() => new GCredAuthDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCredAuthData &&
        G__typename == other.G__typename &&
        tokenAuth == other.tokenAuth;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), tokenAuth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCredAuthData')
          ..add('G__typename', G__typename)
          ..add('tokenAuth', tokenAuth))
        .toString();
  }
}

class GCredAuthDataBuilder
    implements Builder<GCredAuthData, GCredAuthDataBuilder> {
  _$GCredAuthData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCredAuthData_tokenAuthBuilder? _tokenAuth;
  GCredAuthData_tokenAuthBuilder get tokenAuth =>
      _$this._tokenAuth ??= new GCredAuthData_tokenAuthBuilder();
  set tokenAuth(GCredAuthData_tokenAuthBuilder? tokenAuth) =>
      _$this._tokenAuth = tokenAuth;

  GCredAuthDataBuilder() {
    GCredAuthData._initializeBuilder(this);
  }

  GCredAuthDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _tokenAuth = $v.tokenAuth?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCredAuthData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCredAuthData;
  }

  @override
  void update(void Function(GCredAuthDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCredAuthData build() {
    _$GCredAuthData _$result;
    try {
      _$result = _$v ??
          new _$GCredAuthData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCredAuthData', 'G__typename'),
              tokenAuth: _tokenAuth?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tokenAuth';
        _tokenAuth?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCredAuthData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCredAuthData_tokenAuth extends GCredAuthData_tokenAuth {
  @override
  final String G__typename;
  @override
  final String token;

  factory _$GCredAuthData_tokenAuth(
          [void Function(GCredAuthData_tokenAuthBuilder)? updates]) =>
      (new GCredAuthData_tokenAuthBuilder()..update(updates)).build();

  _$GCredAuthData_tokenAuth._({required this.G__typename, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCredAuthData_tokenAuth', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        token, 'GCredAuthData_tokenAuth', 'token');
  }

  @override
  GCredAuthData_tokenAuth rebuild(
          void Function(GCredAuthData_tokenAuthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCredAuthData_tokenAuthBuilder toBuilder() =>
      new GCredAuthData_tokenAuthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCredAuthData_tokenAuth &&
        G__typename == other.G__typename &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCredAuthData_tokenAuth')
          ..add('G__typename', G__typename)
          ..add('token', token))
        .toString();
  }
}

class GCredAuthData_tokenAuthBuilder
    implements
        Builder<GCredAuthData_tokenAuth, GCredAuthData_tokenAuthBuilder> {
  _$GCredAuthData_tokenAuth? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GCredAuthData_tokenAuthBuilder() {
    GCredAuthData_tokenAuth._initializeBuilder(this);
  }

  GCredAuthData_tokenAuthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCredAuthData_tokenAuth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCredAuthData_tokenAuth;
  }

  @override
  void update(void Function(GCredAuthData_tokenAuthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCredAuthData_tokenAuth build() {
    final _$result = _$v ??
        new _$GCredAuthData_tokenAuth._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GCredAuthData_tokenAuth', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GCredAuthData_tokenAuth', 'token'));
    replace(_$result);
    return _$result;
  }
}

class _$GSocialAuthData extends GSocialAuthData {
  @override
  final String G__typename;
  @override
  final GSocialAuthData_socialAuth? socialAuth;

  factory _$GSocialAuthData([void Function(GSocialAuthDataBuilder)? updates]) =>
      (new GSocialAuthDataBuilder()..update(updates)).build();

  _$GSocialAuthData._({required this.G__typename, this.socialAuth})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSocialAuthData', 'G__typename');
  }

  @override
  GSocialAuthData rebuild(void Function(GSocialAuthDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialAuthDataBuilder toBuilder() =>
      new GSocialAuthDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialAuthData &&
        G__typename == other.G__typename &&
        socialAuth == other.socialAuth;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), socialAuth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSocialAuthData')
          ..add('G__typename', G__typename)
          ..add('socialAuth', socialAuth))
        .toString();
  }
}

class GSocialAuthDataBuilder
    implements Builder<GSocialAuthData, GSocialAuthDataBuilder> {
  _$GSocialAuthData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSocialAuthData_socialAuthBuilder? _socialAuth;
  GSocialAuthData_socialAuthBuilder get socialAuth =>
      _$this._socialAuth ??= new GSocialAuthData_socialAuthBuilder();
  set socialAuth(GSocialAuthData_socialAuthBuilder? socialAuth) =>
      _$this._socialAuth = socialAuth;

  GSocialAuthDataBuilder() {
    GSocialAuthData._initializeBuilder(this);
  }

  GSocialAuthDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _socialAuth = $v.socialAuth?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialAuthData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialAuthData;
  }

  @override
  void update(void Function(GSocialAuthDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSocialAuthData build() {
    _$GSocialAuthData _$result;
    try {
      _$result = _$v ??
          new _$GSocialAuthData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GSocialAuthData', 'G__typename'),
              socialAuth: _socialAuth?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'socialAuth';
        _socialAuth?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GSocialAuthData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialAuthData_socialAuth extends GSocialAuthData_socialAuth {
  @override
  final String G__typename;
  @override
  final String token;

  factory _$GSocialAuthData_socialAuth(
          [void Function(GSocialAuthData_socialAuthBuilder)? updates]) =>
      (new GSocialAuthData_socialAuthBuilder()..update(updates)).build();

  _$GSocialAuthData_socialAuth._(
      {required this.G__typename, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSocialAuthData_socialAuth', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        token, 'GSocialAuthData_socialAuth', 'token');
  }

  @override
  GSocialAuthData_socialAuth rebuild(
          void Function(GSocialAuthData_socialAuthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialAuthData_socialAuthBuilder toBuilder() =>
      new GSocialAuthData_socialAuthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialAuthData_socialAuth &&
        G__typename == other.G__typename &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSocialAuthData_socialAuth')
          ..add('G__typename', G__typename)
          ..add('token', token))
        .toString();
  }
}

class GSocialAuthData_socialAuthBuilder
    implements
        Builder<GSocialAuthData_socialAuth, GSocialAuthData_socialAuthBuilder> {
  _$GSocialAuthData_socialAuth? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GSocialAuthData_socialAuthBuilder() {
    GSocialAuthData_socialAuth._initializeBuilder(this);
  }

  GSocialAuthData_socialAuthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialAuthData_socialAuth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialAuthData_socialAuth;
  }

  @override
  void update(void Function(GSocialAuthData_socialAuthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSocialAuthData_socialAuth build() {
    final _$result = _$v ??
        new _$GSocialAuthData_socialAuth._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GSocialAuthData_socialAuth', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GSocialAuthData_socialAuth', 'token'));
    replace(_$result);
    return _$result;
  }
}

class _$GRegistrationData extends GRegistrationData {
  @override
  final String G__typename;
  @override
  final GRegistrationData_register? register;

  factory _$GRegistrationData(
          [void Function(GRegistrationDataBuilder)? updates]) =>
      (new GRegistrationDataBuilder()..update(updates)).build();

  _$GRegistrationData._({required this.G__typename, this.register})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRegistrationData', 'G__typename');
  }

  @override
  GRegistrationData rebuild(void Function(GRegistrationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegistrationDataBuilder toBuilder() =>
      new GRegistrationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegistrationData &&
        G__typename == other.G__typename &&
        register == other.register;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), register.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRegistrationData')
          ..add('G__typename', G__typename)
          ..add('register', register))
        .toString();
  }
}

class GRegistrationDataBuilder
    implements Builder<GRegistrationData, GRegistrationDataBuilder> {
  _$GRegistrationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRegistrationData_registerBuilder? _register;
  GRegistrationData_registerBuilder get register =>
      _$this._register ??= new GRegistrationData_registerBuilder();
  set register(GRegistrationData_registerBuilder? register) =>
      _$this._register = register;

  GRegistrationDataBuilder() {
    GRegistrationData._initializeBuilder(this);
  }

  GRegistrationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _register = $v.register?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegistrationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRegistrationData;
  }

  @override
  void update(void Function(GRegistrationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRegistrationData build() {
    _$GRegistrationData _$result;
    try {
      _$result = _$v ??
          new _$GRegistrationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRegistrationData', 'G__typename'),
              register: _register?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'register';
        _register?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRegistrationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRegistrationData_register extends GRegistrationData_register {
  @override
  final String G__typename;
  @override
  final String token;

  factory _$GRegistrationData_register(
          [void Function(GRegistrationData_registerBuilder)? updates]) =>
      (new GRegistrationData_registerBuilder()..update(updates)).build();

  _$GRegistrationData_register._(
      {required this.G__typename, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRegistrationData_register', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        token, 'GRegistrationData_register', 'token');
  }

  @override
  GRegistrationData_register rebuild(
          void Function(GRegistrationData_registerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegistrationData_registerBuilder toBuilder() =>
      new GRegistrationData_registerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegistrationData_register &&
        G__typename == other.G__typename &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRegistrationData_register')
          ..add('G__typename', G__typename)
          ..add('token', token))
        .toString();
  }
}

class GRegistrationData_registerBuilder
    implements
        Builder<GRegistrationData_register, GRegistrationData_registerBuilder> {
  _$GRegistrationData_register? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GRegistrationData_registerBuilder() {
    GRegistrationData_register._initializeBuilder(this);
  }

  GRegistrationData_registerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegistrationData_register other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRegistrationData_register;
  }

  @override
  void update(void Function(GRegistrationData_registerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRegistrationData_register build() {
    final _$result = _$v ??
        new _$GRegistrationData_register._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRegistrationData_register', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GRegistrationData_register', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

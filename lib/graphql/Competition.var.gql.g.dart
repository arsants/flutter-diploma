// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Competition.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetRideVars> _$gGetRideVarsSerializer =
    new _$GGetRideVarsSerializer();
Serializer<GCreateHistoricRideVars> _$gCreateHistoricRideVarsSerializer =
    new _$GCreateHistoricRideVarsSerializer();
Serializer<GCreateRideVars> _$gCreateRideVarsSerializer =
    new _$GCreateRideVarsSerializer();
Serializer<GStartRideVars> _$gStartRideVarsSerializer =
    new _$GStartRideVarsSerializer();
Serializer<GLeaveRideVars> _$gLeaveRideVarsSerializer =
    new _$GLeaveRideVarsSerializer();
Serializer<GJoinRideVars> _$gJoinRideVarsSerializer =
    new _$GJoinRideVarsSerializer();
Serializer<GRideNodeFieldsVars> _$gRideNodeFieldsVarsSerializer =
    new _$GRideNodeFieldsVarsSerializer();

class _$GGetRideVarsSerializer implements StructuredSerializer<GGetRideVars> {
  @override
  final Iterable<Type> types = const [GGetRideVars, _$GGetRideVars];
  @override
  final String wireName = 'GGetRideVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetRideVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetRideVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRideVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateHistoricRideVarsSerializer
    implements StructuredSerializer<GCreateHistoricRideVars> {
  @override
  final Iterable<Type> types = const [
    GCreateHistoricRideVars,
    _$GCreateHistoricRideVars
  ];
  @override
  final String wireName = 'GCreateHistoricRideVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateHistoricRideVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.historicTrackId;
    if (value != null) {
      result
        ..add('historicTrackId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateHistoricRideVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateHistoricRideVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'historicTrackId':
          result.historicTrackId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateRideVarsSerializer
    implements StructuredSerializer<GCreateRideVars> {
  @override
  final Iterable<Type> types = const [GCreateRideVars, _$GCreateRideVars];
  @override
  final String wireName = 'GCreateRideVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateRideVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GCreateRideVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateRideVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GStartRideVarsSerializer
    implements StructuredSerializer<GStartRideVars> {
  @override
  final Iterable<Type> types = const [GStartRideVars, _$GStartRideVars];
  @override
  final String wireName = 'GStartRideVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GStartRideVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'sec',
      serializers.serialize(object.sec, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GStartRideVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStartRideVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sec':
          result.sec = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GLeaveRideVarsSerializer
    implements StructuredSerializer<GLeaveRideVars> {
  @override
  final Iterable<Type> types = const [GLeaveRideVars, _$GLeaveRideVars];
  @override
  final String wireName = 'GLeaveRideVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLeaveRideVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLeaveRideVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLeaveRideVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GJoinRideVarsSerializer implements StructuredSerializer<GJoinRideVars> {
  @override
  final Iterable<Type> types = const [GJoinRideVars, _$GJoinRideVars];
  @override
  final String wireName = 'GJoinRideVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GJoinRideVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GJoinRideVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GJoinRideVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRideNodeFieldsVarsSerializer
    implements StructuredSerializer<GRideNodeFieldsVars> {
  @override
  final Iterable<Type> types = const [
    GRideNodeFieldsVars,
    _$GRideNodeFieldsVars
  ];
  @override
  final String wireName = 'GRideNodeFieldsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRideNodeFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GRideNodeFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GRideNodeFieldsVarsBuilder().build();
  }
}

class _$GGetRideVars extends GGetRideVars {
  @override
  final String id;

  factory _$GGetRideVars([void Function(GGetRideVarsBuilder)? updates]) =>
      (new GGetRideVarsBuilder()..update(updates)).build();

  _$GGetRideVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GGetRideVars', 'id');
  }

  @override
  GGetRideVars rebuild(void Function(GGetRideVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRideVarsBuilder toBuilder() => new GGetRideVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRideVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRideVars')..add('id', id))
        .toString();
  }
}

class GGetRideVarsBuilder
    implements Builder<GGetRideVars, GGetRideVarsBuilder> {
  _$GGetRideVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetRideVarsBuilder();

  GGetRideVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRideVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRideVars;
  }

  @override
  void update(void Function(GGetRideVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRideVars build() {
    final _$result = _$v ??
        new _$GGetRideVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetRideVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateHistoricRideVars extends GCreateHistoricRideVars {
  @override
  final String? historicTrackId;

  factory _$GCreateHistoricRideVars(
          [void Function(GCreateHistoricRideVarsBuilder)? updates]) =>
      (new GCreateHistoricRideVarsBuilder()..update(updates)).build();

  _$GCreateHistoricRideVars._({this.historicTrackId}) : super._();

  @override
  GCreateHistoricRideVars rebuild(
          void Function(GCreateHistoricRideVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateHistoricRideVarsBuilder toBuilder() =>
      new GCreateHistoricRideVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateHistoricRideVars &&
        historicTrackId == other.historicTrackId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, historicTrackId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateHistoricRideVars')
          ..add('historicTrackId', historicTrackId))
        .toString();
  }
}

class GCreateHistoricRideVarsBuilder
    implements
        Builder<GCreateHistoricRideVars, GCreateHistoricRideVarsBuilder> {
  _$GCreateHistoricRideVars? _$v;

  String? _historicTrackId;
  String? get historicTrackId => _$this._historicTrackId;
  set historicTrackId(String? historicTrackId) =>
      _$this._historicTrackId = historicTrackId;

  GCreateHistoricRideVarsBuilder();

  GCreateHistoricRideVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _historicTrackId = $v.historicTrackId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateHistoricRideVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateHistoricRideVars;
  }

  @override
  void update(void Function(GCreateHistoricRideVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateHistoricRideVars build() {
    final _$result = _$v ??
        new _$GCreateHistoricRideVars._(historicTrackId: historicTrackId);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateRideVars extends GCreateRideVars {
  @override
  final int duration;

  factory _$GCreateRideVars([void Function(GCreateRideVarsBuilder)? updates]) =>
      (new GCreateRideVarsBuilder()..update(updates)).build();

  _$GCreateRideVars._({required this.duration}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        duration, 'GCreateRideVars', 'duration');
  }

  @override
  GCreateRideVars rebuild(void Function(GCreateRideVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateRideVarsBuilder toBuilder() =>
      new GCreateRideVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateRideVars && duration == other.duration;
  }

  @override
  int get hashCode {
    return $jf($jc(0, duration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateRideVars')
          ..add('duration', duration))
        .toString();
  }
}

class GCreateRideVarsBuilder
    implements Builder<GCreateRideVars, GCreateRideVarsBuilder> {
  _$GCreateRideVars? _$v;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  GCreateRideVarsBuilder();

  GCreateRideVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _duration = $v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateRideVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateRideVars;
  }

  @override
  void update(void Function(GCreateRideVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateRideVars build() {
    final _$result = _$v ??
        new _$GCreateRideVars._(
            duration: BuiltValueNullFieldError.checkNotNull(
                duration, 'GCreateRideVars', 'duration'));
    replace(_$result);
    return _$result;
  }
}

class _$GStartRideVars extends GStartRideVars {
  @override
  final String id;
  @override
  final int sec;

  factory _$GStartRideVars([void Function(GStartRideVarsBuilder)? updates]) =>
      (new GStartRideVarsBuilder()..update(updates)).build();

  _$GStartRideVars._({required this.id, required this.sec}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GStartRideVars', 'id');
    BuiltValueNullFieldError.checkNotNull(sec, 'GStartRideVars', 'sec');
  }

  @override
  GStartRideVars rebuild(void Function(GStartRideVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStartRideVarsBuilder toBuilder() =>
      new GStartRideVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStartRideVars && id == other.id && sec == other.sec;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), sec.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GStartRideVars')
          ..add('id', id)
          ..add('sec', sec))
        .toString();
  }
}

class GStartRideVarsBuilder
    implements Builder<GStartRideVars, GStartRideVarsBuilder> {
  _$GStartRideVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _sec;
  int? get sec => _$this._sec;
  set sec(int? sec) => _$this._sec = sec;

  GStartRideVarsBuilder();

  GStartRideVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sec = $v.sec;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStartRideVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStartRideVars;
  }

  @override
  void update(void Function(GStartRideVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GStartRideVars build() {
    final _$result = _$v ??
        new _$GStartRideVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GStartRideVars', 'id'),
            sec: BuiltValueNullFieldError.checkNotNull(
                sec, 'GStartRideVars', 'sec'));
    replace(_$result);
    return _$result;
  }
}

class _$GLeaveRideVars extends GLeaveRideVars {
  @override
  final String id;

  factory _$GLeaveRideVars([void Function(GLeaveRideVarsBuilder)? updates]) =>
      (new GLeaveRideVarsBuilder()..update(updates)).build();

  _$GLeaveRideVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GLeaveRideVars', 'id');
  }

  @override
  GLeaveRideVars rebuild(void Function(GLeaveRideVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLeaveRideVarsBuilder toBuilder() =>
      new GLeaveRideVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLeaveRideVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLeaveRideVars')..add('id', id))
        .toString();
  }
}

class GLeaveRideVarsBuilder
    implements Builder<GLeaveRideVars, GLeaveRideVarsBuilder> {
  _$GLeaveRideVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GLeaveRideVarsBuilder();

  GLeaveRideVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLeaveRideVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLeaveRideVars;
  }

  @override
  void update(void Function(GLeaveRideVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLeaveRideVars build() {
    final _$result = _$v ??
        new _$GLeaveRideVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GLeaveRideVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GJoinRideVars extends GJoinRideVars {
  @override
  final String code;

  factory _$GJoinRideVars([void Function(GJoinRideVarsBuilder)? updates]) =>
      (new GJoinRideVarsBuilder()..update(updates)).build();

  _$GJoinRideVars._({required this.code}) : super._() {
    BuiltValueNullFieldError.checkNotNull(code, 'GJoinRideVars', 'code');
  }

  @override
  GJoinRideVars rebuild(void Function(GJoinRideVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GJoinRideVarsBuilder toBuilder() => new GJoinRideVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GJoinRideVars && code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc(0, code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GJoinRideVars')..add('code', code))
        .toString();
  }
}

class GJoinRideVarsBuilder
    implements Builder<GJoinRideVars, GJoinRideVarsBuilder> {
  _$GJoinRideVars? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  GJoinRideVarsBuilder();

  GJoinRideVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GJoinRideVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GJoinRideVars;
  }

  @override
  void update(void Function(GJoinRideVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GJoinRideVars build() {
    final _$result = _$v ??
        new _$GJoinRideVars._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, 'GJoinRideVars', 'code'));
    replace(_$result);
    return _$result;
  }
}

class _$GRideNodeFieldsVars extends GRideNodeFieldsVars {
  factory _$GRideNodeFieldsVars(
          [void Function(GRideNodeFieldsVarsBuilder)? updates]) =>
      (new GRideNodeFieldsVarsBuilder()..update(updates)).build();

  _$GRideNodeFieldsVars._() : super._();

  @override
  GRideNodeFieldsVars rebuild(
          void Function(GRideNodeFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRideNodeFieldsVarsBuilder toBuilder() =>
      new GRideNodeFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRideNodeFieldsVars;
  }

  @override
  int get hashCode {
    return 844889920;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GRideNodeFieldsVars').toString();
  }
}

class GRideNodeFieldsVarsBuilder
    implements Builder<GRideNodeFieldsVars, GRideNodeFieldsVarsBuilder> {
  _$GRideNodeFieldsVars? _$v;

  GRideNodeFieldsVarsBuilder();

  @override
  void replace(GRideNodeFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRideNodeFieldsVars;
  }

  @override
  void update(void Function(GRideNodeFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRideNodeFieldsVars build() {
    final _$result = _$v ?? new _$GRideNodeFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

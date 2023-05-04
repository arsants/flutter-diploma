// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LeaderBoard.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetLeaderBoardVars> _$gGetLeaderBoardVarsSerializer =
    new _$GGetLeaderBoardVarsSerializer();

class _$GGetLeaderBoardVarsSerializer
    implements StructuredSerializer<GGetLeaderBoardVars> {
  @override
  final Iterable<Type> types = const [
    GGetLeaderBoardVars,
    _$GGetLeaderBoardVars
  ];
  @override
  final String wireName = 'GGetLeaderBoardVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLeaderBoardVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetLeaderBoardVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLeaderBoardVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLeaderBoardVars extends GGetLeaderBoardVars {
  @override
  final int time;

  factory _$GGetLeaderBoardVars(
          [void Function(GGetLeaderBoardVarsBuilder)? updates]) =>
      (new GGetLeaderBoardVarsBuilder()..update(updates)).build();

  _$GGetLeaderBoardVars._({required this.time}) : super._() {
    BuiltValueNullFieldError.checkNotNull(time, 'GGetLeaderBoardVars', 'time');
  }

  @override
  GGetLeaderBoardVars rebuild(
          void Function(GGetLeaderBoardVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLeaderBoardVarsBuilder toBuilder() =>
      new GGetLeaderBoardVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLeaderBoardVars && time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc(0, time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetLeaderBoardVars')
          ..add('time', time))
        .toString();
  }
}

class GGetLeaderBoardVarsBuilder
    implements Builder<GGetLeaderBoardVars, GGetLeaderBoardVarsBuilder> {
  _$GGetLeaderBoardVars? _$v;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  GGetLeaderBoardVarsBuilder();

  GGetLeaderBoardVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLeaderBoardVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLeaderBoardVars;
  }

  @override
  void update(void Function(GGetLeaderBoardVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetLeaderBoardVars build() {
    final _$result = _$v ??
        new _$GGetLeaderBoardVars._(
            time: BuiltValueNullFieldError.checkNotNull(
                time, 'GGetLeaderBoardVars', 'time'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Map.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GupdateCurrentLocationVars> _$gupdateCurrentLocationVarsSerializer =
    new _$GupdateCurrentLocationVarsSerializer();

class _$GupdateCurrentLocationVarsSerializer
    implements StructuredSerializer<GupdateCurrentLocationVars> {
  @override
  final Iterable<Type> types = const [
    GupdateCurrentLocationVars,
    _$GupdateCurrentLocationVars
  ];
  @override
  final String wireName = 'GupdateCurrentLocationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateCurrentLocationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'currentLocation',
      serializers.serialize(object.currentLocation,
          specifiedType: const FullType(_i1.GUpdateLocationInput)),
    ];

    return result;
  }

  @override
  GupdateCurrentLocationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateCurrentLocationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'currentLocation':
          result.currentLocation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUpdateLocationInput))!
              as _i1.GUpdateLocationInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateCurrentLocationVars extends GupdateCurrentLocationVars {
  @override
  final _i1.GUpdateLocationInput currentLocation;

  factory _$GupdateCurrentLocationVars(
          [void Function(GupdateCurrentLocationVarsBuilder)? updates]) =>
      (new GupdateCurrentLocationVarsBuilder()..update(updates)).build();

  _$GupdateCurrentLocationVars._({required this.currentLocation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currentLocation, 'GupdateCurrentLocationVars', 'currentLocation');
  }

  @override
  GupdateCurrentLocationVars rebuild(
          void Function(GupdateCurrentLocationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateCurrentLocationVarsBuilder toBuilder() =>
      new GupdateCurrentLocationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateCurrentLocationVars &&
        currentLocation == other.currentLocation;
  }

  @override
  int get hashCode {
    return $jf($jc(0, currentLocation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GupdateCurrentLocationVars')
          ..add('currentLocation', currentLocation))
        .toString();
  }
}

class GupdateCurrentLocationVarsBuilder
    implements
        Builder<GupdateCurrentLocationVars, GupdateCurrentLocationVarsBuilder> {
  _$GupdateCurrentLocationVars? _$v;

  _i1.GUpdateLocationInputBuilder? _currentLocation;
  _i1.GUpdateLocationInputBuilder get currentLocation =>
      _$this._currentLocation ??= new _i1.GUpdateLocationInputBuilder();
  set currentLocation(_i1.GUpdateLocationInputBuilder? currentLocation) =>
      _$this._currentLocation = currentLocation;

  GupdateCurrentLocationVarsBuilder();

  GupdateCurrentLocationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentLocation = $v.currentLocation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateCurrentLocationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateCurrentLocationVars;
  }

  @override
  void update(void Function(GupdateCurrentLocationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GupdateCurrentLocationVars build() {
    _$GupdateCurrentLocationVars _$result;
    try {
      _$result = _$v ??
          new _$GupdateCurrentLocationVars._(
              currentLocation: currentLocation.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentLocation';
        currentLocation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GupdateCurrentLocationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

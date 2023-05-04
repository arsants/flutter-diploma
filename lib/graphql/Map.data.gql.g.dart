// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Map.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GupdateCurrentLocationData> _$gupdateCurrentLocationDataSerializer =
    new _$GupdateCurrentLocationDataSerializer();
Serializer<GupdateCurrentLocationData_updateCurrentLocation>
    _$gupdateCurrentLocationDataUpdateCurrentLocationSerializer =
    new _$GupdateCurrentLocationData_updateCurrentLocationSerializer();

class _$GupdateCurrentLocationDataSerializer
    implements StructuredSerializer<GupdateCurrentLocationData> {
  @override
  final Iterable<Type> types = const [
    GupdateCurrentLocationData,
    _$GupdateCurrentLocationData
  ];
  @override
  final String wireName = 'GupdateCurrentLocationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateCurrentLocationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateCurrentLocation;
    if (value != null) {
      result
        ..add('updateCurrentLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GupdateCurrentLocationData_updateCurrentLocation)));
    }
    return result;
  }

  @override
  GupdateCurrentLocationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateCurrentLocationDataBuilder();

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
        case 'updateCurrentLocation':
          result.updateCurrentLocation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GupdateCurrentLocationData_updateCurrentLocation))!
              as GupdateCurrentLocationData_updateCurrentLocation);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateCurrentLocationData_updateCurrentLocationSerializer
    implements
        StructuredSerializer<GupdateCurrentLocationData_updateCurrentLocation> {
  @override
  final Iterable<Type> types = const [
    GupdateCurrentLocationData_updateCurrentLocation,
    _$GupdateCurrentLocationData_updateCurrentLocation
  ];
  @override
  final String wireName = 'GupdateCurrentLocationData_updateCurrentLocation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GupdateCurrentLocationData_updateCurrentLocation object,
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
  GupdateCurrentLocationData_updateCurrentLocation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GupdateCurrentLocationData_updateCurrentLocationBuilder();

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

class _$GupdateCurrentLocationData extends GupdateCurrentLocationData {
  @override
  final String G__typename;
  @override
  final GupdateCurrentLocationData_updateCurrentLocation? updateCurrentLocation;

  factory _$GupdateCurrentLocationData(
          [void Function(GupdateCurrentLocationDataBuilder)? updates]) =>
      (new GupdateCurrentLocationDataBuilder()..update(updates)).build();

  _$GupdateCurrentLocationData._(
      {required this.G__typename, this.updateCurrentLocation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GupdateCurrentLocationData', 'G__typename');
  }

  @override
  GupdateCurrentLocationData rebuild(
          void Function(GupdateCurrentLocationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateCurrentLocationDataBuilder toBuilder() =>
      new GupdateCurrentLocationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateCurrentLocationData &&
        G__typename == other.G__typename &&
        updateCurrentLocation == other.updateCurrentLocation;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), updateCurrentLocation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GupdateCurrentLocationData')
          ..add('G__typename', G__typename)
          ..add('updateCurrentLocation', updateCurrentLocation))
        .toString();
  }
}

class GupdateCurrentLocationDataBuilder
    implements
        Builder<GupdateCurrentLocationData, GupdateCurrentLocationDataBuilder> {
  _$GupdateCurrentLocationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupdateCurrentLocationData_updateCurrentLocationBuilder?
      _updateCurrentLocation;
  GupdateCurrentLocationData_updateCurrentLocationBuilder
      get updateCurrentLocation => _$this._updateCurrentLocation ??=
          new GupdateCurrentLocationData_updateCurrentLocationBuilder();
  set updateCurrentLocation(
          GupdateCurrentLocationData_updateCurrentLocationBuilder?
              updateCurrentLocation) =>
      _$this._updateCurrentLocation = updateCurrentLocation;

  GupdateCurrentLocationDataBuilder() {
    GupdateCurrentLocationData._initializeBuilder(this);
  }

  GupdateCurrentLocationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateCurrentLocation = $v.updateCurrentLocation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateCurrentLocationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateCurrentLocationData;
  }

  @override
  void update(void Function(GupdateCurrentLocationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GupdateCurrentLocationData build() {
    _$GupdateCurrentLocationData _$result;
    try {
      _$result = _$v ??
          new _$GupdateCurrentLocationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GupdateCurrentLocationData', 'G__typename'),
              updateCurrentLocation: _updateCurrentLocation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateCurrentLocation';
        _updateCurrentLocation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GupdateCurrentLocationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateCurrentLocationData_updateCurrentLocation
    extends GupdateCurrentLocationData_updateCurrentLocation {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$GupdateCurrentLocationData_updateCurrentLocation(
          [void Function(
                  GupdateCurrentLocationData_updateCurrentLocationBuilder)?
              updates]) =>
      (new GupdateCurrentLocationData_updateCurrentLocationBuilder()
            ..update(updates))
          .build();

  _$GupdateCurrentLocationData_updateCurrentLocation._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GupdateCurrentLocationData_updateCurrentLocation', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, 'GupdateCurrentLocationData_updateCurrentLocation', 'success');
  }

  @override
  GupdateCurrentLocationData_updateCurrentLocation rebuild(
          void Function(GupdateCurrentLocationData_updateCurrentLocationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateCurrentLocationData_updateCurrentLocationBuilder toBuilder() =>
      new GupdateCurrentLocationData_updateCurrentLocationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateCurrentLocationData_updateCurrentLocation &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GupdateCurrentLocationData_updateCurrentLocation')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class GupdateCurrentLocationData_updateCurrentLocationBuilder
    implements
        Builder<GupdateCurrentLocationData_updateCurrentLocation,
            GupdateCurrentLocationData_updateCurrentLocationBuilder> {
  _$GupdateCurrentLocationData_updateCurrentLocation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GupdateCurrentLocationData_updateCurrentLocationBuilder() {
    GupdateCurrentLocationData_updateCurrentLocation._initializeBuilder(this);
  }

  GupdateCurrentLocationData_updateCurrentLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateCurrentLocationData_updateCurrentLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateCurrentLocationData_updateCurrentLocation;
  }

  @override
  void update(
      void Function(GupdateCurrentLocationData_updateCurrentLocationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GupdateCurrentLocationData_updateCurrentLocation build() {
    final _$result = _$v ??
        new _$GupdateCurrentLocationData_updateCurrentLocation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GupdateCurrentLocationData_updateCurrentLocation',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                'GupdateCurrentLocationData_updateCurrentLocation', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

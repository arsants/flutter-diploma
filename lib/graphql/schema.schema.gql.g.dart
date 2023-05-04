// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GRideStatusEnum _$gRideStatusEnumCREATED =
    const GRideStatusEnum._('CREATED');
const GRideStatusEnum _$gRideStatusEnumONGOING =
    const GRideStatusEnum._('ONGOING');
const GRideStatusEnum _$gRideStatusEnumFINISHED =
    const GRideStatusEnum._('FINISHED');
const GRideStatusEnum _$gRideStatusEnumDELETED =
    const GRideStatusEnum._('DELETED');

GRideStatusEnum _$gRideStatusEnumValueOf(String name) {
  switch (name) {
    case 'CREATED':
      return _$gRideStatusEnumCREATED;
    case 'ONGOING':
      return _$gRideStatusEnumONGOING;
    case 'FINISHED':
      return _$gRideStatusEnumFINISHED;
    case 'DELETED':
      return _$gRideStatusEnumDELETED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GRideStatusEnum> _$gRideStatusEnumValues =
    new BuiltSet<GRideStatusEnum>(const <GRideStatusEnum>[
  _$gRideStatusEnumCREATED,
  _$gRideStatusEnumONGOING,
  _$gRideStatusEnumFINISHED,
  _$gRideStatusEnumDELETED,
]);

const GRideTypeEnum _$gRideTypeEnumREAL_TIME =
    const GRideTypeEnum._('REAL_TIME');
const GRideTypeEnum _$gRideTypeEnumHISTORIC = const GRideTypeEnum._('HISTORIC');

GRideTypeEnum _$gRideTypeEnumValueOf(String name) {
  switch (name) {
    case 'REAL_TIME':
      return _$gRideTypeEnumREAL_TIME;
    case 'HISTORIC':
      return _$gRideTypeEnumHISTORIC;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GRideTypeEnum> _$gRideTypeEnumValues =
    new BuiltSet<GRideTypeEnum>(const <GRideTypeEnum>[
  _$gRideTypeEnumREAL_TIME,
  _$gRideTypeEnumHISTORIC,
]);

const GTrackOrderEnum _$gTrackOrderEnumSTART_TIME_ASC =
    const GTrackOrderEnum._('START_TIME_ASC');
const GTrackOrderEnum _$gTrackOrderEnumSTART_TIME_DESC =
    const GTrackOrderEnum._('START_TIME_DESC');
const GTrackOrderEnum _$gTrackOrderEnumDISTANCE_ASC =
    const GTrackOrderEnum._('DISTANCE_ASC');
const GTrackOrderEnum _$gTrackOrderEnumDISTANCE_DESC =
    const GTrackOrderEnum._('DISTANCE_DESC');

GTrackOrderEnum _$gTrackOrderEnumValueOf(String name) {
  switch (name) {
    case 'START_TIME_ASC':
      return _$gTrackOrderEnumSTART_TIME_ASC;
    case 'START_TIME_DESC':
      return _$gTrackOrderEnumSTART_TIME_DESC;
    case 'DISTANCE_ASC':
      return _$gTrackOrderEnumDISTANCE_ASC;
    case 'DISTANCE_DESC':
      return _$gTrackOrderEnumDISTANCE_DESC;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GTrackOrderEnum> _$gTrackOrderEnumValues =
    new BuiltSet<GTrackOrderEnum>(const <GTrackOrderEnum>[
  _$gTrackOrderEnumSTART_TIME_ASC,
  _$gTrackOrderEnumSTART_TIME_DESC,
  _$gTrackOrderEnumDISTANCE_ASC,
  _$gTrackOrderEnumDISTANCE_DESC,
]);

Serializer<GLocationInput> _$gLocationInputSerializer =
    new _$GLocationInputSerializer();
Serializer<GRideInput> _$gRideInputSerializer = new _$GRideInputSerializer();
Serializer<GRideStatusEnum> _$gRideStatusEnumSerializer =
    new _$GRideStatusEnumSerializer();
Serializer<GRideTypeEnum> _$gRideTypeEnumSerializer =
    new _$GRideTypeEnumSerializer();
Serializer<GTrackOrderEnum> _$gTrackOrderEnumSerializer =
    new _$GTrackOrderEnumSerializer();
Serializer<GUpdateLocationInput> _$gUpdateLocationInputSerializer =
    new _$GUpdateLocationInputSerializer();
Serializer<GUpdateProfileInput> _$gUpdateProfileInputSerializer =
    new _$GUpdateProfileInputSerializer();

class _$GLocationInputSerializer
    implements StructuredSerializer<GLocationInput> {
  @override
  final Iterable<Type> types = const [GLocationInput, _$GLocationInput];
  @override
  final String wireName = 'GLocationInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLocationInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GLocationInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GRideInputSerializer implements StructuredSerializer<GRideInput> {
  @override
  final Iterable<Type> types = const [GRideInput, _$GRideInput];
  @override
  final String wireName = 'GRideInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRideInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(GRideTypeEnum)),
    ];
    Object? value;
    value = object.timeLimitMinutes;
    if (value != null) {
      result
        ..add('timeLimitMinutes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
  GRideInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRideInputBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(GRideTypeEnum)) as GRideTypeEnum;
          break;
        case 'historicTrackId':
          result.historicTrackId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRideStatusEnumSerializer
    implements PrimitiveSerializer<GRideStatusEnum> {
  @override
  final Iterable<Type> types = const <Type>[GRideStatusEnum];
  @override
  final String wireName = 'GRideStatusEnum';

  @override
  Object serialize(Serializers serializers, GRideStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GRideStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GRideStatusEnum.valueOf(serialized as String);
}

class _$GRideTypeEnumSerializer implements PrimitiveSerializer<GRideTypeEnum> {
  @override
  final Iterable<Type> types = const <Type>[GRideTypeEnum];
  @override
  final String wireName = 'GRideTypeEnum';

  @override
  Object serialize(Serializers serializers, GRideTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GRideTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GRideTypeEnum.valueOf(serialized as String);
}

class _$GTrackOrderEnumSerializer
    implements PrimitiveSerializer<GTrackOrderEnum> {
  @override
  final Iterable<Type> types = const <Type>[GTrackOrderEnum];
  @override
  final String wireName = 'GTrackOrderEnum';

  @override
  Object serialize(Serializers serializers, GTrackOrderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GTrackOrderEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GTrackOrderEnum.valueOf(serialized as String);
}

class _$GUpdateLocationInputSerializer
    implements StructuredSerializer<GUpdateLocationInput> {
  @override
  final Iterable<Type> types = const [
    GUpdateLocationInput,
    _$GUpdateLocationInput
  ];
  @override
  final String wireName = 'GUpdateLocationInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateLocationInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(GLocationInput)),
    ];

    return result;
  }

  @override
  GUpdateLocationInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateLocationInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLocationInput))!
              as GLocationInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateProfileInputSerializer
    implements StructuredSerializer<GUpdateProfileInput> {
  @override
  final Iterable<Type> types = const [
    GUpdateProfileInput,
    _$GUpdateProfileInput
  ];
  @override
  final String wireName = 'GUpdateProfileInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateProfileInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.telegram;
    if (value != null) {
      result
        ..add('telegram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  GUpdateProfileInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateProfileInputBuilder();

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
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
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

class _$GLocationInput extends GLocationInput {
  @override
  final double longitude;
  @override
  final double latitude;

  factory _$GLocationInput([void Function(GLocationInputBuilder)? updates]) =>
      (new GLocationInputBuilder()..update(updates)).build();

  _$GLocationInput._({required this.longitude, required this.latitude})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        longitude, 'GLocationInput', 'longitude');
    BuiltValueNullFieldError.checkNotNull(
        latitude, 'GLocationInput', 'latitude');
  }

  @override
  GLocationInput rebuild(void Function(GLocationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationInputBuilder toBuilder() =>
      new GLocationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationInput &&
        longitude == other.longitude &&
        latitude == other.latitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, longitude.hashCode), latitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLocationInput')
          ..add('longitude', longitude)
          ..add('latitude', latitude))
        .toString();
  }
}

class GLocationInputBuilder
    implements Builder<GLocationInput, GLocationInputBuilder> {
  _$GLocationInput? _$v;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  GLocationInputBuilder();

  GLocationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _longitude = $v.longitude;
      _latitude = $v.latitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationInput;
  }

  @override
  void update(void Function(GLocationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLocationInput build() {
    final _$result = _$v ??
        new _$GLocationInput._(
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, 'GLocationInput', 'longitude'),
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, 'GLocationInput', 'latitude'));
    replace(_$result);
    return _$result;
  }
}

class _$GRideInput extends GRideInput {
  @override
  final int? timeLimitMinutes;
  @override
  final GRideTypeEnum type;
  @override
  final String? historicTrackId;

  factory _$GRideInput([void Function(GRideInputBuilder)? updates]) =>
      (new GRideInputBuilder()..update(updates)).build();

  _$GRideInput._(
      {this.timeLimitMinutes, required this.type, this.historicTrackId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, 'GRideInput', 'type');
  }

  @override
  GRideInput rebuild(void Function(GRideInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRideInputBuilder toBuilder() => new GRideInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRideInput &&
        timeLimitMinutes == other.timeLimitMinutes &&
        type == other.type &&
        historicTrackId == other.historicTrackId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, timeLimitMinutes.hashCode), type.hashCode),
        historicTrackId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRideInput')
          ..add('timeLimitMinutes', timeLimitMinutes)
          ..add('type', type)
          ..add('historicTrackId', historicTrackId))
        .toString();
  }
}

class GRideInputBuilder implements Builder<GRideInput, GRideInputBuilder> {
  _$GRideInput? _$v;

  int? _timeLimitMinutes;
  int? get timeLimitMinutes => _$this._timeLimitMinutes;
  set timeLimitMinutes(int? timeLimitMinutes) =>
      _$this._timeLimitMinutes = timeLimitMinutes;

  GRideTypeEnum? _type;
  GRideTypeEnum? get type => _$this._type;
  set type(GRideTypeEnum? type) => _$this._type = type;

  String? _historicTrackId;
  String? get historicTrackId => _$this._historicTrackId;
  set historicTrackId(String? historicTrackId) =>
      _$this._historicTrackId = historicTrackId;

  GRideInputBuilder();

  GRideInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeLimitMinutes = $v.timeLimitMinutes;
      _type = $v.type;
      _historicTrackId = $v.historicTrackId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRideInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRideInput;
  }

  @override
  void update(void Function(GRideInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRideInput build() {
    final _$result = _$v ??
        new _$GRideInput._(
            timeLimitMinutes: timeLimitMinutes,
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'GRideInput', 'type'),
            historicTrackId: historicTrackId);
    replace(_$result);
    return _$result;
  }
}

class _$GSocialCamelJSON extends GSocialCamelJSON {
  @override
  final String value;

  factory _$GSocialCamelJSON(
          [void Function(GSocialCamelJSONBuilder)? updates]) =>
      (new GSocialCamelJSONBuilder()..update(updates)).build();

  _$GSocialCamelJSON._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'GSocialCamelJSON', 'value');
  }

  @override
  GSocialCamelJSON rebuild(void Function(GSocialCamelJSONBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialCamelJSONBuilder toBuilder() =>
      new GSocialCamelJSONBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialCamelJSON && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSocialCamelJSON')
          ..add('value', value))
        .toString();
  }
}

class GSocialCamelJSONBuilder
    implements Builder<GSocialCamelJSON, GSocialCamelJSONBuilder> {
  _$GSocialCamelJSON? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GSocialCamelJSONBuilder();

  GSocialCamelJSONBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialCamelJSON other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialCamelJSON;
  }

  @override
  void update(void Function(GSocialCamelJSONBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSocialCamelJSON build() {
    final _$result = _$v ??
        new _$GSocialCamelJSON._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'GSocialCamelJSON', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateLocationInput extends GUpdateLocationInput {
  @override
  final GLocationInput location;

  factory _$GUpdateLocationInput(
          [void Function(GUpdateLocationInputBuilder)? updates]) =>
      (new GUpdateLocationInputBuilder()..update(updates)).build();

  _$GUpdateLocationInput._({required this.location}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        location, 'GUpdateLocationInput', 'location');
  }

  @override
  GUpdateLocationInput rebuild(
          void Function(GUpdateLocationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateLocationInputBuilder toBuilder() =>
      new GUpdateLocationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateLocationInput && location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(0, location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateLocationInput')
          ..add('location', location))
        .toString();
  }
}

class GUpdateLocationInputBuilder
    implements Builder<GUpdateLocationInput, GUpdateLocationInputBuilder> {
  _$GUpdateLocationInput? _$v;

  GLocationInputBuilder? _location;
  GLocationInputBuilder get location =>
      _$this._location ??= new GLocationInputBuilder();
  set location(GLocationInputBuilder? location) => _$this._location = location;

  GUpdateLocationInputBuilder();

  GUpdateLocationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateLocationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateLocationInput;
  }

  @override
  void update(void Function(GUpdateLocationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateLocationInput build() {
    _$GUpdateLocationInput _$result;
    try {
      _$result =
          _$v ?? new _$GUpdateLocationInput._(location: location.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateLocationInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProfileInput extends GUpdateProfileInput {
  @override
  final String? username;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? telegram;
  @override
  final bool? isPublic;

  factory _$GUpdateProfileInput(
          [void Function(GUpdateProfileInputBuilder)? updates]) =>
      (new GUpdateProfileInputBuilder()..update(updates)).build();

  _$GUpdateProfileInput._(
      {this.username,
      this.firstName,
      this.lastName,
      this.telegram,
      this.isPublic})
      : super._();

  @override
  GUpdateProfileInput rebuild(
          void Function(GUpdateProfileInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProfileInputBuilder toBuilder() =>
      new GUpdateProfileInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProfileInput &&
        username == other.username &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        telegram == other.telegram &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, username.hashCode), firstName.hashCode),
                lastName.hashCode),
            telegram.hashCode),
        isPublic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateProfileInput')
          ..add('username', username)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('telegram', telegram)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class GUpdateProfileInputBuilder
    implements Builder<GUpdateProfileInput, GUpdateProfileInputBuilder> {
  _$GUpdateProfileInput? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _telegram;
  String? get telegram => _$this._telegram;
  set telegram(String? telegram) => _$this._telegram = telegram;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  GUpdateProfileInputBuilder();

  GUpdateProfileInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _telegram = $v.telegram;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProfileInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateProfileInput;
  }

  @override
  void update(void Function(GUpdateProfileInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateProfileInput build() {
    final _$result = _$v ??
        new _$GUpdateProfileInput._(
            username: username,
            firstName: firstName,
            lastName: lastName,
            telegram: telegram,
            isPublic: isPublic);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

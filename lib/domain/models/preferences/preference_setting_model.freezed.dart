// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preference_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreferenceSettingModel _$PreferenceSettingModelFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'location':
      return _LocationPreference.fromJson(json);
    case 'insurance':
      return _InsurancePreferences.fromJson(json);
    case 'empty':
      return _Empty.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'PreferenceSettingModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PreferenceSettingModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationPreference? locationPreference) location,
    required TResult Function(List<String>? insurances) insurance,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationPreference? locationPreference)? location,
    TResult? Function(List<String>? insurances)? insurance,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationPreference? locationPreference)? location,
    TResult Function(List<String>? insurances)? insurance,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationPreference value) location,
    required TResult Function(_InsurancePreferences value) insurance,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PreferenceSettingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceSettingModelCopyWith<$Res> {
  factory $PreferenceSettingModelCopyWith(PreferenceSettingModel value,
          $Res Function(PreferenceSettingModel) then) =
      _$PreferenceSettingModelCopyWithImpl<$Res, PreferenceSettingModel>;
}

/// @nodoc
class _$PreferenceSettingModelCopyWithImpl<$Res,
        $Val extends PreferenceSettingModel>
    implements $PreferenceSettingModelCopyWith<$Res> {
  _$PreferenceSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LocationPreferenceImplCopyWith<$Res> {
  factory _$$LocationPreferenceImplCopyWith(_$LocationPreferenceImpl value,
          $Res Function(_$LocationPreferenceImpl) then) =
      __$$LocationPreferenceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationPreference? locationPreference});
}

/// @nodoc
class __$$LocationPreferenceImplCopyWithImpl<$Res>
    extends _$PreferenceSettingModelCopyWithImpl<$Res, _$LocationPreferenceImpl>
    implements _$$LocationPreferenceImplCopyWith<$Res> {
  __$$LocationPreferenceImplCopyWithImpl(_$LocationPreferenceImpl _value,
      $Res Function(_$LocationPreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationPreference = freezed,
  }) {
    return _then(_$LocationPreferenceImpl(
      locationPreference: freezed == locationPreference
          ? _value.locationPreference
          : locationPreference // ignore: cast_nullable_to_non_nullable
              as LocationPreference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationPreferenceImpl extends _LocationPreference {
  const _$LocationPreferenceImpl({this.locationPreference, final String? $type})
      : $type = $type ?? 'location',
        super._();

  factory _$LocationPreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationPreferenceImplFromJson(json);

  @override
  final LocationPreference? locationPreference;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PreferenceSettingModel.location(locationPreference: $locationPreference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPreferenceImpl &&
            (identical(other.locationPreference, locationPreference) ||
                other.locationPreference == locationPreference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locationPreference);

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPreferenceImplCopyWith<_$LocationPreferenceImpl> get copyWith =>
      __$$LocationPreferenceImplCopyWithImpl<_$LocationPreferenceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationPreference? locationPreference) location,
    required TResult Function(List<String>? insurances) insurance,
    required TResult Function() empty,
  }) {
    return location(locationPreference);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationPreference? locationPreference)? location,
    TResult? Function(List<String>? insurances)? insurance,
    TResult? Function()? empty,
  }) {
    return location?.call(locationPreference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationPreference? locationPreference)? location,
    TResult Function(List<String>? insurances)? insurance,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(locationPreference);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationPreference value) location,
    required TResult Function(_InsurancePreferences value) insurance,
    required TResult Function(_Empty value) empty,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_Empty value)? empty,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationPreferenceImplToJson(
      this,
    );
  }
}

abstract class _LocationPreference extends PreferenceSettingModel {
  const factory _LocationPreference(
          {final LocationPreference? locationPreference}) =
      _$LocationPreferenceImpl;
  const _LocationPreference._() : super._();

  factory _LocationPreference.fromJson(Map<String, dynamic> json) =
      _$LocationPreferenceImpl.fromJson;

  LocationPreference? get locationPreference;

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationPreferenceImplCopyWith<_$LocationPreferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsurancePreferencesImplCopyWith<$Res> {
  factory _$$InsurancePreferencesImplCopyWith(_$InsurancePreferencesImpl value,
          $Res Function(_$InsurancePreferencesImpl) then) =
      __$$InsurancePreferencesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String>? insurances});
}

/// @nodoc
class __$$InsurancePreferencesImplCopyWithImpl<$Res>
    extends _$PreferenceSettingModelCopyWithImpl<$Res,
        _$InsurancePreferencesImpl>
    implements _$$InsurancePreferencesImplCopyWith<$Res> {
  __$$InsurancePreferencesImplCopyWithImpl(_$InsurancePreferencesImpl _value,
      $Res Function(_$InsurancePreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insurances = freezed,
  }) {
    return _then(_$InsurancePreferencesImpl(
      insurances: freezed == insurances
          ? _value._insurances
          : insurances // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePreferencesImpl extends _InsurancePreferences {
  const _$InsurancePreferencesImpl(
      {final List<String>? insurances, final String? $type})
      : _insurances = insurances,
        $type = $type ?? 'insurance',
        super._();

  factory _$InsurancePreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePreferencesImplFromJson(json);

  final List<String>? _insurances;
  @override
  List<String>? get insurances {
    final value = _insurances;
    if (value == null) return null;
    if (_insurances is EqualUnmodifiableListView) return _insurances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PreferenceSettingModel.insurance(insurances: $insurances)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancePreferencesImpl &&
            const DeepCollectionEquality()
                .equals(other._insurances, _insurances));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_insurances));

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancePreferencesImplCopyWith<_$InsurancePreferencesImpl>
      get copyWith =>
          __$$InsurancePreferencesImplCopyWithImpl<_$InsurancePreferencesImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationPreference? locationPreference) location,
    required TResult Function(List<String>? insurances) insurance,
    required TResult Function() empty,
  }) {
    return insurance(insurances);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationPreference? locationPreference)? location,
    TResult? Function(List<String>? insurances)? insurance,
    TResult? Function()? empty,
  }) {
    return insurance?.call(insurances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationPreference? locationPreference)? location,
    TResult Function(List<String>? insurances)? insurance,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (insurance != null) {
      return insurance(insurances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationPreference value) location,
    required TResult Function(_InsurancePreferences value) insurance,
    required TResult Function(_Empty value) empty,
  }) {
    return insurance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_Empty value)? empty,
  }) {
    return insurance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (insurance != null) {
      return insurance(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InsurancePreferencesImplToJson(
      this,
    );
  }
}

abstract class _InsurancePreferences extends PreferenceSettingModel {
  const factory _InsurancePreferences({final List<String>? insurances}) =
      _$InsurancePreferencesImpl;
  const _InsurancePreferences._() : super._();

  factory _InsurancePreferences.fromJson(Map<String, dynamic> json) =
      _$InsurancePreferencesImpl.fromJson;

  List<String>? get insurances;

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePreferencesImplCopyWith<_$InsurancePreferencesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$PreferenceSettingModelCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EmptyImpl extends _Empty {
  const _$EmptyImpl({final String? $type})
      : $type = $type ?? 'empty',
        super._();

  factory _$EmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmptyImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PreferenceSettingModel.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationPreference? locationPreference) location,
    required TResult Function(List<String>? insurances) insurance,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationPreference? locationPreference)? location,
    TResult? Function(List<String>? insurances)? insurance,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationPreference? locationPreference)? location,
    TResult Function(List<String>? insurances)? insurance,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationPreference value) location,
    required TResult Function(_InsurancePreferences value) insurance,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyImplToJson(
      this,
    );
  }
}

abstract class _Empty extends PreferenceSettingModel {
  const factory _Empty() = _$EmptyImpl;
  const _Empty._() : super._();

  factory _Empty.fromJson(Map<String, dynamic> json) = _$EmptyImpl.fromJson;
}

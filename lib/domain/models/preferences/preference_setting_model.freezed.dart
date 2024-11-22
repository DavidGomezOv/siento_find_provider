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
    case 'topicsOfInterest':
      return _TopicsOfInterestPreference.fromJson(json);
    case 'serviceType':
      return _ServiceTypePreference.fromJson(json);
    case 'cultureAndFaith':
      return _CultureAndFaithPreference.fromJson(json);
    case 'genderAndSexuality':
      return _GenderAndSexualityPreference.fromJson(json);
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
    required TResult Function(String locationPreference) location,
    required TResult Function(List<String> insurances) insurance,
    required TResult Function(List<String> topicsOfInterest) topicsOfInterest,
    required TResult Function(String routeOfService, String typeOfService)
        serviceType,
    required TResult Function(List<String> cultures, List<String> faiths)
        cultureAndFaith,
    required TResult Function(
            List<String> genders, String therapistIdentifiesAs)
        genderAndSexuality,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String locationPreference)? location,
    TResult? Function(List<String> insurances)? insurance,
    TResult? Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult? Function(String routeOfService, String typeOfService)? serviceType,
    TResult? Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult? Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locationPreference)? location,
    TResult Function(List<String> insurances)? insurance,
    TResult Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult Function(String routeOfService, String typeOfService)? serviceType,
    TResult Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationPreference value) location,
    required TResult Function(_InsurancePreferences value) insurance,
    required TResult Function(_TopicsOfInterestPreference value)
        topicsOfInterest,
    required TResult Function(_ServiceTypePreference value) serviceType,
    required TResult Function(_CultureAndFaithPreference value) cultureAndFaith,
    required TResult Function(_GenderAndSexualityPreference value)
        genderAndSexuality,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult? Function(_ServiceTypePreference value)? serviceType,
    TResult? Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult? Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult? Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult Function(_ServiceTypePreference value)? serviceType,
    TResult Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult Function(_GenderAndSexualityPreference value)? genderAndSexuality,
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
  $Res call({String locationPreference});
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
    Object? locationPreference = null,
  }) {
    return _then(_$LocationPreferenceImpl(
      locationPreference: null == locationPreference
          ? _value.locationPreference
          : locationPreference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationPreferenceImpl extends _LocationPreference {
  const _$LocationPreferenceImpl(
      {this.locationPreference = '', final String? $type})
      : $type = $type ?? 'location',
        super._();

  factory _$LocationPreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationPreferenceImplFromJson(json);

  @override
  @JsonKey()
  final String locationPreference;

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
    required TResult Function(String locationPreference) location,
    required TResult Function(List<String> insurances) insurance,
    required TResult Function(List<String> topicsOfInterest) topicsOfInterest,
    required TResult Function(String routeOfService, String typeOfService)
        serviceType,
    required TResult Function(List<String> cultures, List<String> faiths)
        cultureAndFaith,
    required TResult Function(
            List<String> genders, String therapistIdentifiesAs)
        genderAndSexuality,
    required TResult Function() empty,
  }) {
    return location(locationPreference);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String locationPreference)? location,
    TResult? Function(List<String> insurances)? insurance,
    TResult? Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult? Function(String routeOfService, String typeOfService)? serviceType,
    TResult? Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult? Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult? Function()? empty,
  }) {
    return location?.call(locationPreference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locationPreference)? location,
    TResult Function(List<String> insurances)? insurance,
    TResult Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult Function(String routeOfService, String typeOfService)? serviceType,
    TResult Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
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
    required TResult Function(_TopicsOfInterestPreference value)
        topicsOfInterest,
    required TResult Function(_ServiceTypePreference value) serviceType,
    required TResult Function(_CultureAndFaithPreference value) cultureAndFaith,
    required TResult Function(_GenderAndSexualityPreference value)
        genderAndSexuality,
    required TResult Function(_Empty value) empty,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult? Function(_ServiceTypePreference value)? serviceType,
    TResult? Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult? Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult? Function(_Empty value)? empty,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult Function(_ServiceTypePreference value)? serviceType,
    TResult Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult Function(_GenderAndSexualityPreference value)? genderAndSexuality,
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
  const factory _LocationPreference({final String locationPreference}) =
      _$LocationPreferenceImpl;
  const _LocationPreference._() : super._();

  factory _LocationPreference.fromJson(Map<String, dynamic> json) =
      _$LocationPreferenceImpl.fromJson;

  String get locationPreference;

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
  $Res call({List<String> insurances});
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
    Object? insurances = null,
  }) {
    return _then(_$InsurancePreferencesImpl(
      insurances: null == insurances
          ? _value._insurances
          : insurances // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsurancePreferencesImpl extends _InsurancePreferences {
  const _$InsurancePreferencesImpl(
      {final List<String> insurances = const [], final String? $type})
      : _insurances = insurances,
        $type = $type ?? 'insurance',
        super._();

  factory _$InsurancePreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsurancePreferencesImplFromJson(json);

  final List<String> _insurances;
  @override
  @JsonKey()
  List<String> get insurances {
    if (_insurances is EqualUnmodifiableListView) return _insurances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_insurances);
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
    required TResult Function(String locationPreference) location,
    required TResult Function(List<String> insurances) insurance,
    required TResult Function(List<String> topicsOfInterest) topicsOfInterest,
    required TResult Function(String routeOfService, String typeOfService)
        serviceType,
    required TResult Function(List<String> cultures, List<String> faiths)
        cultureAndFaith,
    required TResult Function(
            List<String> genders, String therapistIdentifiesAs)
        genderAndSexuality,
    required TResult Function() empty,
  }) {
    return insurance(insurances);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String locationPreference)? location,
    TResult? Function(List<String> insurances)? insurance,
    TResult? Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult? Function(String routeOfService, String typeOfService)? serviceType,
    TResult? Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult? Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult? Function()? empty,
  }) {
    return insurance?.call(insurances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locationPreference)? location,
    TResult Function(List<String> insurances)? insurance,
    TResult Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult Function(String routeOfService, String typeOfService)? serviceType,
    TResult Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
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
    required TResult Function(_TopicsOfInterestPreference value)
        topicsOfInterest,
    required TResult Function(_ServiceTypePreference value) serviceType,
    required TResult Function(_CultureAndFaithPreference value) cultureAndFaith,
    required TResult Function(_GenderAndSexualityPreference value)
        genderAndSexuality,
    required TResult Function(_Empty value) empty,
  }) {
    return insurance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult? Function(_ServiceTypePreference value)? serviceType,
    TResult? Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult? Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult? Function(_Empty value)? empty,
  }) {
    return insurance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult Function(_ServiceTypePreference value)? serviceType,
    TResult Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult Function(_GenderAndSexualityPreference value)? genderAndSexuality,
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
  const factory _InsurancePreferences({final List<String> insurances}) =
      _$InsurancePreferencesImpl;
  const _InsurancePreferences._() : super._();

  factory _InsurancePreferences.fromJson(Map<String, dynamic> json) =
      _$InsurancePreferencesImpl.fromJson;

  List<String> get insurances;

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsurancePreferencesImplCopyWith<_$InsurancePreferencesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopicsOfInterestPreferenceImplCopyWith<$Res> {
  factory _$$TopicsOfInterestPreferenceImplCopyWith(
          _$TopicsOfInterestPreferenceImpl value,
          $Res Function(_$TopicsOfInterestPreferenceImpl) then) =
      __$$TopicsOfInterestPreferenceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> topicsOfInterest});
}

/// @nodoc
class __$$TopicsOfInterestPreferenceImplCopyWithImpl<$Res>
    extends _$PreferenceSettingModelCopyWithImpl<$Res,
        _$TopicsOfInterestPreferenceImpl>
    implements _$$TopicsOfInterestPreferenceImplCopyWith<$Res> {
  __$$TopicsOfInterestPreferenceImplCopyWithImpl(
      _$TopicsOfInterestPreferenceImpl _value,
      $Res Function(_$TopicsOfInterestPreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicsOfInterest = null,
  }) {
    return _then(_$TopicsOfInterestPreferenceImpl(
      topicsOfInterest: null == topicsOfInterest
          ? _value._topicsOfInterest
          : topicsOfInterest // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicsOfInterestPreferenceImpl extends _TopicsOfInterestPreference {
  const _$TopicsOfInterestPreferenceImpl(
      {final List<String> topicsOfInterest = const [], final String? $type})
      : _topicsOfInterest = topicsOfInterest,
        $type = $type ?? 'topicsOfInterest',
        super._();

  factory _$TopicsOfInterestPreferenceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TopicsOfInterestPreferenceImplFromJson(json);

  final List<String> _topicsOfInterest;
  @override
  @JsonKey()
  List<String> get topicsOfInterest {
    if (_topicsOfInterest is EqualUnmodifiableListView)
      return _topicsOfInterest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topicsOfInterest);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PreferenceSettingModel.topicsOfInterest(topicsOfInterest: $topicsOfInterest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicsOfInterestPreferenceImpl &&
            const DeepCollectionEquality()
                .equals(other._topicsOfInterest, _topicsOfInterest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_topicsOfInterest));

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicsOfInterestPreferenceImplCopyWith<_$TopicsOfInterestPreferenceImpl>
      get copyWith => __$$TopicsOfInterestPreferenceImplCopyWithImpl<
          _$TopicsOfInterestPreferenceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locationPreference) location,
    required TResult Function(List<String> insurances) insurance,
    required TResult Function(List<String> topicsOfInterest) topicsOfInterest,
    required TResult Function(String routeOfService, String typeOfService)
        serviceType,
    required TResult Function(List<String> cultures, List<String> faiths)
        cultureAndFaith,
    required TResult Function(
            List<String> genders, String therapistIdentifiesAs)
        genderAndSexuality,
    required TResult Function() empty,
  }) {
    return topicsOfInterest(this.topicsOfInterest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String locationPreference)? location,
    TResult? Function(List<String> insurances)? insurance,
    TResult? Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult? Function(String routeOfService, String typeOfService)? serviceType,
    TResult? Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult? Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult? Function()? empty,
  }) {
    return topicsOfInterest?.call(this.topicsOfInterest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locationPreference)? location,
    TResult Function(List<String> insurances)? insurance,
    TResult Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult Function(String routeOfService, String typeOfService)? serviceType,
    TResult Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (topicsOfInterest != null) {
      return topicsOfInterest(this.topicsOfInterest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationPreference value) location,
    required TResult Function(_InsurancePreferences value) insurance,
    required TResult Function(_TopicsOfInterestPreference value)
        topicsOfInterest,
    required TResult Function(_ServiceTypePreference value) serviceType,
    required TResult Function(_CultureAndFaithPreference value) cultureAndFaith,
    required TResult Function(_GenderAndSexualityPreference value)
        genderAndSexuality,
    required TResult Function(_Empty value) empty,
  }) {
    return topicsOfInterest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult? Function(_ServiceTypePreference value)? serviceType,
    TResult? Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult? Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult? Function(_Empty value)? empty,
  }) {
    return topicsOfInterest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult Function(_ServiceTypePreference value)? serviceType,
    TResult Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (topicsOfInterest != null) {
      return topicsOfInterest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicsOfInterestPreferenceImplToJson(
      this,
    );
  }
}

abstract class _TopicsOfInterestPreference extends PreferenceSettingModel {
  const factory _TopicsOfInterestPreference(
      {final List<String> topicsOfInterest}) = _$TopicsOfInterestPreferenceImpl;
  const _TopicsOfInterestPreference._() : super._();

  factory _TopicsOfInterestPreference.fromJson(Map<String, dynamic> json) =
      _$TopicsOfInterestPreferenceImpl.fromJson;

  List<String> get topicsOfInterest;

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicsOfInterestPreferenceImplCopyWith<_$TopicsOfInterestPreferenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceTypePreferenceImplCopyWith<$Res> {
  factory _$$ServiceTypePreferenceImplCopyWith(
          _$ServiceTypePreferenceImpl value,
          $Res Function(_$ServiceTypePreferenceImpl) then) =
      __$$ServiceTypePreferenceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String routeOfService, String typeOfService});
}

/// @nodoc
class __$$ServiceTypePreferenceImplCopyWithImpl<$Res>
    extends _$PreferenceSettingModelCopyWithImpl<$Res,
        _$ServiceTypePreferenceImpl>
    implements _$$ServiceTypePreferenceImplCopyWith<$Res> {
  __$$ServiceTypePreferenceImplCopyWithImpl(_$ServiceTypePreferenceImpl _value,
      $Res Function(_$ServiceTypePreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeOfService = null,
    Object? typeOfService = null,
  }) {
    return _then(_$ServiceTypePreferenceImpl(
      routeOfService: null == routeOfService
          ? _value.routeOfService
          : routeOfService // ignore: cast_nullable_to_non_nullable
              as String,
      typeOfService: null == typeOfService
          ? _value.typeOfService
          : typeOfService // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceTypePreferenceImpl extends _ServiceTypePreference {
  const _$ServiceTypePreferenceImpl(
      {this.routeOfService = '', this.typeOfService = '', final String? $type})
      : $type = $type ?? 'serviceType',
        super._();

  factory _$ServiceTypePreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceTypePreferenceImplFromJson(json);

  @override
  @JsonKey()
  final String routeOfService;
  @override
  @JsonKey()
  final String typeOfService;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PreferenceSettingModel.serviceType(routeOfService: $routeOfService, typeOfService: $typeOfService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceTypePreferenceImpl &&
            (identical(other.routeOfService, routeOfService) ||
                other.routeOfService == routeOfService) &&
            (identical(other.typeOfService, typeOfService) ||
                other.typeOfService == typeOfService));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routeOfService, typeOfService);

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceTypePreferenceImplCopyWith<_$ServiceTypePreferenceImpl>
      get copyWith => __$$ServiceTypePreferenceImplCopyWithImpl<
          _$ServiceTypePreferenceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locationPreference) location,
    required TResult Function(List<String> insurances) insurance,
    required TResult Function(List<String> topicsOfInterest) topicsOfInterest,
    required TResult Function(String routeOfService, String typeOfService)
        serviceType,
    required TResult Function(List<String> cultures, List<String> faiths)
        cultureAndFaith,
    required TResult Function(
            List<String> genders, String therapistIdentifiesAs)
        genderAndSexuality,
    required TResult Function() empty,
  }) {
    return serviceType(routeOfService, typeOfService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String locationPreference)? location,
    TResult? Function(List<String> insurances)? insurance,
    TResult? Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult? Function(String routeOfService, String typeOfService)? serviceType,
    TResult? Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult? Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult? Function()? empty,
  }) {
    return serviceType?.call(routeOfService, typeOfService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locationPreference)? location,
    TResult Function(List<String> insurances)? insurance,
    TResult Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult Function(String routeOfService, String typeOfService)? serviceType,
    TResult Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (serviceType != null) {
      return serviceType(routeOfService, typeOfService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationPreference value) location,
    required TResult Function(_InsurancePreferences value) insurance,
    required TResult Function(_TopicsOfInterestPreference value)
        topicsOfInterest,
    required TResult Function(_ServiceTypePreference value) serviceType,
    required TResult Function(_CultureAndFaithPreference value) cultureAndFaith,
    required TResult Function(_GenderAndSexualityPreference value)
        genderAndSexuality,
    required TResult Function(_Empty value) empty,
  }) {
    return serviceType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult? Function(_ServiceTypePreference value)? serviceType,
    TResult? Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult? Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult? Function(_Empty value)? empty,
  }) {
    return serviceType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult Function(_ServiceTypePreference value)? serviceType,
    TResult Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (serviceType != null) {
      return serviceType(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceTypePreferenceImplToJson(
      this,
    );
  }
}

abstract class _ServiceTypePreference extends PreferenceSettingModel {
  const factory _ServiceTypePreference(
      {final String routeOfService,
      final String typeOfService}) = _$ServiceTypePreferenceImpl;
  const _ServiceTypePreference._() : super._();

  factory _ServiceTypePreference.fromJson(Map<String, dynamic> json) =
      _$ServiceTypePreferenceImpl.fromJson;

  String get routeOfService;
  String get typeOfService;

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceTypePreferenceImplCopyWith<_$ServiceTypePreferenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CultureAndFaithPreferenceImplCopyWith<$Res> {
  factory _$$CultureAndFaithPreferenceImplCopyWith(
          _$CultureAndFaithPreferenceImpl value,
          $Res Function(_$CultureAndFaithPreferenceImpl) then) =
      __$$CultureAndFaithPreferenceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> cultures, List<String> faiths});
}

/// @nodoc
class __$$CultureAndFaithPreferenceImplCopyWithImpl<$Res>
    extends _$PreferenceSettingModelCopyWithImpl<$Res,
        _$CultureAndFaithPreferenceImpl>
    implements _$$CultureAndFaithPreferenceImplCopyWith<$Res> {
  __$$CultureAndFaithPreferenceImplCopyWithImpl(
      _$CultureAndFaithPreferenceImpl _value,
      $Res Function(_$CultureAndFaithPreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cultures = null,
    Object? faiths = null,
  }) {
    return _then(_$CultureAndFaithPreferenceImpl(
      cultures: null == cultures
          ? _value._cultures
          : cultures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      faiths: null == faiths
          ? _value._faiths
          : faiths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CultureAndFaithPreferenceImpl extends _CultureAndFaithPreference {
  const _$CultureAndFaithPreferenceImpl(
      {final List<String> cultures = const [],
      final List<String> faiths = const [],
      final String? $type})
      : _cultures = cultures,
        _faiths = faiths,
        $type = $type ?? 'cultureAndFaith',
        super._();

  factory _$CultureAndFaithPreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CultureAndFaithPreferenceImplFromJson(json);

  final List<String> _cultures;
  @override
  @JsonKey()
  List<String> get cultures {
    if (_cultures is EqualUnmodifiableListView) return _cultures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cultures);
  }

  final List<String> _faiths;
  @override
  @JsonKey()
  List<String> get faiths {
    if (_faiths is EqualUnmodifiableListView) return _faiths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faiths);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PreferenceSettingModel.cultureAndFaith(cultures: $cultures, faiths: $faiths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CultureAndFaithPreferenceImpl &&
            const DeepCollectionEquality().equals(other._cultures, _cultures) &&
            const DeepCollectionEquality().equals(other._faiths, _faiths));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cultures),
      const DeepCollectionEquality().hash(_faiths));

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CultureAndFaithPreferenceImplCopyWith<_$CultureAndFaithPreferenceImpl>
      get copyWith => __$$CultureAndFaithPreferenceImplCopyWithImpl<
          _$CultureAndFaithPreferenceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locationPreference) location,
    required TResult Function(List<String> insurances) insurance,
    required TResult Function(List<String> topicsOfInterest) topicsOfInterest,
    required TResult Function(String routeOfService, String typeOfService)
        serviceType,
    required TResult Function(List<String> cultures, List<String> faiths)
        cultureAndFaith,
    required TResult Function(
            List<String> genders, String therapistIdentifiesAs)
        genderAndSexuality,
    required TResult Function() empty,
  }) {
    return cultureAndFaith(cultures, faiths);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String locationPreference)? location,
    TResult? Function(List<String> insurances)? insurance,
    TResult? Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult? Function(String routeOfService, String typeOfService)? serviceType,
    TResult? Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult? Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult? Function()? empty,
  }) {
    return cultureAndFaith?.call(cultures, faiths);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locationPreference)? location,
    TResult Function(List<String> insurances)? insurance,
    TResult Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult Function(String routeOfService, String typeOfService)? serviceType,
    TResult Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (cultureAndFaith != null) {
      return cultureAndFaith(cultures, faiths);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationPreference value) location,
    required TResult Function(_InsurancePreferences value) insurance,
    required TResult Function(_TopicsOfInterestPreference value)
        topicsOfInterest,
    required TResult Function(_ServiceTypePreference value) serviceType,
    required TResult Function(_CultureAndFaithPreference value) cultureAndFaith,
    required TResult Function(_GenderAndSexualityPreference value)
        genderAndSexuality,
    required TResult Function(_Empty value) empty,
  }) {
    return cultureAndFaith(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult? Function(_ServiceTypePreference value)? serviceType,
    TResult? Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult? Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult? Function(_Empty value)? empty,
  }) {
    return cultureAndFaith?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult Function(_ServiceTypePreference value)? serviceType,
    TResult Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (cultureAndFaith != null) {
      return cultureAndFaith(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CultureAndFaithPreferenceImplToJson(
      this,
    );
  }
}

abstract class _CultureAndFaithPreference extends PreferenceSettingModel {
  const factory _CultureAndFaithPreference(
      {final List<String> cultures,
      final List<String> faiths}) = _$CultureAndFaithPreferenceImpl;
  const _CultureAndFaithPreference._() : super._();

  factory _CultureAndFaithPreference.fromJson(Map<String, dynamic> json) =
      _$CultureAndFaithPreferenceImpl.fromJson;

  List<String> get cultures;
  List<String> get faiths;

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CultureAndFaithPreferenceImplCopyWith<_$CultureAndFaithPreferenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderAndSexualityPreferenceImplCopyWith<$Res> {
  factory _$$GenderAndSexualityPreferenceImplCopyWith(
          _$GenderAndSexualityPreferenceImpl value,
          $Res Function(_$GenderAndSexualityPreferenceImpl) then) =
      __$$GenderAndSexualityPreferenceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> genders, String therapistIdentifiesAs});
}

/// @nodoc
class __$$GenderAndSexualityPreferenceImplCopyWithImpl<$Res>
    extends _$PreferenceSettingModelCopyWithImpl<$Res,
        _$GenderAndSexualityPreferenceImpl>
    implements _$$GenderAndSexualityPreferenceImplCopyWith<$Res> {
  __$$GenderAndSexualityPreferenceImplCopyWithImpl(
      _$GenderAndSexualityPreferenceImpl _value,
      $Res Function(_$GenderAndSexualityPreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genders = null,
    Object? therapistIdentifiesAs = null,
  }) {
    return _then(_$GenderAndSexualityPreferenceImpl(
      genders: null == genders
          ? _value._genders
          : genders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      therapistIdentifiesAs: null == therapistIdentifiesAs
          ? _value.therapistIdentifiesAs
          : therapistIdentifiesAs // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenderAndSexualityPreferenceImpl extends _GenderAndSexualityPreference {
  const _$GenderAndSexualityPreferenceImpl(
      {final List<String> genders = const [],
      this.therapistIdentifiesAs = '',
      final String? $type})
      : _genders = genders,
        $type = $type ?? 'genderAndSexuality',
        super._();

  factory _$GenderAndSexualityPreferenceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GenderAndSexualityPreferenceImplFromJson(json);

  final List<String> _genders;
  @override
  @JsonKey()
  List<String> get genders {
    if (_genders is EqualUnmodifiableListView) return _genders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genders);
  }

  @override
  @JsonKey()
  final String therapistIdentifiesAs;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PreferenceSettingModel.genderAndSexuality(genders: $genders, therapistIdentifiesAs: $therapistIdentifiesAs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderAndSexualityPreferenceImpl &&
            const DeepCollectionEquality().equals(other._genders, _genders) &&
            (identical(other.therapistIdentifiesAs, therapistIdentifiesAs) ||
                other.therapistIdentifiesAs == therapistIdentifiesAs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_genders), therapistIdentifiesAs);

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderAndSexualityPreferenceImplCopyWith<
          _$GenderAndSexualityPreferenceImpl>
      get copyWith => __$$GenderAndSexualityPreferenceImplCopyWithImpl<
          _$GenderAndSexualityPreferenceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locationPreference) location,
    required TResult Function(List<String> insurances) insurance,
    required TResult Function(List<String> topicsOfInterest) topicsOfInterest,
    required TResult Function(String routeOfService, String typeOfService)
        serviceType,
    required TResult Function(List<String> cultures, List<String> faiths)
        cultureAndFaith,
    required TResult Function(
            List<String> genders, String therapistIdentifiesAs)
        genderAndSexuality,
    required TResult Function() empty,
  }) {
    return genderAndSexuality(genders, therapistIdentifiesAs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String locationPreference)? location,
    TResult? Function(List<String> insurances)? insurance,
    TResult? Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult? Function(String routeOfService, String typeOfService)? serviceType,
    TResult? Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult? Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult? Function()? empty,
  }) {
    return genderAndSexuality?.call(genders, therapistIdentifiesAs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locationPreference)? location,
    TResult Function(List<String> insurances)? insurance,
    TResult Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult Function(String routeOfService, String typeOfService)? serviceType,
    TResult Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (genderAndSexuality != null) {
      return genderAndSexuality(genders, therapistIdentifiesAs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationPreference value) location,
    required TResult Function(_InsurancePreferences value) insurance,
    required TResult Function(_TopicsOfInterestPreference value)
        topicsOfInterest,
    required TResult Function(_ServiceTypePreference value) serviceType,
    required TResult Function(_CultureAndFaithPreference value) cultureAndFaith,
    required TResult Function(_GenderAndSexualityPreference value)
        genderAndSexuality,
    required TResult Function(_Empty value) empty,
  }) {
    return genderAndSexuality(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult? Function(_ServiceTypePreference value)? serviceType,
    TResult? Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult? Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult? Function(_Empty value)? empty,
  }) {
    return genderAndSexuality?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult Function(_ServiceTypePreference value)? serviceType,
    TResult Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (genderAndSexuality != null) {
      return genderAndSexuality(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GenderAndSexualityPreferenceImplToJson(
      this,
    );
  }
}

abstract class _GenderAndSexualityPreference extends PreferenceSettingModel {
  const factory _GenderAndSexualityPreference(
      {final List<String> genders,
      final String therapistIdentifiesAs}) = _$GenderAndSexualityPreferenceImpl;
  const _GenderAndSexualityPreference._() : super._();

  factory _GenderAndSexualityPreference.fromJson(Map<String, dynamic> json) =
      _$GenderAndSexualityPreferenceImpl.fromJson;

  List<String> get genders;
  String get therapistIdentifiesAs;

  /// Create a copy of PreferenceSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenderAndSexualityPreferenceImplCopyWith<
          _$GenderAndSexualityPreferenceImpl>
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
    required TResult Function(String locationPreference) location,
    required TResult Function(List<String> insurances) insurance,
    required TResult Function(List<String> topicsOfInterest) topicsOfInterest,
    required TResult Function(String routeOfService, String typeOfService)
        serviceType,
    required TResult Function(List<String> cultures, List<String> faiths)
        cultureAndFaith,
    required TResult Function(
            List<String> genders, String therapistIdentifiesAs)
        genderAndSexuality,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String locationPreference)? location,
    TResult? Function(List<String> insurances)? insurance,
    TResult? Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult? Function(String routeOfService, String typeOfService)? serviceType,
    TResult? Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult? Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locationPreference)? location,
    TResult Function(List<String> insurances)? insurance,
    TResult Function(List<String> topicsOfInterest)? topicsOfInterest,
    TResult Function(String routeOfService, String typeOfService)? serviceType,
    TResult Function(List<String> cultures, List<String> faiths)?
        cultureAndFaith,
    TResult Function(List<String> genders, String therapistIdentifiesAs)?
        genderAndSexuality,
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
    required TResult Function(_TopicsOfInterestPreference value)
        topicsOfInterest,
    required TResult Function(_ServiceTypePreference value) serviceType,
    required TResult Function(_CultureAndFaithPreference value) cultureAndFaith,
    required TResult Function(_GenderAndSexualityPreference value)
        genderAndSexuality,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationPreference value)? location,
    TResult? Function(_InsurancePreferences value)? insurance,
    TResult? Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult? Function(_ServiceTypePreference value)? serviceType,
    TResult? Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult? Function(_GenderAndSexualityPreference value)? genderAndSexuality,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationPreference value)? location,
    TResult Function(_InsurancePreferences value)? insurance,
    TResult Function(_TopicsOfInterestPreference value)? topicsOfInterest,
    TResult Function(_ServiceTypePreference value)? serviceType,
    TResult Function(_CultureAndFaithPreference value)? cultureAndFaith,
    TResult Function(_GenderAndSexualityPreference value)? genderAndSexuality,
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

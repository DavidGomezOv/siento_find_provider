// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preference_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreferenceItemModel {
  int get preferenceIntType => throw _privateConstructorUsedError;
  PreferenceSettingModel get mappedSettings =>
      throw _privateConstructorUsedError;

  /// Create a copy of PreferenceItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferenceItemModelCopyWith<PreferenceItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceItemModelCopyWith<$Res> {
  factory $PreferenceItemModelCopyWith(
          PreferenceItemModel value, $Res Function(PreferenceItemModel) then) =
      _$PreferenceItemModelCopyWithImpl<$Res, PreferenceItemModel>;
  @useResult
  $Res call({int preferenceIntType, PreferenceSettingModel mappedSettings});

  $PreferenceSettingModelCopyWith<$Res> get mappedSettings;
}

/// @nodoc
class _$PreferenceItemModelCopyWithImpl<$Res, $Val extends PreferenceItemModel>
    implements $PreferenceItemModelCopyWith<$Res> {
  _$PreferenceItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferenceItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferenceIntType = null,
    Object? mappedSettings = null,
  }) {
    return _then(_value.copyWith(
      preferenceIntType: null == preferenceIntType
          ? _value.preferenceIntType
          : preferenceIntType // ignore: cast_nullable_to_non_nullable
              as int,
      mappedSettings: null == mappedSettings
          ? _value.mappedSettings
          : mappedSettings // ignore: cast_nullable_to_non_nullable
              as PreferenceSettingModel,
    ) as $Val);
  }

  /// Create a copy of PreferenceItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreferenceSettingModelCopyWith<$Res> get mappedSettings {
    return $PreferenceSettingModelCopyWith<$Res>(_value.mappedSettings,
        (value) {
      return _then(_value.copyWith(mappedSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreferenceItemModelImplCopyWith<$Res>
    implements $PreferenceItemModelCopyWith<$Res> {
  factory _$$PreferenceItemModelImplCopyWith(_$PreferenceItemModelImpl value,
          $Res Function(_$PreferenceItemModelImpl) then) =
      __$$PreferenceItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int preferenceIntType, PreferenceSettingModel mappedSettings});

  @override
  $PreferenceSettingModelCopyWith<$Res> get mappedSettings;
}

/// @nodoc
class __$$PreferenceItemModelImplCopyWithImpl<$Res>
    extends _$PreferenceItemModelCopyWithImpl<$Res, _$PreferenceItemModelImpl>
    implements _$$PreferenceItemModelImplCopyWith<$Res> {
  __$$PreferenceItemModelImplCopyWithImpl(_$PreferenceItemModelImpl _value,
      $Res Function(_$PreferenceItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferenceItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferenceIntType = null,
    Object? mappedSettings = null,
  }) {
    return _then(_$PreferenceItemModelImpl(
      preferenceIntType: null == preferenceIntType
          ? _value.preferenceIntType
          : preferenceIntType // ignore: cast_nullable_to_non_nullable
              as int,
      mappedSettings: null == mappedSettings
          ? _value.mappedSettings
          : mappedSettings // ignore: cast_nullable_to_non_nullable
              as PreferenceSettingModel,
    ));
  }
}

/// @nodoc

class _$PreferenceItemModelImpl extends _PreferenceItemModel {
  const _$PreferenceItemModelImpl(
      {required this.preferenceIntType,
      this.mappedSettings = const PreferenceSettingModel.empty()})
      : super._();

  @override
  final int preferenceIntType;
  @override
  @JsonKey()
  final PreferenceSettingModel mappedSettings;

  @override
  String toString() {
    return 'PreferenceItemModel(preferenceIntType: $preferenceIntType, mappedSettings: $mappedSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceItemModelImpl &&
            (identical(other.preferenceIntType, preferenceIntType) ||
                other.preferenceIntType == preferenceIntType) &&
            (identical(other.mappedSettings, mappedSettings) ||
                other.mappedSettings == mappedSettings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, preferenceIntType, mappedSettings);

  /// Create a copy of PreferenceItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceItemModelImplCopyWith<_$PreferenceItemModelImpl> get copyWith =>
      __$$PreferenceItemModelImplCopyWithImpl<_$PreferenceItemModelImpl>(
          this, _$identity);
}

abstract class _PreferenceItemModel extends PreferenceItemModel {
  const factory _PreferenceItemModel(
      {required final int preferenceIntType,
      final PreferenceSettingModel mappedSettings}) = _$PreferenceItemModelImpl;
  const _PreferenceItemModel._() : super._();

  @override
  int get preferenceIntType;
  @override
  PreferenceSettingModel get mappedSettings;

  /// Create a copy of PreferenceItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferenceItemModelImplCopyWith<_$PreferenceItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

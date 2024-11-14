// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider_client_focus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProviderClientFocusModel _$ProviderClientFocusModelFromJson(
    Map<String, dynamic> json) {
  return _ProviderClientFocusModel.fromJson(json);
}

/// @nodoc
mixin _$ProviderClientFocusModel {
  String get ages => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  List<String> get communities => throw _privateConstructorUsedError;

  /// Serializes this ProviderClientFocusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProviderClientFocusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProviderClientFocusModelCopyWith<ProviderClientFocusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderClientFocusModelCopyWith<$Res> {
  factory $ProviderClientFocusModelCopyWith(ProviderClientFocusModel value,
          $Res Function(ProviderClientFocusModel) then) =
      _$ProviderClientFocusModelCopyWithImpl<$Res, ProviderClientFocusModel>;
  @useResult
  $Res call({String ages, List<String> participants, List<String> communities});
}

/// @nodoc
class _$ProviderClientFocusModelCopyWithImpl<$Res,
        $Val extends ProviderClientFocusModel>
    implements $ProviderClientFocusModelCopyWith<$Res> {
  _$ProviderClientFocusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProviderClientFocusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ages = null,
    Object? participants = null,
    Object? communities = null,
  }) {
    return _then(_value.copyWith(
      ages: null == ages
          ? _value.ages
          : ages // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      communities: null == communities
          ? _value.communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProviderClientFocusModelImplCopyWith<$Res>
    implements $ProviderClientFocusModelCopyWith<$Res> {
  factory _$$ProviderClientFocusModelImplCopyWith(
          _$ProviderClientFocusModelImpl value,
          $Res Function(_$ProviderClientFocusModelImpl) then) =
      __$$ProviderClientFocusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ages, List<String> participants, List<String> communities});
}

/// @nodoc
class __$$ProviderClientFocusModelImplCopyWithImpl<$Res>
    extends _$ProviderClientFocusModelCopyWithImpl<$Res,
        _$ProviderClientFocusModelImpl>
    implements _$$ProviderClientFocusModelImplCopyWith<$Res> {
  __$$ProviderClientFocusModelImplCopyWithImpl(
      _$ProviderClientFocusModelImpl _value,
      $Res Function(_$ProviderClientFocusModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProviderClientFocusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ages = null,
    Object? participants = null,
    Object? communities = null,
  }) {
    return _then(_$ProviderClientFocusModelImpl(
      ages: null == ages
          ? _value.ages
          : ages // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      communities: null == communities
          ? _value._communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProviderClientFocusModelImpl extends _ProviderClientFocusModel {
  const _$ProviderClientFocusModelImpl(
      {this.ages = '',
      final List<String> participants = const [],
      final List<String> communities = const []})
      : _participants = participants,
        _communities = communities,
        super._();

  factory _$ProviderClientFocusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProviderClientFocusModelImplFromJson(json);

  @override
  @JsonKey()
  final String ages;
  final List<String> _participants;
  @override
  @JsonKey()
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<String> _communities;
  @override
  @JsonKey()
  List<String> get communities {
    if (_communities is EqualUnmodifiableListView) return _communities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_communities);
  }

  @override
  String toString() {
    return 'ProviderClientFocusModel(ages: $ages, participants: $participants, communities: $communities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderClientFocusModelImpl &&
            (identical(other.ages, ages) || other.ages == ages) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality()
                .equals(other._communities, _communities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ages,
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_communities));

  /// Create a copy of ProviderClientFocusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderClientFocusModelImplCopyWith<_$ProviderClientFocusModelImpl>
      get copyWith => __$$ProviderClientFocusModelImplCopyWithImpl<
          _$ProviderClientFocusModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProviderClientFocusModelImplToJson(
      this,
    );
  }
}

abstract class _ProviderClientFocusModel extends ProviderClientFocusModel {
  const factory _ProviderClientFocusModel(
      {final String ages,
      final List<String> participants,
      final List<String> communities}) = _$ProviderClientFocusModelImpl;
  const _ProviderClientFocusModel._() : super._();

  factory _ProviderClientFocusModel.fromJson(Map<String, dynamic> json) =
      _$ProviderClientFocusModelImpl.fromJson;

  @override
  String get ages;
  @override
  List<String> get participants;
  @override
  List<String> get communities;

  /// Create a copy of ProviderClientFocusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProviderClientFocusModelImplCopyWith<_$ProviderClientFocusModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_therapist_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FindTherapistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)
        loaded,
    required TResult Function(String errorMessage) failedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)?
        loaded,
    TResult? Function(String errorMessage)? failedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)?
        loaded,
    TResult Function(String errorMessage)? failedToLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailedToLoadState value) failedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailedToLoadState value)? failedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailedToLoadState value)? failedToLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindTherapistStateCopyWith<$Res> {
  factory $FindTherapistStateCopyWith(
          FindTherapistState value, $Res Function(FindTherapistState) then) =
      _$FindTherapistStateCopyWithImpl<$Res, FindTherapistState>;
}

/// @nodoc
class _$FindTherapistStateCopyWithImpl<$Res, $Val extends FindTherapistState>
    implements $FindTherapistStateCopyWith<$Res> {
  _$FindTherapistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FindTherapistState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$FindTherapistStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FindTherapistState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'FindTherapistState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)
        loaded,
    required TResult Function(String errorMessage) failedToLoad,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)?
        loaded,
    TResult? Function(String errorMessage)? failedToLoad,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)?
        loaded,
    TResult Function(String errorMessage)? failedToLoad,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailedToLoadState value) failedToLoad,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailedToLoadState value)? failedToLoad,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailedToLoadState value)? failedToLoad,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements FindTherapistState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TherapistModel> therapists,
      List<TherapistModel> filteredList,
      TherapistType selectedFilter});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$FindTherapistStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FindTherapistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? therapists = null,
    Object? filteredList = null,
    Object? selectedFilter = null,
  }) {
    return _then(_$LoadedStateImpl(
      therapists: null == therapists
          ? _value._therapists
          : therapists // ignore: cast_nullable_to_non_nullable
              as List<TherapistModel>,
      filteredList: null == filteredList
          ? _value._filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<TherapistModel>,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as TherapistType,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements _LoadedState {
  const _$LoadedStateImpl(
      {required final List<TherapistModel> therapists,
      required final List<TherapistModel> filteredList,
      this.selectedFilter = TherapistType.all})
      : _therapists = therapists,
        _filteredList = filteredList;

  final List<TherapistModel> _therapists;
  @override
  List<TherapistModel> get therapists {
    if (_therapists is EqualUnmodifiableListView) return _therapists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_therapists);
  }

  final List<TherapistModel> _filteredList;
  @override
  List<TherapistModel> get filteredList {
    if (_filteredList is EqualUnmodifiableListView) return _filteredList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredList);
  }

  @override
  @JsonKey()
  final TherapistType selectedFilter;

  @override
  String toString() {
    return 'FindTherapistState.loaded(therapists: $therapists, filteredList: $filteredList, selectedFilter: $selectedFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._therapists, _therapists) &&
            const DeepCollectionEquality()
                .equals(other._filteredList, _filteredList) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_therapists),
      const DeepCollectionEquality().hash(_filteredList),
      selectedFilter);

  /// Create a copy of FindTherapistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)
        loaded,
    required TResult Function(String errorMessage) failedToLoad,
  }) {
    return loaded(therapists, filteredList, selectedFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)?
        loaded,
    TResult? Function(String errorMessage)? failedToLoad,
  }) {
    return loaded?.call(therapists, filteredList, selectedFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)?
        loaded,
    TResult Function(String errorMessage)? failedToLoad,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(therapists, filteredList, selectedFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailedToLoadState value) failedToLoad,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailedToLoadState value)? failedToLoad,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailedToLoadState value)? failedToLoad,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements FindTherapistState {
  const factory _LoadedState(
      {required final List<TherapistModel> therapists,
      required final List<TherapistModel> filteredList,
      final TherapistType selectedFilter}) = _$LoadedStateImpl;

  List<TherapistModel> get therapists;
  List<TherapistModel> get filteredList;
  TherapistType get selectedFilter;

  /// Create a copy of FindTherapistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToLoadStateImplCopyWith<$Res> {
  factory _$$FailedToLoadStateImplCopyWith(_$FailedToLoadStateImpl value,
          $Res Function(_$FailedToLoadStateImpl) then) =
      __$$FailedToLoadStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailedToLoadStateImplCopyWithImpl<$Res>
    extends _$FindTherapistStateCopyWithImpl<$Res, _$FailedToLoadStateImpl>
    implements _$$FailedToLoadStateImplCopyWith<$Res> {
  __$$FailedToLoadStateImplCopyWithImpl(_$FailedToLoadStateImpl _value,
      $Res Function(_$FailedToLoadStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FindTherapistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailedToLoadStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedToLoadStateImpl implements _FailedToLoadState {
  const _$FailedToLoadStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'FindTherapistState.failedToLoad(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToLoadStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of FindTherapistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToLoadStateImplCopyWith<_$FailedToLoadStateImpl> get copyWith =>
      __$$FailedToLoadStateImplCopyWithImpl<_$FailedToLoadStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)
        loaded,
    required TResult Function(String errorMessage) failedToLoad,
  }) {
    return failedToLoad(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)?
        loaded,
    TResult? Function(String errorMessage)? failedToLoad,
  }) {
    return failedToLoad?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TherapistModel> therapists,
            List<TherapistModel> filteredList, TherapistType selectedFilter)?
        loaded,
    TResult Function(String errorMessage)? failedToLoad,
    required TResult orElse(),
  }) {
    if (failedToLoad != null) {
      return failedToLoad(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailedToLoadState value) failedToLoad,
  }) {
    return failedToLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailedToLoadState value)? failedToLoad,
  }) {
    return failedToLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailedToLoadState value)? failedToLoad,
    required TResult orElse(),
  }) {
    if (failedToLoad != null) {
      return failedToLoad(this);
    }
    return orElse();
  }
}

abstract class _FailedToLoadState implements FindTherapistState {
  const factory _FailedToLoadState({required final String errorMessage}) =
      _$FailedToLoadStateImpl;

  String get errorMessage;

  /// Create a copy of FindTherapistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToLoadStateImplCopyWith<_$FailedToLoadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

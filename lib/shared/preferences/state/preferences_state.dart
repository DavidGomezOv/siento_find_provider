part of 'preferences_notifier.dart';

@freezed
class PreferencesState with _$PreferencesState {
  const factory PreferencesState.loading() = _LoadingState;

  const factory PreferencesState.loaded({
    required PreferenceModel preferences,
  }) = _LoadedState;

  const factory PreferencesState.failedToLoad({
    required String errorMessage,
  }) = _FailedToLoadState;
}

part of 'find_therapist_notifier.dart';

@freezed
class FindTherapistState with _$FindTherapistState {
  const factory FindTherapistState.loading() = _LoadingState;

  const factory FindTherapistState.loaded({
    required List<TherapistModel> therapists,
    required List<TherapistModel> filteredList,
    @Default(TherapistType.all) TherapistType selectedFilter,
  }) = _LoadedState;

  const factory FindTherapistState.failedToLoad({
    required String errorMessage,
  }) = _FailedToLoadState;
}

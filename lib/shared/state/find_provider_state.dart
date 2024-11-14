part of 'find_provider_notifier.dart';

@freezed
class FindProviderState with _$FindProviderState {
  const factory FindProviderState.loading() = _LoadingState;

  const factory FindProviderState.loaded({
    required List<ProviderModel> providers,
  }) = _LoadedState;

  const factory FindProviderState.failedToLoad({
    required String errorMessage,
  }) = _FailedToLoadState;
}

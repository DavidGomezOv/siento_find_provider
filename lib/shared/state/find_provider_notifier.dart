import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_provider/core/enums.dart';
import 'package:siento_find_provider/domain/models/provider_model.dart';
import 'package:siento_find_provider/domain/use_cases/find_provider_use_cases.dart';

part 'find_provider_state.dart';

part 'find_provider_notifier.freezed.dart';

class FindProviderNotifier extends StateNotifier<FindProviderState> {
  final GetProvidersUseCase getProvidersUseCase;

  FindProviderNotifier({
    required this.getProvidersUseCase,
  }) : super(const FindProviderState.loading());

  Future<void> getProvidersList() async {
    state = const FindProviderState.loading();

    final response = await getProvidersUseCase.call();

    response.when(
      success: (data) => state = FindProviderState.loaded(
        providers: data,
        filteredList: data,
      ),
      failure: (error) => state = FindProviderState.failedToLoad(errorMessage: error.toString()),
    );
  }

  Future<void> filterListByTypes({required ProviderType filterType}) async {
    state = FindProviderState.loaded(
      providers: state.maybeWhen(
        loaded: (providers, _, __) => providers,
        orElse: () => [],
      ),
      filteredList: state.maybeWhen(
        loaded: (providers, _, __) {
          if (filterType == ProviderType.all) return providers;
          return providers
              .where(
                (element) => element.providerType == filterType,
              )
              .toList();
        },
        orElse: () => [],
      ),
      selectedFilter: filterType,
    );
  }
}

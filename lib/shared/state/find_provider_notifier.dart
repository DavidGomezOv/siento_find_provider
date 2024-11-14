import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_provider/domain/models/provider_model.dart';
import 'package:siento_find_provider/domain/use_cases/find_provider_use_cases.dart';

part 'find_provider_state.dart';

part 'find_provider_notifier.freezed.dart';

enum ProvidersTypes {
  therapy,
  groups,
  psychiatry,
  inpatient,
  all;

  String getName() => "${name[0].toUpperCase()}${name.substring(1).toLowerCase()}";
}

class FindProviderNotifier extends StateNotifier<FindProviderState> {
  final GetProvidersUseCase getProvidersUseCase;

  FindProviderNotifier({required this.getProvidersUseCase})
      : super(const FindProviderState.loading());

  Future<void> getProvidersList() async {
    state = const FindProviderState.loading();

    final response = await getProvidersUseCase.call();

    response.when(
      success: (data) {
        return state = FindProviderState.loaded(providers: data);
      },
      failure: (error) => state = FindProviderState.failedToLoad(errorMessage: error.toString()),
    );
  }
}

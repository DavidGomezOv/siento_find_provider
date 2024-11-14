import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_provider/data/data_sources/find_provider_datasource.dart';
import 'package:siento_find_provider/data/repositories/find_provider_repository_impl.dart';
import 'package:siento_find_provider/domain/repositories/find_provider_repository.dart';
import 'package:siento_find_provider/domain/use_cases/find_provider_use_cases.dart';
import 'package:siento_find_provider/shared/providers/state/find_provider_notifier.dart';

final providersRepositoryProvider = Provider<FindProviderRepository>(
  (ref) => FindProviderRepositoryImpl(
    findProviderDatasource: FindProviderDatasource(),
  ),
);

final getProvidersUseCaseProvider = Provider<GetProvidersUseCase>(
  (ref) {
    final repository = ref.watch(providersRepositoryProvider);
    return GetProvidersUseCase(findProviderRepository: repository);
  },
);

final findProviderNotifierProvider =
    AutoDisposeStateNotifierProvider<FindProviderNotifier, FindProviderState>(
  (ref) {
    final useCase = ref.watch(getProvidersUseCaseProvider);
    return FindProviderNotifier(getProvidersUseCase: useCase);
  },
);

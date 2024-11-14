import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_provider/data/data_sources/preferences_datasource.dart';
import 'package:siento_find_provider/data/repositories/preferences_repository_impl.dart';
import 'package:siento_find_provider/domain/repositories/preferences_repository.dart';
import 'package:siento_find_provider/domain/use_cases/preferences_use_cases.dart';
import 'package:siento_find_provider/shared/preferences/state/preferences_notifier.dart';

final preferencesRepositoryProvider = Provider<PreferencesRepository>(
  (ref) => PreferencesRepositoryImpl(
    preferencesDatasource: PreferencesDatasource(),
  ),
);

final getAllPreferencesUseCaseProvider = Provider<GetAllPreferencesUseCase>(
  (ref) {
    final repository = ref.watch(preferencesRepositoryProvider);
    return GetAllPreferencesUseCase(preferencesRepository: repository);
  },
);
final updatePreferencesUseCaseProvider = Provider<UpdatePreferenceUseCase>(
  (ref) {
    final repository = ref.watch(preferencesRepositoryProvider);
    return UpdatePreferenceUseCase(preferencesRepository: repository);
  },
);

final preferencesNotifierProvider =
    AutoDisposeStateNotifierProvider<PreferencesNotifier, PreferencesState>(
  (ref) {
    final getAllPreferencesUseCase = ref.watch(getAllPreferencesUseCaseProvider);
    final updatePreferencesUseCase = ref.watch(updatePreferencesUseCaseProvider);
    return PreferencesNotifier(
      getAllPreferencesUseCase: getAllPreferencesUseCase,
      updatePreferenceUseCase: updatePreferencesUseCase,
    );
  },
);

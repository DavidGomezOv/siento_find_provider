import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_model.dart';
import 'package:siento_find_provider/domain/use_cases/preferences_use_cases.dart';

part 'preferences_state.dart';

part 'preferences_notifier.freezed.dart';

class PreferencesNotifier extends StateNotifier<PreferencesState> {
  final GetAllPreferencesUseCase getAllPreferencesUseCase;
  final UpdatePreferenceUseCase updatePreferenceUseCase;

  PreferencesNotifier({
    required this.getAllPreferencesUseCase,
    required this.updatePreferenceUseCase,
  }) : super(const PreferencesState.loading());

  Future<void> getAllPreferences() async {
    state = const PreferencesState.loading();

    final response = await getAllPreferencesUseCase.call(userId: '2');

    response.when(
      success: (data) => state = PreferencesState.loaded(preferences: data),
      failure: (error) => state = PreferencesState.failedToLoad(errorMessage: error.toString()),
    );
  }

  Future<void> savePreferences({required PreferenceModel updatedPreferencesModel}) async {
    state = const PreferencesState.loading();

    final response = await updatePreferenceUseCase.call(preferenceModel: updatedPreferencesModel);

    response.when(
      success: (data) => state = PreferencesState.loaded(preferences: updatedPreferencesModel),
      failure: (error) => state = PreferencesState.failedToLoad(errorMessage: error.toString()),
    );
  }
}

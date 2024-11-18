import 'package:siento_find_provider/core/result.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_model.dart';
import 'package:siento_find_provider/domain/repositories/preferences_repository.dart';

class GetAllPreferencesUseCase {
  final PreferencesRepository preferencesRepository;

  GetAllPreferencesUseCase({required this.preferencesRepository});

  Future<Result<PreferenceModel>> call({required String userId}) =>
      preferencesRepository.getAllPreferences(
        userId: userId,
      );
}

class UpdatePreferenceUseCase {
  final PreferencesRepository preferencesRepository;

  UpdatePreferenceUseCase({required this.preferencesRepository});

  Future<Result<bool>> call({required PreferenceModel preferenceModel}) =>
      preferencesRepository.savePreference(
        preferenceModel: preferenceModel,
      );
}
import 'package:siento_find_provider/core/result.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_model.dart';

abstract class PreferencesRepository {
  Future<Result<PreferenceModel>> getAllPreferences({required String userId});

  Future<Result<bool>> savePreference({required PreferenceModel preferenceModel});
}

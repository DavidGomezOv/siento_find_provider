import 'package:siento_find_provider/core/result.dart';
import 'package:siento_find_provider/data/data_sources/preferences_datasource.dart';
import 'package:siento_find_provider/data/repository_error_handler.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_model.dart';
import 'package:siento_find_provider/domain/repositories/preferences_repository.dart';

class PreferencesRepositoryImpl with RepositoryErrorHandler implements PreferencesRepository {
  final PreferencesDatasource preferencesDatasource;

  PreferencesRepositoryImpl({required this.preferencesDatasource});

  @override
  Future<Result<PreferenceModel>> getAllPreferences({required String userId}) => captureExceptions(
        () async {
          return await preferencesDatasource.getAllPreferences(userId: userId);
        },
      );

  @override
  Future<Result<bool>> savePreference({required PreferenceModel preferenceModel}) =>
      captureExceptions(
        () async {
          return await preferencesDatasource.savePreference(preferenceModel: preferenceModel);
        },
      );
}

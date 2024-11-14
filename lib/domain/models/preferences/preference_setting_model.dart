import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_provider/core/enums.dart';

part 'preference_setting_model.freezed.dart';

part 'preference_setting_model.g.dart';

@freezed
class PreferenceSettingModel with _$PreferenceSettingModel {
  const PreferenceSettingModel._();

  const factory PreferenceSettingModel.location({
    LocationPreference? locationPreference,
  }) = _LocationPreference;

  const factory PreferenceSettingModel.insurance({
    List<String>? insurances,
  }) = _InsurancePreferences;

  const factory PreferenceSettingModel.empty() = _Empty;

  factory PreferenceSettingModel.fromJson(Map<String, dynamic> json) =>
      _$PreferenceSettingModelFromJson(json);

  factory PreferenceSettingModel.fromJsonWithPreferenceType(
    int preferenceIntType,
    Map<String, dynamic> settingsJson,
  ) {
    final preferenceType =
        PreferenceType.values.firstWhereOrNull((element) => element.intValue == preferenceIntType);
    if (preferenceType == null) const PreferenceSettingModel.empty();
    final json = Map<String, dynamic>.from(settingsJson);
    json['runtimeType'] = preferenceType!.name;
    return PreferenceSettingModel.fromJson(json);
  }
}

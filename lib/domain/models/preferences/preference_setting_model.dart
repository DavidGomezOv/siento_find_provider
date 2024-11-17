import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_provider/core/enums.dart';

part 'preference_setting_model.freezed.dart';

part 'preference_setting_model.g.dart';

@freezed
class PreferenceSettingModel with _$PreferenceSettingModel {
  const PreferenceSettingModel._();

  const factory PreferenceSettingModel.location({
    @Default('') String locationPreference,
  }) = _LocationPreference;

  const factory PreferenceSettingModel.insurance({
    @Default([]) List<String> insurances,
  }) = _InsurancePreferences;

  const factory PreferenceSettingModel.topicsOfInterest({
    @Default([]) List<String> topicsOfInterest,
  }) = _TopicsOfInterestPreference;

  const factory PreferenceSettingModel.serviceType({
    @Default('') String routeOfService,
    @Default('') String typeOfService,
  }) = _ServiceTypePreference;

  const factory PreferenceSettingModel.cultureAndFaith({
    @Default([]) List<String> cultures,
    @Default([]) List<String> faiths,
  }) = _CultureAndFaithPreference;

  const factory PreferenceSettingModel.genderAndSexuality({
    @Default([]) List<String> genders,
    @Default('') String providerIdentifiesAs,
  }) = _GenderAndSexualityPreference;

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

class PreferenceSettingsModelConverter
    implements JsonConverter<PreferenceSettingModel, Map<String, dynamic>> {
  const PreferenceSettingsModelConverter();

  @override
  PreferenceSettingModel fromJson(Map<String, dynamic> json) =>
      PreferenceSettingModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(PreferenceSettingModel object) {
    final json = object.toJson();
    json.remove('runtimeType');
    return json;
  }
}

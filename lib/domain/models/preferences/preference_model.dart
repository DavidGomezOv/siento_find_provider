import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_setting_model.dart';

part 'preference_model.freezed.dart';

part 'preference_model.g.dart';

@freezed
class PreferenceModel with _$PreferenceModel {
  factory PreferenceModel({
    required String userId,
    @Default(PreferenceItemModel(
      preferenceIntType: 1,
      mappedSettings: PreferenceSettingModel.location(),
    ))
    PreferenceItemModel locationPreferenceModel,
    @Default(PreferenceItemModel(
      preferenceIntType: 2,
      mappedSettings: PreferenceSettingModel.insurance(),
    ))
    PreferenceItemModel insurancePreferenceModel,
    @Default(PreferenceItemModel(
      preferenceIntType: 3,
      mappedSettings: PreferenceSettingModel.topicsOfInterest(),
    ))
    PreferenceItemModel topicsOfInterestPreferenceModel,
    @Default(PreferenceItemModel(
      preferenceIntType: 4,
      mappedSettings: PreferenceSettingModel.serviceType(),
    ))
    PreferenceItemModel serviceTypePreferenceModel,
    @Default(PreferenceItemModel(
      preferenceIntType: 5,
      mappedSettings: PreferenceSettingModel.cultureAndFaith(),
    ))
    PreferenceItemModel cultureAndFaithPreferenceModel,
    @Default(PreferenceItemModel(
      preferenceIntType: 6,
      mappedSettings: PreferenceSettingModel.genderAndSexuality(),
    ))
    PreferenceItemModel genderAndSexualityPreferenceModel,
  }) = _PreferenceModel;

  factory PreferenceModel.fromJson(Map<String, dynamic> json) => _$PreferenceModelFromJson(json);
}

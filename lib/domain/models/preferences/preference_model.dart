import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_setting_model.dart';

part 'preference_model.freezed.dart';

@freezed
class PreferenceModel with _$PreferenceModel {
  const PreferenceModel._();

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

  factory PreferenceModel.fromFirebaseJson(Map<String, dynamic> json) => PreferenceModel(
        userId: json['userId'] as String,
        locationPreferenceModel: json['locationPreferenceModel'] == null
            ? const PreferenceItemModel(
                preferenceIntType: 1, mappedSettings: PreferenceSettingModel.location())
            : PreferenceItemModel.fromJson(json['locationPreferenceModel'] as Map<String, dynamic>),
        insurancePreferenceModel: json['insurancePreferenceModel'] == null
            ? const PreferenceItemModel(
                preferenceIntType: 2, mappedSettings: PreferenceSettingModel.insurance())
            : PreferenceItemModel.fromJson(
                json['insurancePreferenceModel'] as Map<String, dynamic>),
        topicsOfInterestPreferenceModel: json['topicsOfInterestPreferenceModel'] == null
            ? const PreferenceItemModel(
                preferenceIntType: 3, mappedSettings: PreferenceSettingModel.topicsOfInterest())
            : PreferenceItemModel.fromJson(
                json['topicsOfInterestPreferenceModel'] as Map<String, dynamic>),
        serviceTypePreferenceModel: json['serviceTypePreferenceModel'] == null
            ? const PreferenceItemModel(
                preferenceIntType: 4, mappedSettings: PreferenceSettingModel.serviceType())
            : PreferenceItemModel.fromJson(
                json['serviceTypePreferenceModel'] as Map<String, dynamic>),
        cultureAndFaithPreferenceModel: json['cultureAndFaithPreferenceModel'] == null
            ? const PreferenceItemModel(
                preferenceIntType: 5, mappedSettings: PreferenceSettingModel.cultureAndFaith())
            : PreferenceItemModel.fromJson(
                json['cultureAndFaithPreferenceModel'] as Map<String, dynamic>),
        genderAndSexualityPreferenceModel: json['genderAndSexualityPreferenceModel'] == null
            ? const PreferenceItemModel(
                preferenceIntType: 6, mappedSettings: PreferenceSettingModel.genderAndSexuality())
            : PreferenceItemModel.fromJson(
                json['genderAndSexualityPreferenceModel'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toFirebaseJson() => {
        'userId': userId,
        'locationPreferenceModel': locationPreferenceModel.toJson(),
        'insurancePreferenceModel': insurancePreferenceModel.toJson(),
        'topicsOfInterestPreferenceModel': topicsOfInterestPreferenceModel.toJson(),
        'serviceTypePreferenceModel': serviceTypePreferenceModel.toJson(),
        'cultureAndFaithPreferenceModel': cultureAndFaithPreferenceModel.toJson(),
        'genderAndSexualityPreferenceModel': genderAndSexualityPreferenceModel.toJson(),
      };
}

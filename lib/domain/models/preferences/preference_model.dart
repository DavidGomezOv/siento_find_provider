import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_setting_model.dart';

part 'preference_model.freezed.dart';

@freezed
class PreferenceModel with _$PreferenceModel {
  const PreferenceModel._();

  factory PreferenceModel({
    @Default('') String userId,
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
        userId: json['userId'] != null ? json['userId'] as String : '',
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

  String getLocation() => locationPreferenceModel.mappedSettings.maybeWhen(
        location: (locationPreference) => locationPreference,
        orElse: () => '',
      );

  List<String> getInsurances() => insurancePreferenceModel.mappedSettings.maybeWhen(
        insurance: (insurances) => insurances,
        orElse: () => [],
      );

  List<String> getTopicsOfInterest() => topicsOfInterestPreferenceModel.mappedSettings.maybeWhen(
        topicsOfInterest: (topicsOfInterest) => topicsOfInterest,
        orElse: () => [],
      );

  (String routeOfService, String typeOfService) getServiceType() =>
      serviceTypePreferenceModel.mappedSettings.maybeWhen(
        serviceType: (routeOfService, typeOfService) => (routeOfService, typeOfService),
        orElse: () => ('', ''),
      );

  (List<String> cultures, List<String> faiths) getCulturesAndFaiths() =>
      cultureAndFaithPreferenceModel.mappedSettings.maybeWhen(
        cultureAndFaith: (cultures, faiths) => (cultures, faiths),
        orElse: () => ([], []),
      );

  (List<String> genders, String providerIdentifiesAs) getGenders() =>
      genderAndSexualityPreferenceModel.mappedSettings.maybeWhen(
        genderAndSexuality: (genders, providerIdentifiesAs) => (genders, providerIdentifiesAs),
        orElse: () => ([], ''),
      );

  String matchingTopicsOfInterest({required PreferenceModel preferenceToCompare}) {
    final matchingTopics = getTopicsOfInterest()
        .toSet()
        .intersection(preferenceToCompare.getTopicsOfInterest().toSet())
        .toList();

    return matchingTopics.toString().replaceAll('[', '').replaceAll(']', '');
  }

  String matchingAllPreferences({required PreferenceModel preferenceToCompare}) {
    List<String> matchingPreferences = [];

    final matchingTopics = getTopicsOfInterest()
        .toSet()
        .intersection(preferenceToCompare.getTopicsOfInterest().toSet())
        .toList();

    final matchingCultures = getCulturesAndFaiths()
        .$1
        .toSet()
        .intersection(preferenceToCompare.getCulturesAndFaiths().$1.toSet())
        .toList();

    final matchingFaiths = getCulturesAndFaiths()
        .$2
        .toSet()
        .intersection(preferenceToCompare.getCulturesAndFaiths().$2.toSet())
        .toList();

    final matchingGenders =
        getGenders().$1.toSet().intersection(preferenceToCompare.getGenders().$1.toSet()).toList();

    matchingPreferences.addAll(matchingTopics);
    matchingPreferences.addAll(matchingCultures);
    matchingPreferences.addAll(matchingFaiths);
    matchingPreferences.addAll(matchingGenders);

    return matchingPreferences.toString().replaceAll('[', '').replaceAll(']', '');
  }
}

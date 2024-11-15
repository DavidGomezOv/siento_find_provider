// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preference_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreferenceModelImpl _$$PreferenceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PreferenceModelImpl(
      userId: json['userId'] as String,
      locationPreferenceModel: json['locationPreferenceModel'] == null
          ? const PreferenceItemModel(
              preferenceIntType: 1,
              mappedSettings: PreferenceSettingModel.location())
          : PreferenceItemModel.fromJson(
              json['locationPreferenceModel'] as Map<String, dynamic>),
      insurancePreferenceModel: json['insurancePreferenceModel'] == null
          ? const PreferenceItemModel(
              preferenceIntType: 2,
              mappedSettings: PreferenceSettingModel.insurance())
          : PreferenceItemModel.fromJson(
              json['insurancePreferenceModel'] as Map<String, dynamic>),
      topicsOfInterestPreferenceModel:
          json['topicsOfInterestPreferenceModel'] == null
              ? const PreferenceItemModel(
                  preferenceIntType: 3,
                  mappedSettings: PreferenceSettingModel.topicsOfInterest())
              : PreferenceItemModel.fromJson(
                  json['topicsOfInterestPreferenceModel']
                      as Map<String, dynamic>),
      serviceTypePreferenceModel: json['serviceTypePreferenceModel'] == null
          ? const PreferenceItemModel(
              preferenceIntType: 4,
              mappedSettings: PreferenceSettingModel.serviceType())
          : PreferenceItemModel.fromJson(
              json['serviceTypePreferenceModel'] as Map<String, dynamic>),
      cultureAndFaithPreferenceModel: json['cultureAndFaithPreferenceModel'] ==
              null
          ? const PreferenceItemModel(
              preferenceIntType: 5,
              mappedSettings: PreferenceSettingModel.cultureAndFaith())
          : PreferenceItemModel.fromJson(
              json['cultureAndFaithPreferenceModel'] as Map<String, dynamic>),
      genderAndSexualityPreferenceModel:
          json['genderAndSexualityPreferenceModel'] == null
              ? const PreferenceItemModel(
                  preferenceIntType: 6,
                  mappedSettings: PreferenceSettingModel.genderAndSexuality())
              : PreferenceItemModel.fromJson(
                  json['genderAndSexualityPreferenceModel']
                      as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PreferenceModelImplToJson(
        _$PreferenceModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'locationPreferenceModel': instance.locationPreferenceModel,
      'insurancePreferenceModel': instance.insurancePreferenceModel,
      'topicsOfInterestPreferenceModel':
          instance.topicsOfInterestPreferenceModel,
      'serviceTypePreferenceModel': instance.serviceTypePreferenceModel,
      'cultureAndFaithPreferenceModel': instance.cultureAndFaithPreferenceModel,
      'genderAndSexualityPreferenceModel':
          instance.genderAndSexualityPreferenceModel,
    };

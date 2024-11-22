// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preference_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationPreferenceImpl _$$LocationPreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationPreferenceImpl(
      locationPreference: json['locationPreference'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationPreferenceImplToJson(
        _$LocationPreferenceImpl instance) =>
    <String, dynamic>{
      'locationPreference': instance.locationPreference,
      'runtimeType': instance.$type,
    };

_$InsurancePreferencesImpl _$$InsurancePreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$InsurancePreferencesImpl(
      insurances: (json['insurances'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InsurancePreferencesImplToJson(
        _$InsurancePreferencesImpl instance) =>
    <String, dynamic>{
      'insurances': instance.insurances,
      'runtimeType': instance.$type,
    };

_$TopicsOfInterestPreferenceImpl _$$TopicsOfInterestPreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicsOfInterestPreferenceImpl(
      topicsOfInterest: (json['topicsOfInterest'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TopicsOfInterestPreferenceImplToJson(
        _$TopicsOfInterestPreferenceImpl instance) =>
    <String, dynamic>{
      'topicsOfInterest': instance.topicsOfInterest,
      'runtimeType': instance.$type,
    };

_$ServiceTypePreferenceImpl _$$ServiceTypePreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceTypePreferenceImpl(
      routeOfService: json['routeOfService'] as String? ?? '',
      typeOfService: json['typeOfService'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServiceTypePreferenceImplToJson(
        _$ServiceTypePreferenceImpl instance) =>
    <String, dynamic>{
      'routeOfService': instance.routeOfService,
      'typeOfService': instance.typeOfService,
      'runtimeType': instance.$type,
    };

_$CultureAndFaithPreferenceImpl _$$CultureAndFaithPreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$CultureAndFaithPreferenceImpl(
      cultures: (json['cultures'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      faiths: (json['faiths'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CultureAndFaithPreferenceImplToJson(
        _$CultureAndFaithPreferenceImpl instance) =>
    <String, dynamic>{
      'cultures': instance.cultures,
      'faiths': instance.faiths,
      'runtimeType': instance.$type,
    };

_$GenderAndSexualityPreferenceImpl _$$GenderAndSexualityPreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$GenderAndSexualityPreferenceImpl(
      genders: (json['genders'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      therapistIdentifiesAs: json['therapistIdentifiesAs'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GenderAndSexualityPreferenceImplToJson(
        _$GenderAndSexualityPreferenceImpl instance) =>
    <String, dynamic>{
      'genders': instance.genders,
      'therapistIdentifiesAs': instance.therapistIdentifiesAs,
      'runtimeType': instance.$type,
    };

_$EmptyImpl _$$EmptyImplFromJson(Map<String, dynamic> json) => _$EmptyImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EmptyImplToJson(_$EmptyImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

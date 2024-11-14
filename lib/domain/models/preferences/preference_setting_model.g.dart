// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preference_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationPreferenceImpl _$$LocationPreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationPreferenceImpl(
      locationPreference: $enumDecodeNullable(
          _$LocationPreferenceEnumMap, json['locationPreference']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationPreferenceImplToJson(
        _$LocationPreferenceImpl instance) =>
    <String, dynamic>{
      'locationPreference':
          _$LocationPreferenceEnumMap[instance.locationPreference],
      'runtimeType': instance.$type,
    };

const _$LocationPreferenceEnumMap = {
  LocationPreference.phoneLocation: 'phoneLocation',
  LocationPreference.zipCode: 'zipCode',
  LocationPreference.searchWholeState: 'searchWholeState',
};

_$InsurancePreferencesImpl _$$InsurancePreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$InsurancePreferencesImpl(
      insurances: (json['insurances'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InsurancePreferencesImplToJson(
        _$InsurancePreferencesImpl instance) =>
    <String, dynamic>{
      'insurances': instance.insurances,
      'runtimeType': instance.$type,
    };

_$EmptyImpl _$$EmptyImplFromJson(Map<String, dynamic> json) => _$EmptyImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EmptyImplToJson(_$EmptyImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

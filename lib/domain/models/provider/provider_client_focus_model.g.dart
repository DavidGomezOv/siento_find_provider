// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_client_focus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProviderClientFocusModelImpl _$$ProviderClientFocusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProviderClientFocusModelImpl(
      ages: json['ages'] as String? ?? '',
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      communities: (json['communities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProviderClientFocusModelImplToJson(
        _$ProviderClientFocusModelImpl instance) =>
    <String, dynamic>{
      'ages': instance.ages,
      'participants': instance.participants,
      'communities': instance.communities,
    };

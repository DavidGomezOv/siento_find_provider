// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapist_client_focus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TherapistClientFocusModelImpl _$$TherapistClientFocusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TherapistClientFocusModelImpl(
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

Map<String, dynamic> _$$TherapistClientFocusModelImplToJson(
        _$TherapistClientFocusModelImpl instance) =>
    <String, dynamic>{
      'ages': instance.ages,
      'participants': instance.participants,
      'communities': instance.communities,
    };

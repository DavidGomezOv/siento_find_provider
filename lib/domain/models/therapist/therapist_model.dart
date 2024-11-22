import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_therapist/core/enums.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_model.dart';
import 'package:siento_find_therapist/domain/models/therapist/therapist_client_focus_model.dart';
import 'package:collection/collection.dart';

part 'therapist_model.freezed.dart';

@freezed
class TherapistModel with _$TherapistModel {
  const TherapistModel._();

  const factory TherapistModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String imageUrl,
    @Default('') String specialty,
    @Default('') String description,
    @Default('') String endorsedTimes,
    @Default('') String milesAway,
    @Default('') String phone,
    @Default('') String email,
    @Default(TherapistType.all) TherapistType therapistType,
    @Default([]) List<String> connectionMethod,
    @Default(false) bool inYourInsuranceNetwork,
    @Default(false) bool coveredByYourEpa,
    @Default(false) bool vettedByYourDepartment,
    @Default('') String specialtyAndExpertise,
    @Default(TherapistClientFocusModel()) TherapistClientFocusModel clientFocus,
    @Default([]) List<String> treatmentApproaches,
    @Default('') String qualifications,
    Timestamp? lastUpdated,
    PreferenceModel? preferences,
  }) = _TherapistModel;

  factory TherapistModel.fromJson(Map<String, dynamic> json) {
    return TherapistModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      specialty: json['specialty'] ?? '',
      description: json['description'] ?? '',
      endorsedTimes: json['endorsedTimes'] ?? '',
      milesAway: json['milesAway'] ?? '',
      phone: json['phone'] ?? '',
      email: json['email'] ?? '',
      therapistType: TherapistType.values.firstWhereOrNull((element) =>
              element.name.toLowerCase() == (json['type'] ?? '').toString().toLowerCase()) ??
          TherapistType.all,
      connectionMethod:
          json['connectionMethod'] != null ? json['connectionMethod'].cast<String>() : [],
      inYourInsuranceNetwork: json['inYourInsuranceNetwork'] ?? false,
      coveredByYourEpa: json['coveredByYourEpa'] ?? false,
      vettedByYourDepartment: json['vettedByYourDepartment'] ?? false,
      specialtyAndExpertise: json['specialtyAndExpertise'] ?? '',
      clientFocus: TherapistClientFocusModel.fromJson(json['clientFocus'] ?? {}),
      treatmentApproaches:
          json['treatmentApproaches'] != null ? json['treatmentApproaches'].cast<String>() : [],
      qualifications: json['qualifications'] ?? '',
      lastUpdated: json['lastUpdated'],
      preferences: json['preferences'] != null
          ? PreferenceModel.fromFirebaseJson(json['preferences'] as Map<String, dynamic>)
          : null,
    );
  }

  String getConnectionMethodLabel() =>
      connectionMethod.toString().replaceAll('[', '').replaceAll(']', '').replaceAll(',', ' &');

  String getTreatmentApproachesLabel() =>
      treatmentApproaches.toString().replaceAll('[', '').replaceAll(']', '');
}

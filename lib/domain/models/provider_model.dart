import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_provider/core/enums.dart';
import 'package:siento_find_provider/domain/models/provider_client_focus_model.dart';
import 'package:collection/collection.dart';

part 'provider_model.freezed.dart';

@freezed
class ProviderModel with _$ProviderModel {
  const ProviderModel._();

  const factory ProviderModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String imageUrl,
    @Default('') String specialty,
    @Default('') String description,
    @Default('') String endorsedTimes,
    @Default('') String milesAway,
    @Default('') String phone,
    @Default('') String email,
    @Default(ProviderType.all) ProviderType providerType,
    @Default([]) List<String> connectionMethod,
    @Default(false) bool inYourInsuranceNetwork,
    @Default(false) bool coveredByYourEpa,
    @Default(false) bool vettedByYourDepartment,
    @Default([]) List<String> preferences,
    @Default('') String specialtyAndExpertise,
    @Default(ProviderClientFocusModel()) ProviderClientFocusModel clientFocus,
    @Default([]) List<String> treatmentApproaches,
    @Default('') String qualifications,
    Timestamp? lastUpdated,
  }) = _ProviderModel;

  factory ProviderModel.fromJson(Map<String, dynamic> json) {
    return ProviderModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      specialty: json['specialty'] ?? '',
      description: json['description'] ?? '',
      endorsedTimes: json['endorsedTimes'] ?? '',
      milesAway: json['milesAway'] ?? '',
      phone: json['phone'] ?? '',
      email: json['email'] ?? '',
      providerType: ProviderType.values.firstWhereOrNull((element) =>
              element.name.toLowerCase() == (json['type'] ?? '').toString().toLowerCase()) ??
          ProviderType.all,
      connectionMethod:
          json['connectionMethod'] != null ? json['connectionMethod'].cast<String>() : [],
      inYourInsuranceNetwork: json['inYourInsuranceNetwork'] ?? false,
      coveredByYourEpa: json['coveredByYourEpa'] ?? false,
      vettedByYourDepartment: json['vettedByYourDepartment'] ?? false,
      preferences: json['preferences'] != null ? json['preferences'].cast<String>() : [],
      specialtyAndExpertise: json['specialtyAndExpertise'] ?? '',
      clientFocus: ProviderClientFocusModel.fromJson(json['clientFocus'] ?? {}),
      treatmentApproaches:
          json['treatmentApproaches'] != null ? json['treatmentApproaches'].cast<String>() : [],
      qualifications: json['qualifications'] ?? '',
      lastUpdated: json['lastUpdated'],
    );
  }

  String getConnectionMethodLabel() =>
      connectionMethod.toString().replaceAll('[', '').replaceAll(']', '').replaceAll(',', ' &');

  String getTreatmentApproachesLabel() =>
      treatmentApproaches.toString().replaceAll('[', '').replaceAll(']', '');
}

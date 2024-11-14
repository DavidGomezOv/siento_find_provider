import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider_client_focus_model.freezed.dart';

part 'provider_client_focus_model.g.dart';

@freezed
class ProviderClientFocusModel with _$ProviderClientFocusModel {
  const ProviderClientFocusModel._();

  const factory ProviderClientFocusModel({
    @Default('') String ages,
    @Default([]) List<String> participants,
    @Default([]) List<String> communities,
  }) = _ProviderClientFocusModel;

  factory ProviderClientFocusModel.fromJson(Map<String, dynamic> json) =>
      _$ProviderClientFocusModelFromJson(json);

  bool hasValues() => ages.isNotEmpty || participants.isNotEmpty || communities.isNotEmpty;

  String getParticipantsLabel() => participants.toString().replaceAll('[', '').replaceAll(']', '');

  String getCommunitiesLabel() => communities.toString().replaceAll('[', '').replaceAll(']', '');
}

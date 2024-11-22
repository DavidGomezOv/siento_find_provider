import 'package:freezed_annotation/freezed_annotation.dart';

part 'therapist_client_focus_model.freezed.dart';

part 'therapist_client_focus_model.g.dart';

@freezed
class TherapistClientFocusModel with _$TherapistClientFocusModel {
  const TherapistClientFocusModel._();

  const factory TherapistClientFocusModel({
    @Default('') String ages,
    @Default([]) List<String> participants,
    @Default([]) List<String> communities,
  }) = _TherapistClientFocusModel;

  factory TherapistClientFocusModel.fromJson(Map<String, dynamic> json) =>
      _$TherapistClientFocusModelFromJson(json);

  bool hasValues() => ages.isNotEmpty || participants.isNotEmpty || communities.isNotEmpty;

  String getParticipantsLabel() => participants.toString().replaceAll('[', '').replaceAll(']', '');

  String getCommunitiesLabel() => communities.toString().replaceAll('[', '').replaceAll(']', '');
}

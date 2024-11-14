import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_setting_model.dart';

part 'preference_item_model.freezed.dart';

@freezed
class PreferenceItemModel with _$PreferenceItemModel {
  const PreferenceItemModel._();

  const factory PreferenceItemModel({
    required int preferenceIntType,
    @Default(PreferenceSettingModel.empty()) PreferenceSettingModel mappedSettings,
  }) = _PreferenceItemModel;

  factory PreferenceItemModel.fromJson(Map<String, dynamic> json) {
    final preferenceType = json['preferenceIntType'] ?? 0;
    return PreferenceItemModel(
      preferenceIntType: preferenceType,
      mappedSettings: PreferenceSettingModel.fromJsonWithPreferenceType(
        preferenceType,
        json['settings'] as Map<String, dynamic>,
      ),
    );
  }

  Map<String, dynamic> toJson() => {
        'preferenceIntType': preferenceIntType,
        'settings': mappedSettings.toJson()..remove('runtimeType'),
      };
}

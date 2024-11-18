import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_provider/core/const_values.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_setting_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/custom_radio_button_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/selectable_button_widget.dart';
import 'package:siento_find_provider/presentation/widgets/custom_error_widget.dart';
import 'package:siento_find_provider/presentation/widgets/snackbar_widget.dart';
import 'package:siento_find_provider/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class GenderSexualityPreferenceWidget extends StatelessWidget {
  const GenderSexualityPreferenceWidget({super.key, required this.onSavePreference});

  final Function(PreferenceItemModel model) onSavePreference;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text('Gender & Sexuality', style: UiTextStyle.headerPreferencesTextStyle),
          ),
          const SizedBox(height: 30),
          Consumer(
            builder: (context, ref, child) {
              ref.listen(preferencesNotifierProvider, (previous, next) {
                next.maybeWhen(
                  loaded: (preferences) => showCommonSnackBar(
                    context,
                    'Gender & Sexuality preferences updated successfully',
                  ),
                  failedToLoad: (errorMessage) => showCommonSnackBar(context, errorMessage),
                  orElse: () {},
                );
              });
              final preferencesProvider = ref.watch(preferencesNotifierProvider);
              return preferencesProvider.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (preferences) {
                  List<String> selectedGenders = [];
                  String selectedIdentityOption = '';
                  preferences.genderAndSexualityPreferenceModel.mappedSettings.maybeWhen(
                    genderAndSexuality: (genders, providerIdentifiesAs) {
                      selectedGenders = genders;
                      selectedIdentityOption = providerIdentifiesAs;
                    },
                    orElse: () {},
                  );
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Please indicate if you want a provider who identifies as the following:',
                        style: UiTextStyle.primaryTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 10,
                        runSpacing: 10,
                        children: gendersList
                            .map(
                              (element) => SelectedButton(
                                selected: selectedGenders.contains(element),
                                label: element,
                                onTap: (label) {
                                  PreferenceItemModel insurancesPreference;
                                  if (selectedGenders.contains(label)) {
                                    insurancesPreference =
                                        preferences.genderAndSexualityPreferenceModel.copyWith(
                                      mappedSettings: PreferenceSettingModel.genderAndSexuality(
                                        genders: List.from(selectedGenders)..remove(label),
                                        providerIdentifiesAs: selectedIdentityOption,
                                      ),
                                    );
                                  } else {
                                    insurancesPreference =
                                        preferences.genderAndSexualityPreferenceModel.copyWith(
                                      mappedSettings: PreferenceSettingModel.genderAndSexuality(
                                        genders: List.from(selectedGenders)..add(label),
                                        providerIdentifiesAs: selectedIdentityOption,
                                      ),
                                    );
                                  }
                                  onSavePreference(insurancesPreference);
                                },
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        'Please indicate if you want a provider who identifies as LGBTQIA+:',
                        style: UiTextStyle.primaryTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ...providerIdentitiesOptions.map(
                        (element) => CustomRadioButton(
                          label: element,
                          selected: selectedIdentityOption == element,
                          onChanged: (value) => onSavePreference(
                            preferences.genderAndSexualityPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.genderAndSexuality(
                                providerIdentifiesAs: value,
                                genders: selectedGenders,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                failedToLoad: (errorMessage) => CustomErrorWidget(errorMessage: errorMessage),
              );
            },
          ),
        ],
      ),
    );
  }
}

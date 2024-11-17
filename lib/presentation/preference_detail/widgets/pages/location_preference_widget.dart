import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_provider/core/const_values.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_setting_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/custom_radio_button_widget.dart';
import 'package:siento_find_provider/presentation/widgets/custom_error_widget.dart';
import 'package:siento_find_provider/presentation/widgets/snackbar_widget.dart';
import 'package:siento_find_provider/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class LocationPreferenceWidget extends StatelessWidget {
  const LocationPreferenceWidget({
    super.key,
    required this.onSavePreference,
  });

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
            child: Text('Location', style: UiTextStyle.headerPreferencesTextStyle),
          ),
          const SizedBox(height: 30),
          Consumer(
            builder: (context, ref, child) {
              ref.listen(preferencesNotifierProvider, (previous, next) {
                next.maybeWhen(
                  loaded: (preferences) => showCommonSnackBar(
                    context,
                    'Location preference updated successfully',
                  ),
                  failedToLoad: (errorMessage) => showCommonSnackBar(context, errorMessage),
                  orElse: () {},
                );
              });
              final preferencesProvider = ref.watch(preferencesNotifierProvider);
              return preferencesProvider.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (preferences) {
                  final currentPreferenceValue =
                      preferences.locationPreferenceModel.mappedSettings.maybeWhen(
                    location: (locationPreference) => locationPreference,
                    orElse: () {},
                  );
                  return Column(
                    children: locationOptions
                        .map(
                          (element) => CustomRadioButton(
                            label: element,
                            selected: currentPreferenceValue == element,
                            onChanged: (value) => onSavePreference(
                              preferences.locationPreferenceModel.copyWith(
                                mappedSettings: PreferenceSettingModel.location(
                                  locationPreference: value,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
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

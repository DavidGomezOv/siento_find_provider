import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_setting_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/custom_radio_button_widget.dart';
import 'package:siento_find_provider/presentation/widgets/snackbar_widget.dart';
import 'package:siento_find_provider/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class LocationPreferenceWidget extends StatelessWidget {
  const LocationPreferenceWidget({
    super.key,
    required this.selectedValue,
    required this.onSavePreference,
  });

  final String selectedValue;
  final Function(PreferenceItemModel model) onSavePreference;

  static const locationOptions = [
    'Use my phone’s current location',
    'Use a zip code',
    'Search my whole state',
  ];

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> selectedValueNotifier = ValueNotifier('');
    selectedValueNotifier.value = selectedValue;
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
                  failedToLoad: (errorMessage) => showCommonSnackBar(context, errorMessage),
                  orElse: () {},
                );
              });
              final preferencesProvider = ref.watch(preferencesNotifierProvider);
              return preferencesProvider.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (preferences) => ValueListenableBuilder(
                  valueListenable: selectedValueNotifier,
                  builder: (context, value, child) {
                    return Column(
                      children: locationOptions
                          .map(
                            (element) => CustomRadioButton(
                              label: element,
                              selected: value == element,
                              onChanged: (value) {
                                onSavePreference(
                                  preferences.locationPreferenceModel.copyWith(
                                    mappedSettings: PreferenceSettingModel.location(
                                      locationPreference: element,
                                    ),
                                  ),
                                );
                                selectedValueNotifier.value = element;
                              },
                            ),
                          )
                          .toList(),
                    );
                  },
                ),
                failedToLoad: (errorMessage) => Container(),
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_therapist/core/const_values.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_setting_model.dart';
import 'package:siento_find_therapist/presentation/preference_detail/widgets/custom_radio_button_widget.dart';
import 'package:siento_find_therapist/presentation/widgets/custom_error_widget.dart';
import 'package:siento_find_therapist/presentation/widgets/snackbar_widget.dart';
import 'package:siento_find_therapist/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class ServiceTypePreferenceWidget extends StatelessWidget {
  const ServiceTypePreferenceWidget({super.key, required this.onSavePreference});

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
            child: Text('Service Type', style: UiTextStyle.headerPreferencesTextStyle),
          ),
          const SizedBox(height: 30),
          Consumer(
            builder: (context, ref, child) {
              ref.listen(preferencesNotifierProvider, (previous, next) {
                next.maybeWhen(
                  loaded: (preferences) => showCommonSnackBar(
                    context,
                    'Service preference updated successfully',
                  ),
                  failedToLoad: (errorMessage) => showCommonSnackBar(context, errorMessage),
                  orElse: () {},
                );
              });
              final preferencesProvider = ref.watch(preferencesNotifierProvider);
              return preferencesProvider.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (preferences) {
                  final String selectedRouteOfService = preferences.getServiceType().$1;
                  final String selectedTypeOfService = preferences.getServiceType().$2;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text('Route of Service', style: UiTextStyle.sidePanelNameTextStyle),
                      ),
                      const SizedBox(height: 10),
                      ...routeOfServiceOptions.map(
                        (element) => CustomRadioButton(
                          label: element,
                          selected: selectedRouteOfService == element,
                          onChanged: (value) => onSavePreference(
                            preferences.serviceTypePreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.serviceType(
                                routeOfService: value,
                                typeOfService: selectedTypeOfService,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                        child: Divider(height: 1, color: UiColors.lightGray, thickness: 1),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Type of Service', style: UiTextStyle.sidePanelNameTextStyle),
                      ),
                      const SizedBox(height: 10),
                      ...typeOfServiceOptions.map(
                        (element) => CustomRadioButton(
                          label: element,
                          selected: selectedTypeOfService == element,
                          onChanged: (value) => onSavePreference(
                            preferences.serviceTypePreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.serviceType(
                                routeOfService: selectedRouteOfService,
                                typeOfService: value,
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

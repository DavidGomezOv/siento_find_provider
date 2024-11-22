import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_setting_model.dart';
import 'package:siento_find_therapist/presentation/preference_detail/widgets/custom_text_field_widget.dart';
import 'package:siento_find_therapist/presentation/preference_detail/widgets/delete_insurance_dialog_content.dart';
import 'package:siento_find_therapist/presentation/widgets/custom_error_widget.dart';
import 'package:siento_find_therapist/presentation/widgets/show_custom_dialog.dart';
import 'package:siento_find_therapist/presentation/widgets/snackbar_widget.dart';
import 'package:siento_find_therapist/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class InsurancePreferenceWidget extends StatefulWidget {
  const InsurancePreferenceWidget({
    super.key,
    required this.onSavePreference,
  });

  final Function(PreferenceItemModel model) onSavePreference;

  @override
  State<InsurancePreferenceWidget> createState() => _InsurancePreferenceWidgetState();
}

class _InsurancePreferenceWidgetState extends State<InsurancePreferenceWidget> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text('Insurance', style: UiTextStyle.headerPreferencesTextStyle),
          ),
          const SizedBox(height: 30),
          Consumer(
            builder: (context, ref, child) {
              ref.listen(preferencesNotifierProvider, (previous, next) {
                next.maybeWhen(
                  loaded: (preferences) => showCommonSnackBar(
                    context,
                    'Insurance list updated successfully',
                  ),
                  failedToLoad: (errorMessage) => showCommonSnackBar(context, errorMessage),
                  orElse: () {},
                );
              });
              final preferencesProvider = ref.watch(preferencesNotifierProvider);
              return preferencesProvider.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (preferences) {
                  final List<String> currentPreferenceValue = preferences.getInsurances();
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _InsurancesList(
                        insurances: currentPreferenceValue,
                        onDelete: (String value) {
                          final insurancesPreference =
                              preferences.insurancePreferenceModel.copyWith(
                            mappedSettings: PreferenceSettingModel.insurance(
                              insurances: List.from(currentPreferenceValue)..remove(value),
                            ),
                          );
                          widget.onSavePreference(insurancesPreference);
                        },
                      ),
                      SizedBox(height: currentPreferenceValue.isNotEmpty ? 20 : 40),
                      CustomTextFieldWidget(
                        controller: controller,
                        hintText: 'Add your insurance company',
                        onSubmitted: (value) {
                          if (currentPreferenceValue.contains(value)) {
                            showCommonSnackBar(context, 'Insurance already in the List');
                            return;
                          }
                          controller.clear();
                          final insurancesPreference =
                              preferences.insurancePreferenceModel.copyWith(
                            mappedSettings: PreferenceSettingModel.insurance(
                              insurances: List.from(currentPreferenceValue)..add(value),
                            ),
                          );
                          widget.onSavePreference(insurancesPreference);
                        },
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

class _InsurancesList extends StatelessWidget {
  const _InsurancesList({required this.insurances, required this.onDelete});

  final List<String> insurances;
  final Function(String value) onDelete;

  @override
  Widget build(BuildContext context) {
    if (insurances.isEmpty) {
      return Text(
        'If you’re insured, please write in the name of your insurance company below so we can make sure your provider options are all in your network!',
        style: UiTextStyle.personNameRow,
        textAlign: TextAlign.center,
      );
    }
    return ListView.builder(
      shrinkWrap: true,
      itemCount: insurances.length,
      itemBuilder: (context, index) {
        final currentItem = insurances[index];
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(Icons.check_rounded, color: UiColors.deepGreen),
                const SizedBox(width: 10),
                Expanded(child: Text(currentItem, style: UiTextStyle.primaryTextStyle)),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () => showCustomDialog(
                    context,
                    content: DeleteInsuranceDialogContent(
                      onDelete: () => onDelete(currentItem),
                    ),
                  ),
                  icon: const Icon(
                    Icons.delete_outline_outlined,
                    color: UiColors.deftBlue800,
                  ),
                ),
              ],
            ),
            if (currentItem.toLowerCase() == 'health partners')
              Text(
                'You are automatically registered as having Health Partners through your organization. If that is not accurate, please delete it from the list and write in your insurance company.',
                style: UiTextStyle.tabsTextStyle,
              ),
            const SizedBox(height: 15),
          ],
        );
      },
    );
  }
}

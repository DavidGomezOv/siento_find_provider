import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_provider/core/const_values.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_setting_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/custom_text_field_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/selectable_button_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/written_items_list_widget.dart';
import 'package:siento_find_provider/presentation/widgets/custom_error_widget.dart';
import 'package:siento_find_provider/presentation/widgets/snackbar_widget.dart';
import 'package:siento_find_provider/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class CultureFaithPreferenceWidget extends StatefulWidget {
  const CultureFaithPreferenceWidget({super.key, required this.onSavePreference});

  final Function(PreferenceItemModel model) onSavePreference;

  @override
  State<CultureFaithPreferenceWidget> createState() => _CultureFaithPreferenceWidgetState();
}

class _CultureFaithPreferenceWidgetState extends State<CultureFaithPreferenceWidget> {
  final TextEditingController controllerCultural = TextEditingController();
  final TextEditingController controllerFaith = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Consumer(
            builder: (context, ref, child) {
              ref.listen(preferencesNotifierProvider, (previous, next) {
                next.maybeWhen(
                  loaded: (preferences) => showCommonSnackBar(
                    context,
                    'Culture & Faith preferences updated successfully',
                  ),
                  failedToLoad: (errorMessage) => showCommonSnackBar(context, errorMessage),
                  orElse: () {},
                );
              });
              final preferencesProvider = ref.watch(preferencesNotifierProvider);
              return preferencesProvider.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (preferences) {
                  List<String> currentCulturesValue = [];
                  List<String> currentFaithsValue = [];
                  preferences.cultureAndFaithPreferenceModel.mappedSettings.maybeWhen(
                    cultureAndFaith: (cultures, faiths) {
                      currentCulturesValue = cultures;
                      currentFaithsValue = faiths;
                    },
                    orElse: () => [],
                  );
                  List<String> writtenItems = [];
                  for (final element in currentCulturesValue) {
                    if (!culturesList.contains(element)) {
                      writtenItems.add(element);
                    }
                  }
                  for (final element in currentFaithsValue) {
                    if (!faithsList.contains(element)) {
                      writtenItems.add(element);
                    }
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _CulturesSection(
                        currentSelectedCultures: currentCulturesValue,
                        controller: controllerCultural,
                        onTap: (label) {
                          PreferenceItemModel cultureFaithPreference;
                          if (currentCulturesValue.contains(label)) {
                            cultureFaithPreference =
                                preferences.cultureAndFaithPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                cultures: List.from(currentCulturesValue)..remove(label),
                                faiths: currentFaithsValue,
                              ),
                            );
                          } else {
                            cultureFaithPreference =
                                preferences.cultureAndFaithPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                cultures: List.from(currentCulturesValue)..add(label),
                                faiths: currentFaithsValue,
                              ),
                            );
                          }
                          widget.onSavePreference(cultureFaithPreference);
                        },
                        onSubmittedText: (value) {
                          if (currentCulturesValue.contains(value)) {
                            showCommonSnackBar(context, 'Culture already in the List');
                            return;
                          }
                          controllerCultural.clear();
                          final cultureFaithPreference =
                              preferences.cultureAndFaithPreferenceModel.copyWith(
                            mappedSettings: PreferenceSettingModel.cultureAndFaith(
                              cultures: List.from(currentCulturesValue)..add(value),
                              faiths: currentFaithsValue,
                            ),
                          );
                          widget.onSavePreference(cultureFaithPreference);
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 40, right: 10, bottom: 30),
                        child: Divider(height: 1, color: UiColors.lightGray, thickness: 1),
                      ),
                      _FaithSection(
                        currentSelectedFaiths: currentFaithsValue,
                        controller: controllerCultural,
                        onTap: (label) {
                          PreferenceItemModel cultureFaithPreference;
                          if (currentFaithsValue.contains(label)) {
                            cultureFaithPreference =
                                preferences.cultureAndFaithPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                cultures: currentCulturesValue,
                                faiths: List.from(currentFaithsValue)..remove(label),
                              ),
                            );
                          } else {
                            cultureFaithPreference =
                                preferences.cultureAndFaithPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                cultures: currentCulturesValue,
                                faiths: List.from(currentFaithsValue)..add(label),
                              ),
                            );
                          }
                          widget.onSavePreference(cultureFaithPreference);
                        },
                        onSubmittedText: (value) {
                          if (currentFaithsValue.contains(value)) {
                            showCommonSnackBar(context, 'Faith already in the List');
                            return;
                          }
                          controllerCultural.clear();
                          final cultureFaithPreference =
                              preferences.cultureAndFaithPreferenceModel.copyWith(
                            mappedSettings: PreferenceSettingModel.cultureAndFaith(
                              cultures: currentCulturesValue,
                              faiths: List.from(currentFaithsValue)..add(value),
                            ),
                          );
                          widget.onSavePreference(cultureFaithPreference);
                        },
                      ),
                      const SizedBox(height: 30),
                      if (writtenItems.isNotEmpty) ...[
                        Text(
                          'Written in culture and religion topics:',
                          style: UiTextStyle.primaryTextStyle,
                        ),
                        const SizedBox(height: 20),
                        WrittenItemsListWidget(
                          writtenItems: writtenItems,
                          onDelete: (String item) {
                            PreferenceItemModel preferenceItemModel;
                            final isFromCultures = currentCulturesValue.contains(item);
                            if (isFromCultures) {
                              preferenceItemModel =
                                  preferences.cultureAndFaithPreferenceModel.copyWith(
                                mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                  cultures: List.from(currentCulturesValue)..remove(item),
                                  faiths: currentFaithsValue,
                                ),
                              );
                            } else {
                              preferenceItemModel =
                                  preferences.cultureAndFaithPreferenceModel.copyWith(
                                mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                  cultures: currentCulturesValue,
                                  faiths: List.from(currentFaithsValue)..remove(item),
                                ),
                              );
                            }
                            widget.onSavePreference(preferenceItemModel);
                          },
                          onUpdate: (String item) {},
                        ),
                      ],
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

class _CulturesSection extends StatelessWidget {
  const _CulturesSection({
    required this.currentSelectedCultures,
    required this.controller,
    required this.onTap,
    required this.onSubmittedText,
  });

  final List<String> currentSelectedCultures;
  final TextEditingController controller;
  final Function(String label) onTap;
  final Function(String value) onSubmittedText;

  @override
  Widget build(BuildContext context) {
    List<String> defaultSelectedCultures = [];
    for (final element in currentSelectedCultures) {
      if (culturesList.contains(element)) {
        defaultSelectedCultures.add(element);
      }
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Culture', style: UiTextStyle.headerPreferencesTextStyle),
        const SizedBox(height: 30),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: culturesList
              .map(
                (element) => SelectedButton(
                  selected: defaultSelectedCultures.contains(element),
                  label: element,
                  onTap: onTap,
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 30),
        Text(
          'Please write in your cultural interest here if not listed in the list above:',
          style: UiTextStyle.primaryTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        CustomTextFieldWidget(
          controller: controller,
          hintText: 'Your cultural interest',
          onSubmitted: onSubmittedText,
        ),
      ],
    );
  }
}

class _FaithSection extends StatelessWidget {
  const _FaithSection({
    required this.currentSelectedFaiths,
    required this.controller,
    required this.onTap,
    required this.onSubmittedText,
  });

  final List<String> currentSelectedFaiths;
  final TextEditingController controller;
  final Function(String label) onTap;
  final Function(String value) onSubmittedText;

  @override
  Widget build(BuildContext context) {
    List<String> defaultSelectedFaiths = [];
    for (final element in currentSelectedFaiths) {
      if (faithsList.contains(element)) {
        defaultSelectedFaiths.add(element);
      }
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Faith', style: UiTextStyle.headerPreferencesTextStyle),
        const SizedBox(height: 30),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: faithsList
              .map(
                (element) => SelectedButton(
                  selected: defaultSelectedFaiths.contains(element),
                  label: element,
                  onTap: onTap,
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 30),
        Text(
          'Please write in your faith interest:',
          style: UiTextStyle.primaryTextStyle,
        ),
        const SizedBox(height: 10),
        CustomTextFieldWidget(
          controller: controller,
          hintText: 'Your faith interest',
          onSubmitted: onSubmittedText,
        ),
      ],
    );
  }
}

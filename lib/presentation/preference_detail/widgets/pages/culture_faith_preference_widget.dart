import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_therapist/core/const_values.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_setting_model.dart';
import 'package:siento_find_therapist/presentation/preference_detail/widgets/custom_text_field_widget.dart';
import 'package:siento_find_therapist/presentation/preference_detail/widgets/selectable_button_widget.dart';
import 'package:siento_find_therapist/presentation/preference_detail/widgets/written_items_list_widget.dart';
import 'package:siento_find_therapist/presentation/widgets/custom_error_widget.dart';
import 'package:siento_find_therapist/presentation/widgets/snackbar_widget.dart';
import 'package:siento_find_therapist/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class CultureFaithPreferenceWidget extends StatefulWidget {
  const CultureFaithPreferenceWidget({super.key, required this.onSavePreference});

  final Function(PreferenceItemModel model) onSavePreference;

  @override
  State<CultureFaithPreferenceWidget> createState() => _CultureFaithPreferenceWidgetState();
}

class _CultureFaithPreferenceWidgetState extends State<CultureFaithPreferenceWidget> {
  final TextEditingController controllerCultural = TextEditingController();
  final TextEditingController controllerFaith = TextEditingController();

  final FocusNode focusNodeCultural = FocusNode();
  final FocusNode focusNodeFaith = FocusNode();

  String cultureForUpdate = '';
  String faithForUpdate = '';

  void _reset() {
    controllerCultural.clear();
    controllerFaith.clear();
    cultureForUpdate = '';
    faithForUpdate = '';
  }

  @override
  void dispose() {
    focusNodeCultural.dispose();
    focusNodeFaith.dispose();
    controllerCultural.dispose();
    controllerFaith.dispose();
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
                  final List<String> currentCulturesValue = preferences.getCulturesAndFaiths().$1;
                  final List<String> currentFaithsValue = preferences.getCulturesAndFaiths().$2;
                  List<String> writtenCulturesItems = [];
                  List<String> writtenFaithsItems = [];
                  for (final element in currentCulturesValue) {
                    if (!culturesList.contains(element)) {
                      writtenCulturesItems.add(element);
                    }
                  }
                  for (final element in currentFaithsValue) {
                    if (!faithsList.contains(element)) {
                      writtenFaithsItems.add(element);
                    }
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _CulturesSection(
                        currentSelectedCultures: currentCulturesValue,
                        controller: controllerCultural,
                        focusNode: focusNodeCultural,
                        onTap: (label) {
                          _reset();
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
                          PreferenceItemModel cultureFaithPreference;
                          if (cultureForUpdate.isNotEmpty) {
                            final updatedList = currentCulturesValue
                                .map(
                                  (element) => element != cultureForUpdate ? element : value,
                                )
                                .toList();
                            cultureFaithPreference =
                                preferences.cultureAndFaithPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                cultures: updatedList,
                                faiths: currentFaithsValue,
                              ),
                            );
                            widget.onSavePreference(cultureFaithPreference);
                            _reset();
                            return;
                          }
                          if (currentCulturesValue.contains(value)) {
                            showCommonSnackBar(context, 'Culture already in the List');
                          } else {
                            cultureFaithPreference =
                                preferences.cultureAndFaithPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                cultures: List.from(currentCulturesValue)..add(value),
                                faiths: currentFaithsValue,
                              ),
                            );
                            widget.onSavePreference(cultureFaithPreference);
                          }
                          _reset();
                        },
                        onClearTextField: () => cultureForUpdate = '',
                      ),
                      const SizedBox(height: 30),
                      if (writtenCulturesItems.isNotEmpty) ...[
                        Text(
                          'Written religion topics:',
                          style: UiTextStyle.primaryTextStyle,
                        ),
                        const SizedBox(height: 10),
                        WrittenItemsListWidget(
                          writtenItems: writtenCulturesItems,
                          onDelete: (String item) {
                            cultureForUpdate = '';
                            faithForUpdate = '';
                            PreferenceItemModel preferenceItemModel =
                                preferences.cultureAndFaithPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                cultures: List.from(currentCulturesValue)..remove(item),
                                faiths: currentFaithsValue,
                              ),
                            );
                            widget.onSavePreference(preferenceItemModel);
                            _reset();
                          },
                          onUpdate: (String item) {
                            cultureForUpdate = item;
                            controllerCultural.text = item;
                            focusNodeCultural.requestFocus();
                          },
                        ),
                      ],
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 30),
                        child: Divider(height: 1, color: UiColors.lightGray, thickness: 1),
                      ),
                      _FaithSection(
                        currentSelectedFaiths: currentFaithsValue,
                        controller: controllerFaith,
                        focusNode: focusNodeFaith,
                        onTap: (label) {
                          _reset();
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
                          PreferenceItemModel cultureFaithPreference;
                          if (faithForUpdate.isNotEmpty) {
                            final updatedList = currentFaithsValue
                                .map(
                                  (element) => element != faithForUpdate ? element : value,
                                )
                                .toList();
                            cultureFaithPreference =
                                preferences.cultureAndFaithPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                cultures: currentCulturesValue,
                                faiths: updatedList,
                              ),
                            );
                            widget.onSavePreference(cultureFaithPreference);
                            _reset();
                            return;
                          }
                          if (currentFaithsValue.contains(value)) {
                            showCommonSnackBar(context, 'Faith already in the List');
                          } else {
                            cultureFaithPreference =
                                preferences.cultureAndFaithPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                cultures: currentCulturesValue,
                                faiths: List.from(currentFaithsValue)..add(value),
                              ),
                            );
                            widget.onSavePreference(cultureFaithPreference);
                          }
                          _reset();
                        },
                        onClearTextField: () => cultureForUpdate = '',
                      ),
                      const SizedBox(height: 30),
                      if (writtenFaithsItems.isNotEmpty) ...[
                        Text(
                          'Written religion topics:',
                          style: UiTextStyle.primaryTextStyle,
                        ),
                        const SizedBox(height: 10),
                        WrittenItemsListWidget(
                          writtenItems: writtenFaithsItems,
                          onDelete: (String item) {
                            PreferenceItemModel preferenceItemModel =
                                preferences.cultureAndFaithPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.cultureAndFaith(
                                cultures: currentCulturesValue,
                                faiths: List.from(currentFaithsValue)..remove(item),
                              ),
                            );
                            widget.onSavePreference(preferenceItemModel);
                            _reset();
                          },
                          onUpdate: (String item) {
                            faithForUpdate = item;
                            controllerFaith.text = item;
                            focusNodeFaith.requestFocus();
                          },
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
    required this.focusNode,
    required this.onTap,
    required this.onSubmittedText,
    required this.onClearTextField,
  });

  final List<String> currentSelectedCultures;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String label) onTap;
  final Function(String value) onSubmittedText;
  final Function() onClearTextField;

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
          focusNode: focusNode,
          hintText: 'Your cultural interest',
          onSubmitted: onSubmittedText,
          suffix: GestureDetector(
            onTap: () {
              focusNode.unfocus();
              controller.clear();
              onClearTextField();
            },
            child: const Icon(Icons.close_outlined, color: UiColors.lightGray),
          ),
        ),
      ],
    );
  }
}

class _FaithSection extends StatelessWidget {
  const _FaithSection({
    required this.currentSelectedFaiths,
    required this.controller,
    required this.focusNode,
    required this.onTap,
    required this.onSubmittedText,
    required this.onClearTextField,
  });

  final List<String> currentSelectedFaiths;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String label) onTap;
  final Function(String value) onSubmittedText;
  final Function() onClearTextField;

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
          focusNode: focusNode,
          hintText: 'Your faith interest',
          onSubmitted: onSubmittedText,
          suffix: GestureDetector(
            onTap: () {
              focusNode.unfocus();
              controller.clear();
              onClearTextField();
            },
            child: const Icon(Icons.close_outlined, color: UiColors.lightGray),
          ),
        ),
      ],
    );
  }
}

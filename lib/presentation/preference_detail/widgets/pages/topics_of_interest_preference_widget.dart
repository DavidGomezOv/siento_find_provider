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

class TopicsOfInterestPreferenceWidget extends StatefulWidget {
  const TopicsOfInterestPreferenceWidget({super.key, required this.onSavePreference});

  final Function(PreferenceItemModel model) onSavePreference;

  @override
  State<TopicsOfInterestPreferenceWidget> createState() => _TopicsOfInterestPreferenceWidgetState();
}

class _TopicsOfInterestPreferenceWidgetState extends State<TopicsOfInterestPreferenceWidget> {
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();

  String itemForUpdate = '';

  void _reset() {
    controller.clear();
    itemForUpdate = '';
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
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
            child: Text(
              'Topics of Interest',
              style: UiTextStyle.headerPreferencesTextStyle,
            ),
          ),
          const SizedBox(height: 30),
          Consumer(
            builder: (context, ref, child) {
              ref.listen(preferencesNotifierProvider, (previous, next) {
                next.maybeWhen(
                  loaded: (preferences) => showCommonSnackBar(
                    context,
                    'Topics of interest updated successfully',
                  ),
                  failedToLoad: (errorMessage) => showCommonSnackBar(context, errorMessage),
                  orElse: () {},
                );
              });
              final preferencesProvider = ref.watch(preferencesNotifierProvider);
              return preferencesProvider.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (preferences) {
                  final List<String> currentPreferenceValue = preferences.getTopicsOfInterest();
                  List<String> defaultSelectedTopics = [];
                  List<String> writtenTopics = [];
                  for (final element in currentPreferenceValue) {
                    if (topicsList.contains(element)) {
                      defaultSelectedTopics.add(element);
                    } else {
                      writtenTopics.add(element);
                    }
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _DefaultOptionsList(
                        defaultSelectedTopics: defaultSelectedTopics,
                        onTap: (String label) {
                          _reset();
                          PreferenceItemModel insurancesPreference;
                          if (defaultSelectedTopics.contains(label)) {
                            insurancesPreference =
                                preferences.topicsOfInterestPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.topicsOfInterest(
                                topicsOfInterest: List.from(currentPreferenceValue)..remove(label),
                              ),
                            );
                          } else {
                            insurancesPreference =
                                preferences.topicsOfInterestPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.topicsOfInterest(
                                topicsOfInterest: List.from(currentPreferenceValue)..add(label),
                              ),
                            );
                          }
                          widget.onSavePreference(insurancesPreference);
                        },
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Please write in other topics here:',
                        style: UiTextStyle.primaryTextStyle,
                      ),
                      const SizedBox(height: 10),
                      CustomTextFieldWidget(
                        controller: controller,
                        focusNode: focusNode,
                        hintText: 'Other topics',
                        suffix: GestureDetector(
                          onTap: () {
                            _reset();
                            focusNode.unfocus();
                          },
                          child: const Icon(Icons.close_outlined, color: UiColors.lightGray),
                        ),
                        onSubmitted: (value) {
                          PreferenceItemModel insurancesPreference;
                          if (itemForUpdate.isNotEmpty) {
                            final updatedList = currentPreferenceValue
                                .map(
                                  (element) => element != itemForUpdate ? element : value,
                                )
                                .toList();
                            insurancesPreference =
                                preferences.topicsOfInterestPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.topicsOfInterest(
                                topicsOfInterest: updatedList,
                              ),
                            );
                            widget.onSavePreference(insurancesPreference);
                            controller.clear();
                            _reset();
                            return;
                          }
                          if (currentPreferenceValue.contains(value)) {
                            showCommonSnackBar(context, 'Topic already in the List');
                          } else {
                            insurancesPreference =
                                preferences.topicsOfInterestPreferenceModel.copyWith(
                              mappedSettings: PreferenceSettingModel.topicsOfInterest(
                                topicsOfInterest: List.from(currentPreferenceValue)..add(value),
                              ),
                            );
                            widget.onSavePreference(insurancesPreference);
                            controller.clear();
                          }
                          _reset();
                        },
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Written in topics of interest:',
                        style: UiTextStyle.primaryTextStyle,
                      ),
                      const SizedBox(height: 10),
                      WrittenItemsListWidget(
                        writtenItems: writtenTopics,
                        onDelete: (item) {
                          final insurancesPreference =
                              preferences.topicsOfInterestPreferenceModel.copyWith(
                            mappedSettings: PreferenceSettingModel.topicsOfInterest(
                              topicsOfInterest: List.from(currentPreferenceValue)..remove(item),
                            ),
                          );
                          widget.onSavePreference(insurancesPreference);
                          _reset();
                        },
                        onUpdate: (item) {
                          itemForUpdate = item;
                          controller.text = item;
                          focusNode.requestFocus();
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

class _DefaultOptionsList extends StatelessWidget {
  const _DefaultOptionsList({
    required this.defaultSelectedTopics,
    required this.onTap,
  });

  final List<String> defaultSelectedTopics;
  final Function(String label) onTap;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: topicsList
          .map(
            (element) => SelectedButton(
              selected: defaultSelectedTopics.contains(element),
              label: element,
              onTap: onTap,
            ),
          )
          .toList(),
    );
  }
}

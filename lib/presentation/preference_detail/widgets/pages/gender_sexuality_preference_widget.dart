import 'package:flutter/material.dart';
import 'package:siento_find_provider/core/const_values.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/custom_radio_button_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/selectable_button_widget.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class GenderSexualityPreferenceWidget extends StatefulWidget {
  const GenderSexualityPreferenceWidget({super.key, required this.onSavePreference});

  final Function(PreferenceItemModel model) onSavePreference;

  @override
  State<GenderSexualityPreferenceWidget> createState() => _GenderSexualityPreferenceWidgetState();
}

class _GenderSexualityPreferenceWidgetState extends State<GenderSexualityPreferenceWidget> {
  List<String> selectedGenders = [];

  String valueSelected = '';

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
                      setState(() {
                        if (selectedGenders.contains(label)) {
                          selectedGenders.remove(label);
                        } else {
                          selectedGenders.add(label);
                        }
                      });
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
              selected: valueSelected == element,
              onChanged: (value) {
                setState(() {
                  valueSelected = element;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

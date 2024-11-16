import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/custom_text_field_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/selectable_button_widget.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class CultureFaithPreferenceWidget extends StatefulWidget {
  const CultureFaithPreferenceWidget({super.key, required this.onSavePreference});

  final Function(PreferenceItemModel model) onSavePreference;

  @override
  State<CultureFaithPreferenceWidget> createState() => _CultureFaithPreferenceWidgetState();
}

class _CultureFaithPreferenceWidgetState extends State<CultureFaithPreferenceWidget> {
  static const culturesList = [
    'Black & African American',
    'Hispanic & Latino',
    'Pacific Islander',
    'Asian',
    'Native American',
  ];

  static const religionsList = [
    'Muslim',
    'Christian',
    'Buddhist',
    'Jewish',
    'Hindu',
    'Atheist',
    'No religious preference',
  ];

  List<String> selectedCultures = [];
  List<String> selectedReligions = [];

  List<String> writtenReligions = [
    'Agnostic',
    'Agnostic',
    'Agnostic',
    'Agnostic',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
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
                    selected: selectedCultures.contains(element),
                    label: element,
                    onTap: (label) {
                      setState(() {
                        if (selectedCultures.contains(label)) {
                          selectedCultures.remove(label);
                        } else {
                          selectedCultures.add(label);
                        }
                      });
                    },
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
            hintText: 'Your cultural interest',
            onChanged: (value) {},
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 40, right: 10, bottom: 30),
            child: Divider(height: 1, color: UiColors.lightGray, thickness: 1),
          ),
          Text('Faith', style: UiTextStyle.headerPreferencesTextStyle),
          const SizedBox(height: 30),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: religionsList
                .map(
                  (element) => SelectedButton(
                    selected: selectedReligions.contains(element),
                    label: element,
                    onTap: (label) {
                      setState(() {
                        if (selectedReligions.contains(label)) {
                          selectedReligions.remove(label);
                        } else {
                          selectedReligions.add(label);
                        }
                      });
                    },
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
            hintText: 'Your faith interest',
            onChanged: (value) {},
          ),
          const SizedBox(height: 30),
          Text(
            'Written in culture and religion topics:',
            style: UiTextStyle.primaryTextStyle,
          ),
          Flexible(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              itemCount: writtenReligions.length,
              itemBuilder: (context, index) {
                final currentTopic = writtenReligions[index];
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Text(
                        '"$currentTopic"',
                        style: UiTextStyle.primaryTextStyle.copyWith(fontSize: 15.sp),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit_outlined, color: UiColors.intenseGrey, size: 28),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.close_outlined, color: UiColors.intenseGrey, size: 28),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

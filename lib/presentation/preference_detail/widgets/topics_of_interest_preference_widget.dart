import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/custom_text_field_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/selectable_button_widget.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class TopicsOfInterestPreferenceWidget extends StatefulWidget {
  const TopicsOfInterestPreferenceWidget({super.key, required this.onSavePreference});

  final Function(PreferenceItemModel model) onSavePreference;

  @override
  State<TopicsOfInterestPreferenceWidget> createState() => _TopicsOfInterestPreferenceWidgetState();
}

class _TopicsOfInterestPreferenceWidgetState extends State<TopicsOfInterestPreferenceWidget> {
  static const topicsList = [
    'Substance Use',
    'Work Stress',
    'Domestic Violence',
    'Depression',
    'Anxiety',
    'Child Accidents or Callouts',
    'Relationships',
    'Financial Struggles',
    'Anger/Aggression',
    'Family Traumas',
    'Pregnancy or Childbirth',
    'LGBTQIA+',
    'Eating Disorders',
    'Grief & Loss'
  ];

  List<String> selectedTopics = [];

  List<String> writtenTopics = [
    'Confidence',
    'Aging',
  ];

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
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: topicsList
                .map(
                  (element) => SelectedButton(
                    selected: selectedTopics.contains(element),
                    label: element,
                    onTap: (label) {
                      setState(() {
                        if (selectedTopics.contains(label)) {
                          selectedTopics.remove(label);
                        } else {
                          selectedTopics.add(label);
                        }
                      });
                    },
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 30),
          Text(
            'Please write in other topics here:',
            style: UiTextStyle.primaryTextStyle,
          ),
          const SizedBox(height: 10),
          CustomTextFieldWidget(
            hintText: 'Other topics',
            onChanged: (value) {},
          ),
          const SizedBox(height: 30),
          Text(
            'Written in topics of interest:',
            style: UiTextStyle.primaryTextStyle,
          ),
          Flexible(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              itemCount: writtenTopics.length,
              itemBuilder: (context, index) {
                final currentTopic = writtenTopics[index];
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



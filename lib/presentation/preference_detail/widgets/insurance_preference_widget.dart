import 'package:flutter/material.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/custom_text_field_widget.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class InsurancePreferenceWidget extends StatelessWidget {
  const InsurancePreferenceWidget({super.key, required this.onSavePreference});

  final Function(PreferenceItemModel model) onSavePreference;

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
          const _InsurancesList(),
          const SizedBox(height: 40),
          CustomTextFieldWidget(
            hintText: 'Add your insurance company',
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}

class _InsurancesList extends StatelessWidget {
  const _InsurancesList();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Icon(Icons.check_rounded, color: UiColors.deepGreen),
            const SizedBox(width: 10),
            Expanded(child: Text('Health Partners', style: UiTextStyle.primaryTextStyle)),
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_outline_outlined,
                color: UiColors.deftBlue800,
              ),
            ),
          ],
        ),
        Text(
          'You are automatically registered as having Health Partners through your organization. If that is not accurate, please delete it from the list and write in your insurance company.',
          style: UiTextStyle.tabsTextStyle,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/custom_radio_button_widget.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class ServiceTypePreferenceWidget extends StatefulWidget {
  const ServiceTypePreferenceWidget({super.key, required this.onSavePreference});

  final Function(PreferenceItemModel model) onSavePreference;

  @override
  State<ServiceTypePreferenceWidget> createState() => _ServiceTypePreferenceWidgetState();
}

class _ServiceTypePreferenceWidgetState extends State<ServiceTypePreferenceWidget> {
  static const routeOfServiceOptions = [
    'In person services',
    'Online/Telehealth services',
    'No preference',
  ];

  static const typeOfServiceOptions = [
    'Individual Therapy (just for me)',
    'Couples/Marriage Therapy',
    'Family Therapy',
    'Child/Teen Individual Therapy',
    'Getting medication',
  ];

  String routeOfServiceSelected = '';
  String typeOfServiceSelected = '';

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
          Align(
            alignment: Alignment.center,
            child: Text('Route of Service', style: UiTextStyle.sidePanelNameTextStyle),
          ),
          const SizedBox(height: 10),
          ...routeOfServiceOptions.map(
            (element) => CustomRadioButton(
              label: element,
              selected: routeOfServiceSelected == element,
              onChanged: (value) {
                setState(() {
                  routeOfServiceSelected = element;
                });
              },
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
              selected: typeOfServiceSelected == element,
              onChanged: (value) {
                setState(() {
                  typeOfServiceSelected = element;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

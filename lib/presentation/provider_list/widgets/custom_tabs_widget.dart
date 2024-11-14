import 'package:flutter/material.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/presentation/provider_list/widgets/custom_tab_item_widget.dart';
import 'package:siento_find_provider/shared/state/find_provider_notifier.dart';

class CustomTabsWidget extends StatefulWidget {
  const CustomTabsWidget({super.key});

  @override
  State<CustomTabsWidget> createState() => _CustomTabsWidgetState();
}

class _CustomTabsWidgetState extends State<CustomTabsWidget> {
  String selected = ProvidersTypes.therapy.getName();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: UiColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: CustomTabItemWidget(
              label: ProvidersTypes.therapy.getName(),
              onTap: (label) => setState(() {
                selected = label;
              }),
              isSelected: selected == ProvidersTypes.therapy.getName(),
            ),
          ),
          Expanded(
            flex: 3,
            child: CustomTabItemWidget(
              label: ProvidersTypes.groups.getName(),
              onTap: (label) => setState(() {
                selected = label;
              }),
              isSelected: selected == ProvidersTypes.groups.getName(),
            ),
          ),
          Expanded(
            flex: 4,
            child: CustomTabItemWidget(
              label: ProvidersTypes.psychiatry.getName(),
              onTap: (label) => setState(() {
                selected = label;
              }),
              isSelected: selected == ProvidersTypes.psychiatry.getName(),
            ),
          ),
          Expanded(
            flex: 3,
            child: CustomTabItemWidget(
              label: ProvidersTypes.inpatient.getName(),
              onTap: (label) => setState(() {
                selected = label;
              }),
              isSelected: selected == ProvidersTypes.inpatient.getName(),
            ),
          ),
          Expanded(
            flex: 2,
            child: CustomTabItemWidget(
              label: ProvidersTypes.all.getName(),
              onTap: (label) => setState(() {
                selected = label;
              }),
              isSelected: selected == ProvidersTypes.all.getName(),
              lastItem: true,
            ),
          ),
        ],
      ),
    );
  }
}

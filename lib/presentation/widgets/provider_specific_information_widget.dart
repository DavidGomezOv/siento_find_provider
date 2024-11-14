import 'package:flutter/material.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class ProviderSpecificInformationWidget extends StatelessWidget {
  const ProviderSpecificInformationWidget({
    super.key,
    required this.icons,
    required this.label,
    this.fontSize = 14,
  });

  final List<Icon> icons;
  final String label;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...icons,
        const SizedBox(width: 5),
        Text(
          label,
          style: UiTextStyle.tabsTextStyle.copyWith(fontSize: fontSize),
        ),
      ],
    );
  }
}

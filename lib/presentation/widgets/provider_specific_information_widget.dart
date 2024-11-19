import 'package:flutter/material.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class ProviderSpecificInformationWidget extends StatelessWidget {
  const ProviderSpecificInformationWidget({
    super.key,
    required this.icons,
    required this.label,
    this.fontSize = 14,
    this.fontWeight,
  });

  final List<Icon> icons;
  final String label;
  final double fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...icons,
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            label,
            style: UiTextStyle.tabsTextStyle.copyWith(fontSize: fontSize, fontWeight: fontWeight),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

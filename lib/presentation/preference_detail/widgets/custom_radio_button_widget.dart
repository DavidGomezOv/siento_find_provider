import 'package:flutter/material.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.label,
    required this.selected,
    required this.onChanged,
  });

  final String label;
  final bool selected;
  final Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(label),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Transform.scale(
            scale: 1.4,
            child: Checkbox(
              side: const BorderSide(color: UiColors.lightGray, width: 1),
              value: selected,
              onChanged: (_) => onChanged(label),
              shape: const CircleBorder(),
              checkColor: selected ? UiColors.requestButton : UiColors.white,
              fillColor: WidgetStatePropertyAll(selected ? UiColors.requestButton : UiColors.white),
            ),
          ),
          Text(label, style: UiTextStyle.primaryTextStyle),
        ],
      ),
    );
  }
}

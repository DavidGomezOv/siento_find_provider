import 'package:flutter/material.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class CustomTabItemWidget extends StatelessWidget {
  const CustomTabItemWidget({
    super.key,
    required this.label,
    required this.onTap,
    required this.isSelected,
    this.lastItem = false,
  });

  final String label;
  final Function(String label) onTap;
  final bool isSelected;
  final bool lastItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(label),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? UiColors.requestButton : null,
          border: lastItem
              ? null
              : const Border(
                  right: BorderSide(width: 1, color: UiColors.white300),
                ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          label,
          style: UiTextStyle.tabsTextStyle.copyWith(
            color: isSelected ? UiColors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}

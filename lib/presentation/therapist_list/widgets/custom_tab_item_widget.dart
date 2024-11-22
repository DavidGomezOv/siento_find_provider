import 'package:flutter/material.dart';
import 'package:siento_find_therapist/core/enums.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class CustomTabItemWidget extends StatelessWidget {
  const CustomTabItemWidget({
    super.key,
    required this.therapistType,
    required this.onTap,
    required this.isSelected,
    this.lastItem = false,
  });

  final TherapistType therapistType;
  final Function(TherapistType therapistType) onTap;
  final bool isSelected;
  final bool lastItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(therapistType),
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
          therapistType.displayValue,
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

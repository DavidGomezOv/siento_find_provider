import 'package:flutter/material.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class SelectedButton extends StatelessWidget {
  const SelectedButton({
    super.key,
    required this.selected,
    required this.label,
    required this.onTap,
  });

  final bool selected;
  final String label;
  final Function(String label) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(label),
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: selected ? UiColors.requestButton : UiColors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 1),
            ),
          ],
        ),
        duration: const Duration(milliseconds: 200),
        child: Text(
          label,
          style: UiTextStyle.personNameRow.copyWith(
            color: selected ? UiColors.white : UiColors.primaryText,
          ),
        ),
      ),
    );
  }
}

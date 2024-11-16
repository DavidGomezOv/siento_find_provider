import 'package:flutter/material.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class PreferenceItemWidget extends StatelessWidget {
  const PreferenceItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String description;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10, left: 14, right: 14),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        decoration: BoxDecoration(
          color: UiColors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: UiColors.intenseGrey, size: 26),
            const SizedBox(width: 18),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: UiTextStyle.sidePanelNameTextStyle),
                  Text(
                    description,
                    style: UiTextStyle.personNameRow.copyWith(color: UiColors.lightGray),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 18),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: UiColors.lightGray,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

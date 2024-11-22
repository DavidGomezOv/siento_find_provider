import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () => context.pop(),
          child: Row(
            children: [
              const Icon(Icons.arrow_back_rounded, color: UiColors.intenseGrey),
              Text('Back', style: UiTextStyle.personNameRow)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class VettedMeaningDialogContent extends StatelessWidget {
  const VettedMeaningDialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close_outlined),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Text(
                'What does it mean that this resource has been vetted?',
                style: UiTextStyle.personNameRow.copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
                style: UiTextStyle.tabsTextStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}

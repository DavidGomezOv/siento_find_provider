import 'package:flutter/material.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class DeleteInsuranceDialogContent extends StatelessWidget {
  const DeleteInsuranceDialogContent({super.key, required this.onDelete});

  final Function() onDelete;

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
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Are you sure you’d like to delete Health Partners as your insurance?',
                style: UiTextStyle.primaryTextStyle.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(
                            side: BorderSide(color: UiColors.requestButton, width: 1),
                          ),
                          backgroundColor: UiColors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Keep It',
                          style:
                              UiTextStyle.buttonTextStyle.copyWith(color: UiColors.requestButton),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: UiColors.iconRed,
                        ),
                        onPressed: () {
                          onDelete();
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Delete It',
                          style: UiTextStyle.buttonTextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}

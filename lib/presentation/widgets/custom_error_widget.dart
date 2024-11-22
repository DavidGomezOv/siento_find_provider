import 'package:flutter/material.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: UiTextStyle.primaryTextStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}

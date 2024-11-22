import 'package:flutter/material.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

showCommonSnackBar(BuildContext context, String message) => ScaffoldMessenger.of(context)
  ..hideCurrentSnackBar()
  ..showSnackBar(
    SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.black87,
      content: Text(
        message,
        style: UiTextStyle.personNameRow.copyWith(color: UiColors.white),
        textAlign: TextAlign.center,
      ),
    ),
  );

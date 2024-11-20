import 'package:flutter/material.dart';

void showCustomDialog(
  BuildContext context, {
  required Widget content,
  Color barrierColor = Colors.black26,
  Color backgroundColor = Colors.white,
  AlignmentGeometry alignment = Alignment.center,
  bool barrierDismissible = true,
  EdgeInsets? insetPadding,
}) async {
  await showDialog(
    barrierColor: barrierColor,
    barrierDismissible: barrierDismissible,
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: backgroundColor,
        alignment: alignment,
        insetPadding: insetPadding,
        child: content,
      );
    },
  );
}

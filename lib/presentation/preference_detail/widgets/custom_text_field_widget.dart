import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.onChanged,
  });

  final String hintText;
  final Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        filled: true,
        fillColor: UiColors.white,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          borderSide: BorderSide(color: UiColors.lightGray, width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          borderSide: BorderSide(color: UiColors.deftBlue, width: 1),
        ),
        hintText: hintText,
        hintStyle: UiTextStyle.primaryTextStyle.copyWith(
          fontSize: 15.sp,
          color: UiColors.lightGray,
        ),
      ),
      style: UiTextStyle.primaryTextStyle.copyWith(fontSize: 15.sp),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.onSubmitted,
    this.controller,
    this.focusNode,
    this.suffix,
  });

  final String hintText;
  final Function(String value) onSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: controller,
      textInputAction: TextInputAction.done,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: suffix,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
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
      textAlignVertical: TextAlignVertical.center,
      style: UiTextStyle.primaryTextStyle.copyWith(fontSize: 15.sp),
    );
  }
}

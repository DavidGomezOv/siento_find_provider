import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';

class UiTextStyle {
  static String? nunito = GoogleFonts.nunito().fontFamily;

  static TextStyle headerTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    color: UiColors.headerText,
    fontFamily: nunito,
  );

  static TextStyle privacyPolicyTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    color: UiColors.white,
    fontFamily: nunito,
  );

  static TextStyle primaryTextStyle = TextStyle(
    fontSize: 16.sp,
    color: UiColors.primaryText,
    fontFamily: nunito,
  );

  static TextStyle personNameRow = TextStyle(
    fontSize: 14.sp,
    color: UiColors.primaryText,
    fontFamily: nunito,
  );

  static TextStyle overviewTextStyle = TextStyle(
    fontSize: 16.sp,
    color: UiColors.primaryText,
    fontFamily: nunito,
  );

  static TextStyle popupTextStyle = TextStyle(
    fontSize: 17.sp,
    color: UiColors.primaryText,
    fontFamily: nunito,
  );

  static TextStyle navTextStyle = TextStyle(
    fontSize: 17.sp,
    color: UiColors.white,
    fontFamily: nunito,
  );

  static TextStyle supportTextStyle = TextStyle(
    fontSize: 16.sp,
    color: UiColors.supportText,
    fontFamily: nunito,
  );

  static TextStyle titleTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 25.sp,
    color: UiColors.white,
    fontFamily: nunito,
  );

  static TextStyle loginScreenTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 25.sp,
    color: UiColors.deftBlue800,
    fontFamily: nunito,
  );

  static TextStyle gradientTitleTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 25.sp,
    color: UiColors.white,
    fontFamily: nunito,
  );

  static TextStyle chipTextStyle = TextStyle(
    fontSize: 16.sp,
    color: UiColors.white,
    fontFamily: nunito,
  );

  static TextStyle buttonTextStyle = TextStyle(
    fontSize: 16.sp,
    color: UiColors.white,
    fontFamily: nunito,
  );

  static TextStyle signUpInTextStyle = TextStyle(
    fontSize: 16.sp,
    color: UiColors.signUpInText,
    fontFamily: nunito,
    fontWeight: FontWeight.bold,
  );

  static TextStyle alreadyHaveTextStyle = TextStyle(
    fontSize: 16.sp,
    color: UiColors.lightGray,
    fontFamily: nunito,
  );

  static TextStyle sidePanelPrimaryTextStyle = TextStyle(
    fontSize: 16.sp,
    color: UiColors.deftBlue,
    fontFamily: nunito,
  );

  static TextStyle sidePanelOrgTextStyle = TextStyle(
    fontSize: 16.sp,
    color: UiColors.deftBlue,
    fontFamily: nunito,
    fontWeight: FontWeight.w100,
  );

  static TextStyle sidePanelNameTextStyle = TextStyle(
    fontSize: 18.sp,
    color: UiColors.deftBlue,
    fontFamily: nunito,
  );

  static TextStyle tabsTextStyle = TextStyle(
    fontSize: 13.sp,
    color: UiColors.primaryText,
    fontFamily: nunito,
  );

  static TextStyle headerPreferencesTextStyle = TextStyle(
    fontSize: 22.sp,
    color: UiColors.primaryText,
    fontFamily: nunito,
  );
}
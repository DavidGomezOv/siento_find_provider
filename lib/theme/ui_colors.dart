import 'package:flutter/material.dart';

class UiColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color white100 = Color(0xFFFAFAFA);
  static const Color white200 = Color(0xFFF5F5F5);
  static const Color white300 = Color(0xFFF0F0F0);

  static const Color deftBlue = Color(0xFF25345F);
  static const Color deftBlue500 = Color(0xFF3E4D7B);
  static const Color deftBlue600 = Color(0xFF374674);
  static const Color deftBlue700 = Color(0xFF303D69);
  static const Color deftBlue800 = Color(0xFF28345C);

  static const Color aliceBlue50 = Color(0xFFE5F0FD);
  static const Color aliceBlue100 = Color(0xFFC3D8F9);
  static const Color aliceBlue200 = Color(0xFFA1C1F3);
  static const Color aliceBlue300 = Color(0xFF81A8EC);

  static const Color byzantineBlue50 = Color(0xFFEAEBFB);
  static const Color byzantineBlue100 = Color(0xFFCACDF4);
  static const Color byzantineBlue200 = Color(0xFFA6ADED);
  static const Color byzantineBlue300 = Color(0xFF818CE7);
  static const Color byzantineBlue400 = Color(0xFF6370E1);
  static const Color byzantineBlue500 = Color(0xFF4555DB);
  static const Color byzantineBlue600 = Color(0xFF3E4CD0);
  static const Color byzantineBlue700 = Color(0xFF3441C3);

  static const Color tropicalIndigo50 = Color(0xFFEDECFC);
  static const Color tropicalIndigo100 = Color(0xFFD0CEF6);
  static const Color tropicalIndigo200 = Color(0xFFB1AEF2);
  static const Color tropicalIndigo300 = Color(0xFF918DEC);
  static const Color tropicalIndigo400 = Color(0xFF7A70E6);
  static const Color tropicalIndigo500 = Color(0xFF6755DA);
  static const Color tropicalIndigo600 = Color(0xFF614CCF);
  static const Color tropicalIndigo700 = Color(0xFF5840C2);

  static const Color robbinEggBlue50 = Color(0xFFE3F8F8);
  static const Color robbinEggBlue100 = Color(0xFFBAEDED);
  static const Color robbinEggBlue200 = Color(0xFF8EE1E3);
  static const Color robbinEggBlue300 = Color(0xFF62D5DA);
  static const Color robbinEggBlue400 = Color(0xFF5ECDD4);
  static const Color robbinEggBlue500 = Color(0xFF59C3D0);
  static const Color robbinEggBlue600 = Color(0xFF51B3BE);
  static const Color robbinEggBlue700 = Color(0xFF479EA4);

  static const Color error = Color(0xFFA53124);
  static const Color errorBG = Color(0xFFF4E9E9);

  static const Color warning = Color(0xFFB54708);
  static const Color warningBG = Color(0xFFF5F0E2);

  static const Color success = Color(0xFF027A48);
  static const Color successBG = Color(0xFFE3F3E9);

  static const Color pillBackground = Color(0xFF928DF3);
  static const Color iconForeground = Color(0xFF4F58E3);
  static const Color iconBackground = Color(0xFF928DF3);
  static const Color buttonBackground = Color(0xFF4057E3);
  static const Color requestButton = Color(0xFF4556DB);

  static const Color primaryText = Color(0xFF47506A);
  static const Color headerText = Color(0xFF11115A);
  static const Color supportText = Color(0xFF00B5CC);
  static const Color signUpInText = Color(0xFF4057E3);
  static const Color lightGray = Color(0xFFA1A4B2);
  static const Color bottomSelectionColor = Color(0xFF63D7DA);
  static const Color onboardingBlue = Color(0xFFF4F7FE);
  static const Color intenseGrey = Color(0xFF28345F);
  static const Color mediumYellow = Color(0xFFA1882C);

  static const Color chatBackground = Color(0xFFE5F0FF);

  static LinearGradient titleTextGradient = const LinearGradient(
    colors: [
      supportText,
      pillBackground,
      iconBackground,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static LinearGradient textGradient = const LinearGradient(
    colors: [
      Color(0xff00DADC),
      Color(0xff2986E1),
      Color(0xff4057E3),
      Color(0xff6D74EC),
      Color(0xff928DF3),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Color green = Colors.green;
  static const Color orange = Colors.orange;


  static const Color iconRed = Color(0xFFA84747);
  static const Color lightPink = Color(0xFFDE89C7);
  static const Color deepGreen = Color(0xFF528557);
  static const Color yellowMustard = Color(0xFFA98847);
  static const Color lightBlue = Color(0xFF667DD0);
  static const Color lightPurple = Color(0xFFC0BDF9);
}
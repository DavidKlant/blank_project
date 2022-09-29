import 'package:flutter/material.dart';

class AppDesign {
  // THEME DATA
  static ThemeData themeData(BuildContext context) {
    return Theme.of(context);
  }

  static TextTheme textTheme(BuildContext context) {
    return themeData(context).textTheme;
  }

  // BORDER RADII
  static BorderRadius borderRadius10 = BorderRadius.circular(10);
  static BorderRadius borderRadius15 = BorderRadius.circular(15);
  static BorderRadius borderRadiusFull = BorderRadius.circular(9999);

  // PADDING
  static const double buttonPadding = stdContentPadding;
  static const double stdContentPadding = spacer16;
  static const double stdPagePadding = spacer24;

  // SPACER
  static const double spacer8 = 8;
  static const double spacer16 = 16;
  static const double spacer24 = 24;
  static const double spacer32 = 32;
  static const double spacer40 = 40;
  static const double spacer48 = 48;
  static const double spacer56 = 56;
  static const double spacer80 = 80;

  // ANIMATION
  static const Duration verySlowAnimationTime = Duration(milliseconds: 1500);
  static const Duration slowAnimationTime = Duration(milliseconds: 750);
  static const Duration regularAnimationTime = Duration(milliseconds: 300);
  static const Duration fastAnimationTime = Duration(milliseconds: 200);
  static const Curve standardStaticTransitionCurve = Curves.ease;
  static const Curve bounceCurve = Curves.bounceOut;
  static const Curve repeatingCurve = Curves.easeInOut;
}

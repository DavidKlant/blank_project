import 'package:flutter/material.dart';

class UIColors {
  static const Color black = Color(0xFF000000);
  static Color black050 = UIColors.black.withOpacity(0.5);
  static Color black035 = UIColors.black.withOpacity(0.35);

  static const Color white = Color(0xFFFFFFFF);
  static Color white080 = white.withOpacity(0.8);
  static Color whiteO60 = white.withOpacity(0.6);
  static Color whiteO30 = white.withOpacity(0.3);

  static const Color darkBlue01 = Color(0xFF3A4361);
  static const Color darkBlue02 = Color(0xFF242A3D);

  // used for unselected botBarItems
  static const Color mediumGrey = Color(0xFF979797);

  static Color success = Colors.green;
  static Color failure = Colors.red;

  /// achievements colors
  static const Color goldTop = Color(0xFFDCC600);
  static const Color goldBottom = Color(0xFFCF8E10);

  static const Color silverTop = Color(0xFFA6A59A);
  static const Color silverBottom = Color(0xFF7A776D);

  static const Color bronzeTop = Color(0xFFD1A057);
  static const Color bronzeBottom = Color(0xFF7E5C29);
}

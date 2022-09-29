import 'package:blank_project/design/app_design.dart';
import 'package:blank_project/design/ui_colors.dart';
import 'package:flutter/material.dart';

class AppDesignThemeData {
  static TextTheme textTheme = const TextTheme(
    /*    100 – Thin.
          200 – Extra Light (Ultra Light)
          300 – Light.
          400 – Normal / regular.
          500 – Medium.
          600 – Semi Bold (Demi Bold)
          700 – Bold.
          800 – Extra Bold (Ultra Bold)*/
    bodyLarge: TextStyle(
      fontSize: 18,
      height: 1.56,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w300,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      height: 1.43,
      fontWeight: FontWeight.w300,
    ),
    headlineLarge: TextStyle(
      fontSize: 40,
      height: 1.3,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      fontSize: 32,
      height: 1.31,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      height: 1.33,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      height: 1.4,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 14,
      height: 1.14,
      letterSpacing: 1,
      fontWeight: FontWeight.w500,
    ),
  ).apply(
    bodyColor: UIColors.white,
    displayColor: UIColors.white,
  );

  static ThemeData get themeData => ThemeData(
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return UIColors.white;
            }
            return UIColors.white;
          }),
          trackColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return UIColors.success;
            }
            return UIColors.whiteO30;
          }),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(Colors.red),
        ),
        sliderTheme: SliderThemeData(
            overlayShape: SliderComponentShape.noOverlay,
            activeTrackColor: Colors.red,
            inactiveTrackColor: Colors.red,
            inactiveTickMarkColor: Colors.transparent,
            activeTickMarkColor: Colors.transparent,
            thumbColor: Colors.red,
            valueIndicatorColor: Colors.red,
            trackHeight: 13,
            showValueIndicator: ShowValueIndicator.always,
            overlayColor: Colors.red,
            thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 12, disabledThumbRadius: 12)),
        cardTheme: CardTheme(
          elevation: 8,
          clipBehavior: Clip.hardEdge,
          color: UIColors.backgroundColor,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: AppDesign.borderRadiusSmall,
          ),
          shadowColor: Colors.black,
        ),
        textTheme: textTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                const EdgeInsets.all(AppDesign.buttonPadding)),
            overlayColor:
                MaterialStateProperty.all(Colors.grey.withOpacity(.2)),
            elevation: MaterialStateProperty.all(0),
            minimumSize: MaterialStateProperty.all(
              const Size(0, 50),
            ),
            enableFeedback: true,
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontFamily: "SpartanSemiBold",
                fontSize: 16,
                height: 1.5,
              ),
            ),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: AppDesign.borderRadiusSmall,
              ),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Colors.white.withOpacity(.4)),
            elevation: MaterialStateProperty.all(0),
            minimumSize: MaterialStateProperty.all(
              const Size(double.infinity, 50),
            ),
            textStyle: MaterialStateProperty.all(
              const TextStyle(color: UIColors.white),
            ),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
        ),
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.zero,
          dense: true,
          style: ListTileStyle.list,
          minLeadingWidth: 0,
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
            linearTrackColor: Colors.red,
            color: Colors.red,
            refreshBackgroundColor: Colors.red,
            linearMinHeight: 8),
        iconTheme: const IconThemeData(
          color: UIColors.white,
          size: 32,
        ),
        snackBarTheme: const SnackBarThemeData(
            backgroundColor: Colors.transparent,
            elevation: 0,
            behavior: SnackBarBehavior.floating),
        colorScheme: const ColorScheme(
            primary: UIColors.white,
            onPrimary: UIColors.backgroundColor,
            secondary: UIColors.backgroundColor,
            onSecondary: UIColors.white,
            error: Colors.red,
            onError: Colors.red,
            background: UIColors.backgroundColor,
            onBackground: UIColors.white,
            surface: Colors.red,
            onSurface: Colors.red,
            brightness: Brightness.light,
            tertiary: Colors.red,
            onTertiary: Colors.red,
            outline: Colors.red // This is our text color.
            ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: UIColors.white,
          unselectedItemColor: UIColors.unselectedColor,
          selectedLabelStyle: textTheme.labelSmall,
          unselectedLabelStyle: textTheme.labelSmall,
        ),
        backgroundColor: Colors.red,
        highlightColor: UIColors.white,
        scaffoldBackgroundColor: UIColors.backgroundColor,
        disabledColor: Colors.red,
      );
}

import 'package:cms/config/main.dart';
import 'package:cms/utils/navigator.dart';
import 'package:flutter/material.dart';

class DtextTheme {
  static TextTheme lightTextTheme = const TextTheme(
    labelSmall: TextStyle(color: ColorConfig.white1, fontSize: 14),
    labelMedium: TextStyle(
        color: ColorConfig.white1, fontSize: 16, fontWeight: FontWeight.w700),
    labelLarge: TextStyle(color: ColorConfig.white1, fontSize: 18),
    bodyLarge: TextStyle(color: ColorConfig.gray3, fontSize: 18),
    bodyMedium: TextStyle(color: ColorConfig.gray3, fontSize: 16),
  );
}

class DSnackBarTheme {
  static SnackBarThemeData lightSnackBarTheme =
      SnackBarThemeData(insetPadding: EdgeInsets.all(Spacing.medium));

  // TODO: Desgin it latter
  static SnackBarThemeData darkSnackBarTheme =
      DSnackBarTheme.lightSnackBarTheme;
}

class DInputTheme {
  static InputDecorationTheme lightInputTheme = const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0, color: ColorConfig.gray1),
          borderRadius: BorderRadius.all(Radius.circular(10.0))));
}

class DDrawerTheme {
  static DrawerThemeData lightDrawerTheme =
      const DrawerThemeData(backgroundColor: ColorConfig.purple4);
}

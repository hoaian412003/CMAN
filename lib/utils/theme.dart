import 'package:cms/theme/light.dart';
import 'package:cms/theme/theme.d.dart';
import 'package:flutter/material.dart';

class ThemeHelper {
  final BuildContext context;

  const ThemeHelper({required this.context});

  ITheme getTheme() {
    final mode = Theme.of(context).brightness;
    switch (mode) {
      case Brightness.light:
        return lightTheme;
      default:
        return lightTheme;
    }
  }
}

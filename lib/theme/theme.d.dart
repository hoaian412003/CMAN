import 'package:flutter/material.dart';

class ITextTheme {
  final TextStyle smallPrimaryText;
  final TextStyle mediumPrimaryText;
  final TextStyle largePrimaryText;
  final TextStyle smallSecondaryText;
  final TextStyle mediumSecondaryText;
  final TextStyle largeSecondaryText;
  final TextStyle smallLabelText;
  final TextStyle mediumLabelText;
  final TextStyle largeLabelText;

  const ITextTheme(
      {required this.smallPrimaryText,
      required this.mediumPrimaryText,
      required this.largePrimaryText,
      required this.smallSecondaryText,
      required this.mediumSecondaryText,
      required this.largeSecondaryText,
      required this.smallLabelText,
      required this.mediumLabelText,
      required this.largeLabelText});
}

class ITextInputTheme {
  final Color backgroundColor;
  final InputBorder enabledBorder;

  const ITextInputTheme(
      {required this.backgroundColor, required this.enabledBorder});
}

class IButtonTheme {
  final Color backgroundColor;

  const IButtonTheme({required this.backgroundColor});
}

class IToolBarTheme {
  final Color backgroundColor;
  const IToolBarTheme({required this.backgroundColor});
}

class IDrawerTheme {
  final Color backgroundColor;

  const IDrawerTheme({required this.backgroundColor});
}

class ITableTheme {
  final TextStyle keyStyle;
  final TextStyle typeStyle;
  final Color backgroundColor;
  final TextStyle tableNameStyle;

  const ITableTheme(
      {required this.keyStyle,
      required this.typeStyle,
      required this.backgroundColor,
      required this.tableNameStyle});
}

class ISchemaToolTheme {
  final Color backgroundColor;
  const ISchemaToolTheme({required this.backgroundColor});
}

class ITheme {
  final IDrawerTheme drawerTheme;
  final IButtonTheme mainButtonTheme;
  final ITextTheme textTheme;
  final ITextInputTheme textInputTheme;
  final IButtonTheme secondaryButtonTheme;
  final ITableTheme focusTable;
  final ITableTheme unFocusTable;
  final IToolBarTheme toolBarTheme;
  final ISchemaToolTheme schemaToolTheme;

  const ITheme({
    required this.drawerTheme,
    required this.mainButtonTheme,
    required this.textTheme,
    required this.textInputTheme,
    required this.secondaryButtonTheme,
    required this.focusTable,
    required this.unFocusTable,
    required this.toolBarTheme,
    required this.schemaToolTheme,
  });
}

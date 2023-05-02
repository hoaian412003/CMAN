import 'package:cms/config/main.dart';
import 'package:flutter/material.dart';
import 'package:cms/theme/main.dart';

/* class DTextTheme implements ITextTheme {
  labelSmall: TextStyle(color: ColorConfig.white1, fontSize: 14),
  labelMedium: TextStyle(
      color: ColorConfig.white1, fontSize: 16, fontWeight: FontWeight.w700),
  labelLarge: TextStyle(color: ColorConfig.white1, fontSize: 18),
  bodyLarge: TextStyle(color: ColorConfig.gray3, fontSize: 18),
  bodyMedium: TextStyle(color: ColorConfig.gray3, fontSize: 16),
} */

const textTheme = ITextTheme(
  smallPrimaryText: TextStyle(
      color: ColorConfig.black1, fontSize: 14, fontWeight: FontWeight.w400),
  mediumPrimaryText: TextStyle(
      color: ColorConfig.black1, fontSize: 16, fontWeight: FontWeight.w600),
  largePrimaryText: TextStyle(
      color: ColorConfig.black1, fontSize: 18, fontWeight: FontWeight.w700),
  smallSecondaryText: TextStyle(
      color: ColorConfig.gray3, fontWeight: FontWeight.w400, fontSize: 14),
  mediumSecondaryText: TextStyle(
      color: ColorConfig.gray3, fontWeight: FontWeight.w600, fontSize: 16),
  largeSecondaryText: TextStyle(
      color: ColorConfig.gray3, fontWeight: FontWeight.w700, fontSize: 18),
  smallLabelText: TextStyle(
      color: ColorConfig.white1, fontWeight: FontWeight.w400, fontSize: 14),
  mediumLabelText: TextStyle(
      color: ColorConfig.white1, fontWeight: FontWeight.w600, fontSize: 16),
  largeLabelText: TextStyle(
      color: ColorConfig.white1, fontWeight: FontWeight.w700, fontSize: 18),
);

const mainButtonTheme = IButtonTheme(
  backgroundColor: ColorConfig.purple3,
);

const secondaryButtonTheme = IButtonTheme(backgroundColor: ColorConfig.white2);

const textInputTheme = ITextInputTheme(
    backgroundColor: Colors.transparent,
    enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: BorderSize.small, color: ColorConfig.gray1),
        borderRadius: BorderRadius.all(RadiusConfig.medium)));

const drawerTheme = IDrawerTheme(backgroundColor: ColorConfig.purple4);

const focusTableTheme = ITableTheme(
    tableNameStyle: TextStyle(
        color: ColorConfig.purple1, fontSize: 20, fontWeight: FontWeight.w700),
    keyStyle: TextStyle(
        color: ColorConfig.blue2, fontSize: 16, fontWeight: FontWeight.w500),
    typeStyle: TextStyle(
        color: ColorConfig.orange1, fontSize: 16, fontWeight: FontWeight.w400),
    backgroundColor: ColorConfig.white1);

const toolBarTheme = IToolBarTheme(backgroundColor: ColorConfig.black4);

const schemaToolTheme = ISchemaToolTheme(backgroundColor: ColorConfig.black3);

const lightTheme = ITheme(
    textTheme: textTheme,
    mainButtonTheme: mainButtonTheme,
    textInputTheme: textInputTheme,
    drawerTheme: drawerTheme,
    secondaryButtonTheme: secondaryButtonTheme,
    focusTable: focusTableTheme,
    unFocusTable: focusTableTheme,
    toolBarTheme: toolBarTheme,
    schemaToolTheme: schemaToolTheme);

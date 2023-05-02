import 'package:cms/config/main.dart';
import 'package:cms/model/main.dart';
import 'package:cms/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => TablesModel())],
    child: MaterialApp(
      routes: routes,
      title: 'Overview',
      initialRoute: './',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.macOS: NoTransitionPageTransitionsBuilder()
          })),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    ),
  ));
}

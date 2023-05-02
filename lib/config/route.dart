import 'package:flutter/material.dart';
import 'package:cms/screens/main.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => const Cman(),
  '/dashboard': (context) => const Dashboard(),
  '/schema': (context) => const SchemaScreen(),
};

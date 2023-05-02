import 'package:cms/screens/main.dart';
import 'package:flutter/material.dart';

class Cman extends StatelessWidget {
  const Cman({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
        screenName: 'Open Cat',
        child: Material(
            child: Text(
          'hello, i\'am home screen',
          textDirection: TextDirection.rtl,
        )));
  }
}

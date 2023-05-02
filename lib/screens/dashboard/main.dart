import 'package:cms/screens/main.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
        screenName: 'Dashboard',
        child: Material(
            child: Text(
          'hello, i\'am dashboard',
          textDirection: TextDirection.rtl,
        )));
  }
}

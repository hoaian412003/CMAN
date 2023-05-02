import 'package:cms/config/main.dart';
import 'package:cms/screens/app_bar/left.dart';
import 'package:cms/screens/app_bar/right.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String screenName;

  const AppBarWidget({super.key, required this.screenName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Spacing.large, horizontal: Spacing.large),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [LeftWidget(screenName: screenName), const RightWidget()],
      ),
    );
  }
}

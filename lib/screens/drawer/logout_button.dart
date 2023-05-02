import 'package:cms/config/main.dart';
import 'package:cms/utils/main.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  logoutHandler() {}

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper(context: context).getTheme();

    return Container(
      padding: EdgeInsets.symmetric(vertical: Spacing.xlarge),
      child: ElevatedButton(
          onPressed: logoutHandler,
          child: Text('Logout', style: theme.textTheme.mediumPrimaryText),
          style: ElevatedButton.styleFrom(
              backgroundColor: theme.secondaryButtonTheme.backgroundColor)),
    );
  }
}

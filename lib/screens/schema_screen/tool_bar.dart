import 'package:cms/config/main.dart';
import 'package:cms/screens/schema_screen/edit_tools.dart';
import 'package:cms/utils/main.dart';
import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper(context: context).getTheme();

    return Container(
      child: Container(
          decoration: BoxDecoration(
              color: theme.toolBarTheme.backgroundColor,
              borderRadius: BorderRadius.all(RadiusConfig.small)),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(Spacing.small),
                      child: Container(child: const EditTools()))),
            ],
          )),
    );
  }
}

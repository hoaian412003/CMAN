import 'package:cms/config/main.dart';
import 'package:cms/screens/main.dart';
import 'package:cms/screens/schema_screen/tables.dart';
import 'package:cms/screens/schema_screen/tool_bar.dart';
import 'package:cms/utils/main.dart';
import 'package:flutter/material.dart';

class SchemaScreen extends StatelessWidget {
  const SchemaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper(context: context).getTheme();

    return Layout(
        screenName: 'Schema Configruation',
        child: Expanded(
          child: Container(
            padding: EdgeInsets.all(Spacing.large),
            child: Container(
              decoration: BoxDecoration(
                  color: theme.schemaToolTheme.backgroundColor,
                  borderRadius: BorderRadius.all(RadiusConfig.medium)),
              child: Column(
                children: const [
                  ToolBar(),
                  SizedBox(height: 30),
                  Expanded(child: TablesWidget()),
                ],
              ),
            ),
          ),
        ));
  }
}

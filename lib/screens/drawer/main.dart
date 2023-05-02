import 'package:cms/config/main.dart';
import 'package:cms/screens/drawer/brand_logo.dart';
import 'package:cms/screens/drawer/logout_button.dart';
import 'package:cms/screens/drawer/route_item.dart';
import 'package:cms/utils/navigator.dart';
import 'package:cms/utils/theme.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  toggleHandler() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper(context: context).getTheme();

    return Container(
        width: 200.0,
        decoration: BoxDecoration(
          color: theme.drawerTheme.backgroundColor,
        ),
        child: Column(
            children: const [BrandLogoWidget(), RouteItemWidget(), Bottom()]));
  }
}

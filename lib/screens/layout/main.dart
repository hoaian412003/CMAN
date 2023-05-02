import 'package:cms/screens/main.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  final Widget child;
  final String screenName;

  const Layout({super.key, required this.child, required this.screenName});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
          body: Row(
        children: [
          const DrawerWidget(),
          Expanded(
            child: Column(
              children: [
                AppBarWidget(
                  screenName: widget.screenName,
                ),
                widget.child,
              ],
            ),
          )
        ],
      )),
    );
  }
}

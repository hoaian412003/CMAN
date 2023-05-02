import 'package:cms/config/icon.dart';
import 'package:cms/config/main.dart';
import 'package:cms/utils/main.dart';
import 'package:cms/utils/navigator.dart';
import 'package:flutter/material.dart';

class DrawerItem {
  final String name;
  final String? iconLink;
  final String route;
  const DrawerItem({required this.name, this.iconLink, required this.route});

  Widget render(BuildContext context) {
    final navigation = NavigatorHelper(context: context);
    final route = navigation.getCurrentRoute();
    final theme = ThemeHelper(context: context).getTheme();
    final icon = iconLink ?? IconConfig.defaultRouteIcon;

    return Container(
      margin: EdgeInsets.only(top: Spacing.medium),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            navigation.navigate(this.route);
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset(icon, width: 30, height: 30),
            Container(
              margin: EdgeInsets.only(left: Spacing.x2large),
              child: Text(name,
                  style: theme.textTheme.smallLabelText.merge(TextStyle(
                      color: route?.name == this.route
                          ? ColorConfig.white1
                          : ColorConfig.gray2))),
            )
          ]),
        ),
      ),
    );
  }
}

final List<DrawerItem> drawerItems = [
  const DrawerItem(
      name: 'Schema', iconLink: AssetsImage.dataBaseIcon, route: '/schema'),
  const DrawerItem(
      name: 'Dashboard',
      iconLink: 'assets/images/Dashboard.png',
      route: '/dashboard'),
  const DrawerItem(name: 'User', route: '/user'),
  const DrawerItem(name: 'Event', route: '/event'),
  const DrawerItem(name: 'Gym', route: '/gym'),
];

class RouteItemWidget extends StatefulWidget {
  const RouteItemWidget({super.key});

  @override
  State<RouteItemWidget> createState() => _RouteItemWidgetState();
}

class _RouteItemWidgetState extends State<RouteItemWidget> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //write or call your logic
      //code will run when widget rendering complete
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawScrollbar(
        thickness: 5,
        thumbVisibility: true,
        controller: _controller,
        child: SingleChildScrollView(
          controller: _controller,
          child: Container(
              margin: EdgeInsets.only(
                  top: Spacing.x5large, bottom: Spacing.x5large),
              padding: EdgeInsets.symmetric(horizontal: Spacing.x2large),
              child: Column(
                children: [
                  ...drawerItems.map((route) {
                    return route.render(context);
                  })
                ],
              )),
        ),
      ),
    );
  }
}

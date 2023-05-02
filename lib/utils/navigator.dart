import 'package:cms/config/main.dart';
import 'package:cms/screens/drawer/route_item.dart';
import 'package:cms/widgets/main.dart';
import 'package:flutter/material.dart';

class NavigatorHelper {
  BuildContext context;
  NavigatorHelper({required this.context});

  void navigate(String route, {dynamic arguments}) {
    if (routes[route] == null) {
      _handleNotfoundRoute();
      return;
    }
    Navigator.pushNamed(context, route, arguments: arguments);
  }

  void back() {
    Navigator.pop(context);
  }

  // NOTE: Private method member
  void _handleNotfoundRoute() {
    AlertMessage.show(Messages.notFoundRoute, context);
  }

  RouteSettings? getCurrentRoute() {
    return ModalRoute.of(context)?.settings;
  }

  String getCurrentRouteName() {
    final routeName = ModalRoute.of(context)?.settings.name;
    String result = 'Unknown';

    drawerItems.forEach((element) {
      if (element.route == routeName) {
        result = element.name;
      }
    });
    return result;
  }
}

class NoTransitionPageTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return child;
  }
}

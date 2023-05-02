import 'package:cms/config/constant.dart';
import 'package:cms/config/main.dart';
import 'package:cms/utils/navigator.dart';
import 'package:cms/utils/theme.dart';
import 'package:flutter/material.dart';

class BrandLogoWidget extends StatelessWidget {
  const BrandLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper(context: context).getTheme();
    final navigator = NavigatorHelper(context: context);

    return Container(
        margin: EdgeInsets.only(top: Spacing.x5large),
        padding: EdgeInsets.only(left: Spacing.medium, right: Spacing.medium),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              navigator.navigate('/');
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/AppLogo.png'),
                Text(Constants.brandName, style: theme.textTheme.largeLabelText)
              ],
            ),
          ),
        ));
  }
}

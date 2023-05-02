import 'package:cms/screens/app_bar/export_csv_button.dart';
import 'package:cms/screens/app_bar/search_bar.dart';
import 'package:cms/utils/main.dart';
import 'package:cms/utils/navigator.dart';
import 'package:flutter/material.dart';

class LeftWidget extends StatelessWidget {
  final String screenName;

  const LeftWidget({super.key, required this.screenName});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper(context: context).getTheme();

    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(screenName,
              style: theme.textTheme.largeSecondaryText
                  .merge(const TextStyle(fontWeight: FontWeight.w400))),
          const SearchBarWidget(),
        ],
      ),
    );
  }
}

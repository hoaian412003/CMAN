import 'package:cms/config/icon.dart';
import 'package:cms/utils/main.dart';
import 'package:flutter/material.dart';
import 'package:cms/config/main.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper(context: context).getTheme();

    return Container(
      margin: EdgeInsets.only(left: Spacing.x2large),
      width: 250,
      child: TextFormField(
        style: theme.textTheme.mediumPrimaryText,
        decoration: InputDecoration(
            hintText: 'Search ...',
            hintStyle: theme.textTheme.smallSecondaryText
                .merge(const TextStyle(fontSize: 16)),
            enabledBorder: theme.textInputTheme.enabledBorder,
            focusedBorder: theme.textInputTheme.enabledBorder,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            isDense: true,
            prefixIcon: Icon(
              Icons.search,
              color: theme.textTheme.mediumSecondaryText.color,
            )),
      ),
    );
  }
}

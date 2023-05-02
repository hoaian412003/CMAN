import 'package:cms/screens/app_bar/avatar.dart';
import 'package:cms/screens/app_bar/export_csv_button.dart';
import 'package:flutter/material.dart';
import 'inbox.dart';

class RightWidget extends StatelessWidget {
  const RightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Help guides', style: theme.textTheme.titleMedium),
            const InboxWidget(),
            const ExportCsvButtonWidget(),
            const AvatarWidget()
          ],
        ));
  }
}

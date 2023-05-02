import 'package:cms/config/main.dart';
import 'package:cms/config/radius.dart';
import 'package:cms/utils/main.dart';
import 'package:cms/widgets/alert_message.dart';
import 'package:flutter/material.dart';

class ExportCsvButtonWidget extends StatelessWidget {
  const ExportCsvButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper(context: context).getTheme();

    return MouseRegion(
      child: ElevatedButton(
        onPressed: () {
          AlertMessage.show(Messages.handlerLatter, context);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: theme.mainButtonTheme.backgroundColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(RadiusConfig.small))),
        child: Row(children: [
          Icon(Icons.download,
              color: theme.textTheme.mediumLabelText.color, size: 16),
          Container(width: 10),
          Text('Export CSV', style: theme.textTheme.smallLabelText)
        ]),
      ),
    );
  }
}

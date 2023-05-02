import 'package:cms/config/main.dart';
import 'package:flutter/material.dart';

enum MessageTypes { success, error, warning }

class AlertMessage {
  static void show(Message message, BuildContext context) {
    Widget messageBox = Container();
    switch (message.type) {
      case MessageTypes.success:
        messageBox = _SuccessAlertMessage(message: message);
        break;
      case MessageTypes.error:
        messageBox = _ErrorAlertMessage(message: message);
        break;
      case MessageTypes.warning:
        messageBox = _WarningAlertMessage(message: message);
        break;
      default:
        messageBox = _SuccessAlertMessage(message: message);
    }

    final snackBar = SnackBar(
      content: messageBox,
      padding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class _SuccessAlertMessage extends StatelessWidget {
  final Message message;

  const _SuccessAlertMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
        color: ColorConfig.green1,
        padding: theme.snackBarTheme.insetPadding,
        child: Column(
          children: [
            Text(message.titile, style: theme.textTheme.labelMedium),
            Text(message.content, style: theme.textTheme.labelSmall),
          ],
        ));
  }
}

class _ErrorAlertMessage extends StatelessWidget {
  final Message message;

  const _ErrorAlertMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
        color: ColorConfig.red1,
        padding: theme.snackBarTheme.insetPadding,
        child: Column(
          children: [
            Text(message.titile, style: theme.textTheme.labelMedium),
            Text(message.content, style: theme.textTheme.labelSmall),
          ],
        ));
  }
}

class _WarningAlertMessage extends StatelessWidget {
  final Message message;

  const _WarningAlertMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
        color: ColorConfig.yellow1,
        padding: theme.snackBarTheme.insetPadding,
        child: Column(
          children: [
            Text(message.titile, style: theme.textTheme.labelMedium),
            Text(message.content, style: theme.textTheme.labelSmall),
          ],
        ));
  }
}

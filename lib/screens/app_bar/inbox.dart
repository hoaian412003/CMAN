import 'package:flutter/material.dart';

class InboxWidget extends StatelessWidget {
  const InboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text("Inbox", style: theme.textTheme.titleMedium),
        const Icon(Icons.inbox)
      ],
    );
  }
}

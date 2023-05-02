import 'package:cms/config/main.dart';
import 'package:cms/model/main.dart';
import 'package:cms/storage/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditToolWidget extends StatelessWidget {
  final EditToolSchema data;
  const EditToolWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: Spacing.large),
      child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () {
                data.handler(context);
              },
              child: Image.asset(data.iconLink, height: 30, width: 30))),
    );
  }
}

class EditTools extends StatefulWidget {
  const EditTools({super.key});

  @override
  State<EditTools> createState() => _EditToolsState();
}

class _EditToolsState extends State<EditTools> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<EditToolSchema> editTools =
        context.watch<TablesModel>().editTools;

    return Row(
      children: [
        ...editTools.map((editTool) {
          return EditToolWidget(data: editTool);
        })
      ],
    );
  }
}

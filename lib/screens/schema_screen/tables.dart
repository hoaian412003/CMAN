import 'package:cms/screens/schema_screen/table.dart';
import 'package:cms/model/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TablesWidget extends StatefulWidget {
  const TablesWidget({super.key});

  @override
  State<TablesWidget> createState() => _TablesWidgetState();
}

class _TablesWidgetState extends State<TablesWidget> {
  final GlobalKey _key = GlobalKey();

  // This function is called when the user presses the floating button
  Offset? _getOffset() {
    RenderBox? box = _key.currentContext?.findRenderObject() as RenderBox?;
    Offset? position = box?.localToGlobal(Offset.zero);
    return position;
  }

  @override
  void initState() {
    super.initState();
    Provider.of<TablesModel>(context, listen: false).fetchTable();
    Provider.of<TablesModel>(context, listen: false).fetchEditTools();
  }

  @override
  Widget build(BuildContext context) {
    final tablesState = context.watch<TablesModel>();

    return Stack(
      key: _key,
      children: [
        ...tablesState.tables.map(
          (table) => TableWidget(
            data: table,
            getParentPosition: _getOffset,
          ),
        )
      ],
    );
  }
}

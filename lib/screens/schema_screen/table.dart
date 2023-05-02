import 'package:cms/config/main.dart';
import 'package:cms/model/main.dart';
import 'package:cms/storage/tables.storage.dart';
import 'package:cms/utils/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColumnWidget extends StatelessWidget {
  final ColumnSchema data;

  const ColumnWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper(context: context).getTheme();

    return Container(
        width: 250,
        padding: EdgeInsets.symmetric(vertical: Spacing.tiny),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(data.name, style: theme.unFocusTable.keyStyle),
          Text('[${data.type}]', style: theme.focusTable.typeStyle),
        ]));
  }
}

class TableWidget extends StatefulWidget {
  final Function getParentPosition;
  final TableSchema data;
  const TableWidget(
      {super.key, required this.getParentPosition, required this.data});

  @override
  State<TableWidget> createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  double x = 10;
  double y = 10;

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper(context: context).getTheme();
    final tablesState = context.watch<TablesModel>();

    final table = Container(
      decoration: BoxDecoration(
        color: theme.unFocusTable.backgroundColor,
        borderRadius: const BorderRadius.all(RadiusConfig.tiny),
      ),
      child: Stack(
        children: [
          Positioned(
              right: 0,
              top: 0,
              child: tablesState.focused == widget.data.index
                  ? const Icon(Icons.radio_button_checked,
                      color: ColorConfig.purple1)
                  : const Icon(Icons.radio_button_unchecked,
                      color: ColorConfig.purple1)),
          Container(
            padding: EdgeInsets.all(Spacing.medium),
            child: Column(children: [
              Row(
                children: [
                  Text(widget.data.tableName,
                      style: theme.focusTable.tableNameStyle),
                ],
              ),
              Container(height: 20),
              ...widget.data.columns.map((column) => ColumnWidget(data: column))
            ]),
          ),
        ],
      ),
    );

    return Positioned(
      top: y,
      left: x,
      child: Draggable(
        childWhenDragging: Container(),
        feedback: Material(child: table),
        onDragEnd: (dragDetails) {
          setState(() {
            final parentPosition = widget.getParentPosition();
            // NOTE: Checking outside
            if (dragDetails.offset.dx - parentPosition?.dx < 0 ||
                dragDetails.offset.dy - parentPosition?.dy < 0) return;
            x = dragDetails.offset.dx - parentPosition?.dx;
            y = dragDetails.offset.dy - parentPosition?.dy;
            widget.data.position = PositionSchema(x: x, y: y);
            tablesStorage.updateTable(widget.data.tableName, widget.data);
          });
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.grab,
          child: GestureDetector(
              onTap: () {
                tablesState.changeFocusTable(widget.data.index);
              },
              child: table),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      x = widget.data.position.x;
      y = widget.data.position.y;
    });
  }
}

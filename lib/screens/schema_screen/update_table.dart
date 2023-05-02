import 'package:cms/config/main.dart';
import 'package:cms/model/main.dart';
import 'package:cms/storage/tables.storage.dart';
import 'package:cms/widgets/select_input.dart';
import 'package:cms/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputColumnWidget extends StatefulWidget {
  final ColumnSchema column;
  const InputColumnWidget({super.key, required this.column});

  @override
  State<InputColumnWidget> createState() => _InputColumnWidgetState();
}

class _InputColumnWidgetState extends State<InputColumnWidget> {
  @override
  build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Spacing.medium),
      width: 500,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextInputWidget(
              onChanged: (text) {
                widget.column.name = text;
              },
              value: widget.column.name,
              placeHolder: 'Name',
            ),
          ),
          Container(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: TextInputWidget(
                value: widget.column.description ?? '',
                placeHolder: 'Description',
                onChanged: (text) {
                  widget.column.description = text;
                }),
          ),
          Container(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: SelectInputWidget(
                value: widget.column.type,
                items: const ['String', 'Number', 'Array'],
                onChanged: (value) {
                  widget.column.type = value;
                }),
          ),
        ],
      ),
    );
  }
}

class UpdateTableForm extends StatefulWidget {
  final TableSchema table;

  const UpdateTableForm({super.key, required this.table});

  @override
  State<UpdateTableForm> createState() => _UpdateTableFormState();
}

class _UpdateTableFormState extends State<UpdateTableForm> {
  TableSchema table = TableSchema();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    table = widget.table;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Update table ${table.tableName}'),
          ],
        ),
        content: Wrap(
          children: [
            Column(
              children: [
                TextInputWidget(
                  value: table.tableName,
                  placeHolder: 'Enter table name',
                  onChanged: (text) {
                    setState(() {
                      table.tableName = text;
                    });
                  },
                ),
                Container(height: 20),
                ...table.columns.map((column) {
                  return InputColumnWidget(
                    column: column,
                  );
                }),
                Container(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      child: Text('Add Column'),
                      onPressed: () {
                        setState(() {
                          table.columns.add(ColumnSchema());
                        });
                      },
                    ),
                    ElevatedButton(
                      child: const Text('Update Table'),
                      onPressed: () {
                        Provider.of<TablesModel>(context, listen: false)
                            .updateTable(table);
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}

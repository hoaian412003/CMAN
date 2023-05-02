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
              placeHolder: 'Name',
            ),
          ),
          Container(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: TextInputWidget(
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

class CreateTableForm extends StatefulWidget {
  const CreateTableForm({super.key});

  @override
  State<CreateTableForm> createState() => _CreateTableFormState();
}

class _CreateTableFormState extends State<CreateTableForm> {
  TableSchema table = TableSchema(
    index: -1,
    tableName: '',
    position: const PositionSchema(x: 50, y: 50),
    columns: [ColumnSchema()],
  );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Create new Table'),
          ],
        ),
        content: Wrap(
          children: [
            Column(
              children: [
                TextInputWidget(
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
                      child: const Text('Create Table'),
                      onPressed: () {
                        Provider.of<TablesModel>(context, listen: false)
                            .addTable(table);
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

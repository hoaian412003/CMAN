import 'package:cms/screens/schema_screen/create_table.dart';
import 'package:cms/screens/schema_screen/update_table.dart';
import 'package:cms/storage/tables.storage.dart';
import 'package:cms/widgets/text_input.dart';
import 'package:flutter/material.dart';

class PopupForm {
  static createTableForm(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => const CreateTableForm());
  }

  static updateTableForm(context, table) {
    showDialog(
        context: context,
        builder: (BuildContext context) => UpdateTableForm(table: table));
  }
}

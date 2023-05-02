import 'package:cms/config/main.dart';
import 'package:cms/storage/main.dart';
import 'package:cms/storage/tables.storage.dart';
import 'package:cms/widgets/popup_form.dart';
import 'package:flutter/material.dart';

class TablesModel extends ChangeNotifier {
  List<TableSchema> tables = [];
  int focused = 0;
  List<EditToolSchema> editTools = [];

  void fetchEditTools() async {
    editTools = [
      EditToolSchema(
          description: 'Add new Table',
          iconLink: AssetsImage.addTableIcon,
          handler: (context) {
            // INFO: Show popup from create table when click edit tool
            PopupForm.createTableForm(context);
          }),
      EditToolSchema(
          description: 'Delete chosing table',
          iconLink: AssetsImage.deleteTable,
          handler: (context) {
            removeTable(focused);
          }),
      EditToolSchema(
          description: 'Update chosing table',
          iconLink: AssetsImage.editTable,
          handler: (context) {
            PopupForm.updateTableForm(context, tables[focused]);
          })
    ];
  }

  void fetchTable() async {
    tables = await tablesStorage.fetch();
    notifyListeners();
  }

  void changeFocusTable(int index) {
    if (index >= tables.length || index == focused) return;
    focused = index;
    notifyListeners();
  }

  void addTable(TableSchema data) {
    data.index = tables.length;
    tables.add(data);
    save();
    notifyListeners();
  }

  void updateTable(TableSchema table) {
    if (table.index < 0 || table.index >= tables.length) return;
    tables[table.index] = table;
    save();
    notifyListeners();
  }

  void removeTable(int index) {
    if (index >= tables.length) return;
    tables.remove(tables[index]);
    save();
    notifyListeners();
  }

  void save() {
    tablesStorage.save(TablesSchema(tables: tables));
  }
}

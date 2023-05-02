import 'package:cms/storage/local_storage.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tables.storage.g.dart';

@JsonEnum()
enum ColumnTypes {
  string,
  number,
  array,
}

extension ColumnExtension on ColumnTypes {
  String get name {
    switch (this) {
      case ColumnTypes.number:
        return 'Number';
      case ColumnTypes.string:
        return 'String';
      case ColumnTypes.array:
        return 'Array';
      default:
        return 'Unkown';
    }
  }
}

@JsonSerializable()
class ColumnSchema {
  String name = 'Name';
  String type = 'String';
  String? description = 'Column description';

  ColumnSchema({this.name = 'Name', this.type = 'String', this.description});

  factory ColumnSchema.fromJson(Map<String, dynamic> json) =>
      _$ColumnSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$ColumnSchemaToJson(this);
}

@JsonSerializable()
class PositionSchema {
  final double x;
  final double y;

  const PositionSchema({required this.x, required this.y});

  factory PositionSchema.fromJson(Map<String, dynamic> json) =>
      _$PositionSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$PositionSchemaToJson(this);
}

@JsonSerializable()
class TableSchema {
  int index;
  String tableName;
  PositionSchema position;
  List<ColumnSchema> columns;

  TableSchema(
      {this.index = 0,
      this.tableName = "name",
      this.columns = const [],
      this.position = const PositionSchema(x: 50, y: 50)});
  factory TableSchema.fromJson(Map<String, dynamic> json) =>
      _$TableSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$TableSchemaToJson(this);
}

@JsonSerializable()
class TablesSchema {
  List<TableSchema> tables;

  TablesSchema({required this.tables});

  factory TablesSchema.fromJson(Map<String, dynamic> json) =>
      _$TablesSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$TablesSchemaToJson(this);
}

class TablesStorage extends LocalStorage<TablesSchema> {
  TablesSchema? data;

  TablesStorage({super.fileName = "tables"});

  Result<List<TableSchema>> getAllTables() {
    return Result(data: data?.tables);
  }

  Future fetch() async {
    data = TablesSchema.fromJson(await localData);
    return data?.tables;
  }

  Future updateTable(String tableName, TableSchema tableData) async {
    final index =
        data?.tables.indexWhere((element) => element.tableName == tableName);
    if (index == null) return;
    data?.tables[index] = tableData;
    writeData(data?.toJson());
  }

  Future save(TablesSchema data) async {
    writeData(data.toJson());
  }

  Future<void> setTablePosition(String tableName) async {}
}

final tablesStorage = TablesStorage();

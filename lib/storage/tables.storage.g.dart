// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tables.storage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColumnSchema _$ColumnSchemaFromJson(Map<String, dynamic> json) => ColumnSchema(
      name: json['name'] as String,
      type: json['type'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ColumnSchemaToJson(ColumnSchema instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
    };

PositionSchema _$PositionSchemaFromJson(Map<String, dynamic> json) =>
    PositionSchema(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$PositionSchemaToJson(PositionSchema instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

TableSchema _$TableSchemaFromJson(Map<String, dynamic> json) => TableSchema(
      index: json['index'] as int,
      tableName: json['tableName'] as String,
      columns: (json['columns'] as List<dynamic>)
          .map((e) => ColumnSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
      position:
          PositionSchema.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TableSchemaToJson(TableSchema instance) =>
    <String, dynamic>{
      'index': instance.index,
      'tableName': instance.tableName,
      'position': instance.position,
      'columns': instance.columns,
    };

TablesSchema _$TablesSchemaFromJson(Map<String, dynamic> json) => TablesSchema(
      tables: (json['tables'] as List<dynamic>)
          .map((e) => TableSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TablesSchemaToJson(TablesSchema instance) =>
    <String, dynamic>{
      'tables': instance.tables,
    };

import 'package:flutter/material.dart';

class EditToolSchema {
  final String description;
  final String iconLink;
  final Function handler;

  const EditToolSchema(
      {required this.description,
      required this.iconLink,
      required this.handler});
}

class EditToolsSchema {
  final List<EditToolSchema> tools;

  const EditToolsSchema({required this.tools});
}

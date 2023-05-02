import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cms/config/main.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

abstract class LocalStorage<Data> {
  final String fileName;

  const LocalStorage({required this.fileName});

  Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get localFile async {
    final path = await localPath;
    final filePath = '$path/$fileName.json';

    if (File(filePath).existsSync() == false) {
      final file = await File(filePath).create(recursive: true);
      file.writeAsString('{}');
    }
    return File(filePath);
  }

  Future<Map<String, dynamic>> get localData async {
    final file = await localFile;
    final content = await file.readAsString();
    return jsonDecode(content);
  }

  void writeData(data) async {
    final file = await localFile;
    await file.writeAsString(jsonEncode(data));
  }
}

class Result<Data> {
  final Message? message;
  final Data? data;

  const Result({this.message, this.data});
}

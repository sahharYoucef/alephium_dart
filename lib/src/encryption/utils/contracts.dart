import 'dart:io';
import 'dart:convert';
import 'dart:async';

class Contracts {
  build(String path) async {
    var dir = Directory(path);
    final List<FileSystemEntity> entities = await dir.list().toList();
    print(entities);
  }
}

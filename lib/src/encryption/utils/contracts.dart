import 'dart:io';

class Contracts {
  build(String path) async {
    var dir = Directory(path);
    final List<FileSystemEntity> entities = await dir.list().toList();
    print(entities);
  }
}

import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class MyDatabase{

  Future<Database> initMyDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'matrimony.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "matrimony.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'matrimony.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }
  
  Future< List<Map<String,dynamic>> >getDataFromUsersTable() async {
    Database db = await initMyDatabase();
    List<Map<String,dynamic> > users= await db.rawQuery("select * from users");
    return users;
  }

  Future<void> deleteDataFromUsersTable(int a) async {
    Database db = await initMyDatabase();
    await db.rawQuery("delete from users where id = $a");
  }

  Future<void> insertDataFromUsersTable(Map<String,dynamic> a) async {
    Database db = await initMyDatabase();
    await db.rawQuery('insert into users values("${a["name"]}","${a["age"]}","${a["salary"]}","${a["image"]}",null)');
  }

  Future<void> updateDataFromUsersTable(Map<String,dynamic> a) async {
    Database db = await initMyDatabase();
    await db.rawQuery('update users set name="${a["name"]}",age="${a["age"]}",salary="${a["salary"]}",image="${a["image"]}" where id=${a["id"]}');
  }
}

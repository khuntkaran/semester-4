import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase{

  Future<Database> initMyDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'rto_driving_test.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "rto_driving_test.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'rto_driving_test.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }

  Future<List<int>>getDataFromBookmarksTable() async {
    Database db = await initMyDatabase();
    List<Map<String, Object?>> Bookmarks= await db.rawQuery("select * from bookmarks");
    List<int> id=[];
    for(int i=0;i<Bookmarks.length;i++){
      id.add(int.parse(Bookmarks[i]["_id"].toString()));
    }
    return id;
  }

  Future<void> deleteDataFromBookmarksTable(int a) async {
    Database db = await initMyDatabase();
    await db.rawQuery("delete from bookmarks where _id = $a");
  }

  Future<void> insertDataFromBookmarksTable(int a) async {
    Database db = await initMyDatabase();
    await db.rawQuery('insert into bookmarks values($a)');
  }
}
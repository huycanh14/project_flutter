import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class Connection {
  static Database _db;
  Future<Database> get db async {
    if (_db == null) _db = await initDatabase();
    return _db;
  }

  initDatabase() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "db_employee.db");
    print(path);
    var db = await openDatabase(path, version: 1, onCreate: onCreateFunc);
    return db;
  }

  void onCreateFunc(Database db, int version) async {
    await db.execute(
        'CREATE TABLE account (id INTERGER PRIMARY KEY, username TEXT NOT NULL UNIQUE, password TEXT NOT NULL)');

    await db.execute(
        'CREATE TABLE employee(id INTERGER PRIMARY KEY, name TEXT NOT NULL, gender BOOLEAN NOT NULL, date TEXT NOT NULL, position INTEGER NOT NULL)');

    // await db.rawInsert(sql)
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
}

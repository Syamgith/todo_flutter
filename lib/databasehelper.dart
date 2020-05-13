import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todoflutter/models/task.dart';

final String tableName = 'todo';
final String columnId = '_id';
final String columnTitle = 'title';
final String columnDone = 'done';

class DatabaseHelper {
  Database db;

  DatabaseHelper() {
    initDatabase();
  }

  Future<void> initDatabase() async {
    db = await openDatabase(join(await getDatabasesPath(), "my_db.db"),
        onCreate: (db, version) {
      return db.execute(
          "CREATE TABLE $tableName($columnId AUTO INCREMENT PRIMARY KEY, $columnTitle TEXT, $columnDone INTEGER)");
    }, version: 1);
  }

  Future<void> insertTask(Task task) async {
    try {
      db.insert(tableName, task.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (e) {
      print(e);
    }
  }

  Future<List<Task>> getAllTask() async {
    final List<Map<String, dynamic>> tasks = await db.query(tableName);
    return List.generate(
        tasks.length,
        (i) => Task(
            name: tasks[i][columnTitle],
            isDone: tasks[i][columnDone] == 1,
            id: tasks[i][columnId]));
  }

  //
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todoflutter/databasehelper.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  TaskData() {
    databaseHelper = DatabaseHelper();
    notifyListeners();
  }
  DatabaseHelper databaseHelper;
  List<Task> tasksList = [];

  Future<List<Task>> getTasks() async {
    tasksList = await databaseHelper.getAllTask();
    notifyListeners();
    return tasksList;
  }

  void addTask(String newTaskTitle) {
    Task newTask = Task(name: newTaskTitle);
    databaseHelper.insertTask(newTask);
    notifyListeners();
  }

  void updateTaskCheck(Task task) {
    task.toggleDone();
    databaseHelper.updateTask(task);
    notifyListeners();
  }

  void deleteTask(Task task) {
    databaseHelper.deleteTaskFromDB(task.id);
    notifyListeners();
  }
}

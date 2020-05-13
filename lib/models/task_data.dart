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

  void notify() {
    notifyListeners();
  }

  void addTask(String newTaskTitle) {
    Task newTask = Task(name: newTaskTitle);
    databaseHelper.insertTask(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

//  void deleteTask(Task task) {
//    _tasks.remove(task);
//    notifyListeners();
//  }
}

import 'package:flutter/foundation.dart';
import 'package:todoflutter/databasehelper.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  final DatabaseHelper databaseHelper = DatabaseHelper();
  //List<Task> _tasks =  databaseHelper.getAllTask() as List<Task>;

  List<Task> get tasks {
    return databaseHelper.getAllTask() as List<Task>;
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

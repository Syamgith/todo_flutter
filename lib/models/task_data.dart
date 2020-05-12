import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Do workout'),
    Task(name: 'Study 2 hr'),
    Task(name: 'Sleep more')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView<Task>(_tasks);
  }

  void addTask(String newTaskTitle) {
    Task newTask = Task(name: newTaskTitle);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}

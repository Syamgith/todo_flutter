import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Do workout'),
    Task(name: 'Study 2 hr'),
    Task(name: 'Sleep more')
  ];
}

import 'package:flutter/material.dart';
import 'package:todoflutter/models/task.dart';
import 'package:todoflutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Do workout'),
    Task(name: 'Study 2 hr'),
    Task(name: 'Sleep more')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TasksTile(
          title: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TasksTile(
          title: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TasksTile(
          title: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
      ],
    );
  }
}

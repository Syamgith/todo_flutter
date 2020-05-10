import 'package:flutter/material.dart';
import 'package:todoflutter/models/task.dart';
import 'package:todoflutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  TasksList({this.tasks});
  final List<Task> tasks;
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TasksTile(
              title: widget.tasks[index].name,
              isChecked: widget.tasks[index].isDone,
              cbCallBack: (bool checkBoxState) {
                setState(() {
                  widget.tasks[index].isDone = checkBoxState;
                });
              });
        });
  }
}

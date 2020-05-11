import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/models/task_data.dart';
import 'package:todoflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<TaskData>(context).tasks.length,
        itemBuilder: (context, index) {
          return TasksTile(
              title: Provider.of<TaskData>(context).tasks[index].name,
              isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
              cbCallBack: (bool checkBoxState) {
//                setState(() {
//                  widget.tasks[index].isDone = checkBoxState;
//                });
              });
        });
  }
}

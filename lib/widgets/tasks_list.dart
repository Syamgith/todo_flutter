import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/models/task.dart';
import 'package:todoflutter/models/task_data.dart';
import 'package:todoflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = Provider.of<TaskData>(context).tasks;
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TasksTile(
          title: tasks[index].name,
          isChecked: tasks[index].isDone,
          cbCallBack: (checkBoxState) {
            Provider.of<TaskData>(context, listen: false)
                .updateTask(tasks[index]);
          },
//          onLongPressCallBack: () {
//            Provider.of<TaskData>(context, listen: false)
//                .deleteTask(tasks[index]);
//          },
        );
      },
    );
  }
}

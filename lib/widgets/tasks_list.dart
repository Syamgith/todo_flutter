import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/models/task.dart';
import 'package:todoflutter/models/task_data.dart';
import 'package:todoflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Task>>(
        future: Provider.of<TaskData>(context).getTasks(),
        initialData: TaskData().tasksList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Task> newTaskslist = snapshot.data;
            return ListView.builder(
              itemCount: newTaskslist.length,
              itemBuilder: (context, index) {
                return TasksTile(
                  title: newTaskslist[index].name != null
                      ? newTaskslist[index].name
                      : '',
                  isChecked: newTaskslist[index].isDone,
                  cbCallBack: (checkBoxState) {
                    Provider.of<TaskData>(context, listen: false)
                        .updateTaskCheck(newTaskslist[index]);
                  },
                  onLongPressCallBack: () {
                    Provider.of<TaskData>(context, listen: false)
                        .deleteTask(newTaskslist[index]);
                  },
                );
              },
            );
          } else {
            return ListView();
          }
        });
  }
}

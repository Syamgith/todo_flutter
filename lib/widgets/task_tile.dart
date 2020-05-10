import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  _TasksTileState createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: NewCheckBox(
        checkState: isChecked,
        changeCheckbox: (bool checkBoxState) {
          setState(() {
            isChecked = checkBoxState;
          });
        },
      ),
    );
  }
}

class NewCheckBox extends StatelessWidget {
  NewCheckBox({this.checkState, this.changeCheckbox});
  final bool checkState;
  final Function changeCheckbox;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.green,
        value: checkState,
        onChanged: changeCheckbox);
  }
}

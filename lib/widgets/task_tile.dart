import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  TasksTile({this.isChecked, this.title});
  final bool isChecked;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.green,
        value: isChecked,
        //onChanged: changeCheckbox),
      ),
    );
  }
}

//(bool checkBoxState) {
//setState(() {
//isChecked = checkBoxState;
//});
//}

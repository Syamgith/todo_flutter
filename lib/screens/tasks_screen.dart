import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff052019),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              child: Icon(Icons.list),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            Text(
              'To Do',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

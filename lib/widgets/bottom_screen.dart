import 'package:flutter/material.dart';

class BottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Enter the Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF1D1E33),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            FlatButton(
              onPressed: () {},
              color: Color(0xFF1D1E33),
              child: Text(
                'ADD',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}

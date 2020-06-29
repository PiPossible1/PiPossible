import 'package:flutter/material.dart';

//Manual Controlls for Robot movements
class Manual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ManualDrive"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/dashboard');
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
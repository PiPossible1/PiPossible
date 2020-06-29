import 'package:flutter/material.dart';

//Automatic robot controlls
class Auto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AutoMode"),
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

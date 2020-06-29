import 'package:flutter/material.dart';


class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Light"),
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
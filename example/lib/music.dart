     import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MusicPlayer',
      theme: ThemeData(
      primarySwatch: Colors.red,
      ),
      home: new Material(
        child: new Center(
          child: new Text("MusicPlayer"),
        ),
      ),
    );
  }
}



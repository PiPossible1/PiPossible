import 'package:flutter/material.dart';
import 'dashboard.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PiPossible',
      theme: ThemeData(
 
        primarySwatch: Colors.red,
      ),
      home: Dashboard(),
    );
  }
   
  
}



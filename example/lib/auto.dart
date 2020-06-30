import 'package:flutter/material.dart';

class Auto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AutoMode',
      theme: ThemeData(
      primarySwatch: Colors.red,
      ),
        home: Scaffold(
          body: SafeArea(
            child: Center(
 
            child: SwitchWidget()
 
            ),
        )
      ));
  }
}

class SwitchWidget extends StatefulWidget {
    @override
    SwitchWidgetClass createState() => new SwitchWidgetClass();
  }
  
class SwitchWidgetClass extends State {
 
  bool switchControl = false;
  var textHolder = 'Automode is OFF';
 
  void toggleSwitch(bool value) {
 
      if(switchControl == false)
      {
        setState(() {
          switchControl = true;
          textHolder = 'Automode is ON';
        });
        print('Automode is ON');
        // Put your code here which you want to execute on Switch ON event.
 
      }
      else
      {
        setState(() {
          switchControl = false;
           textHolder = 'Automode is OFF';
        });
        print('Automode is OFF');
        // Put your code here which you want to execute on Switch OFF event.
      }
  }
  
    @override
    Widget build(BuildContext context) {
      return Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children:[ Transform.scale( 
              scale: 1.5,
              child: Switch(
              onChanged: toggleSwitch,
              value: switchControl,
              activeColor: Colors.blue,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey,
            )
          ), 
 
        Text('$textHolder', style: TextStyle(fontSize: 24),)
 
      ]);
  }
}

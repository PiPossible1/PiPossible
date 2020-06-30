import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Light extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LightControlls',
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
  var textHolder = 'Light is OFF';
 
  void toggleSwitch(bool value) {
 
      if(switchControl == false)
      {
        setState(() {
          switchControl = true;
          textHolder = 'Light is ON';

          
        });
        print('Light is ON');
        commandLightOn();
        // Put your code here which you want to execute on Switch ON event.
 
      }
      else
      {
        setState(() {
          switchControl = false;
           textHolder = 'Light is OFF';

            //closeWebView();
        });
        print('Light is OFF');
        commandLightOf();

        // Put your code here which you want to execute on Switch OFF event.
      }
  }
  commandLightOn()
  {  
        String url = 'http://192.168.2.175/'+'light'+'On.php';
        launch(url, forceWebView: true);
        sleep(const Duration(seconds: 1));
        closeWebView();
        print(url);
  }
    commandLightOf()
  {  
        String url = 'http://192.168.2.175/'+'light'+'Of.php';
        launch(url, forceWebView: true);
        sleep(const Duration(seconds: 1));
        closeWebView();
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


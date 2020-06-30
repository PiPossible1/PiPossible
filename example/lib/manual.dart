import 'dart:io';

import 'package:flutter/material.dart';
import 'package:control_pad/control_pad.dart';
import 'package:control_pad/models/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class Manual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ManualMode',
      theme: ThemeData(
      primarySwatch: Colors.red,
      ),
        home: Controll(),
      );
  }
}

class Controll extends StatelessWidget {
  @override



  Widget build(BuildContext context) {

        return Scaffold(
          //appBar: AppBar(
          //title: Text('Manual'),
          //),
          body: Container(
            color: Colors.white,
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PadButtonsView(
	                  padButtonPressedCallback: padBUttonPressedCallback,
                  )
                  
 
	          ],
	        ),
      ),
    );
  }
  padBUttonPressedCallback(int buttonIndex, Gestures gesture)
  {
    if(buttonIndex == 3)
    {
        String url = 'http://192.168.2.175/'+'forward'+'.php';
        launch(url, forceWebView: true);
        print(url);
    }
    else if(buttonIndex == 0)
    {
        String url = 'http://192.168.2.175/'+'turnRight'+'.php';
        launch(url, forceWebView: true);
        print(url);
    }
    else if(buttonIndex == 1)
    {
        String url = 'http://192.168.2.175/'+'backward'+'.php';
        launch(url, forceWebView: true);
        print(url);
    }
    else if(buttonIndex == 4)
    {
        String url = 'http://192.168.2.175/'+'turnLeft'+'.php';
        launch(url, forceWebView: true);
        print(url);
    }
    commandStop();
  }
  
  commandStop()
  {
        String url = 'http://192.168.2.175/'+'stop'+'.php';
        launch(url, forceWebView: true);
        sleep(const Duration(seconds: 1));
        closeWebView(); 
  }
  
    
  
}
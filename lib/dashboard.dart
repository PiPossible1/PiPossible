
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'globals.dart';
//import 'dart:html';
import 'package:url_launcher/url_launcher.dart';

import 'package:webview_flutter/webview_flutter.dart';
//import 'auto.dart';
//import 'light.dart';
//import 'manual.dart';
//import 'music.dart';
import 'main.dart';


//Main Screen: Selection of the activities
void main() => runApp(MyApp());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'PiPossible',
      theme: ThemeData(
      primarySwatch: Colors.red,
      ),
      home: Dashboard(),
      routes: <String, WidgetBuilder>{
      '/dasboard': (context) => new Dashboard(),
      'music': (context) => new Music(),
      'light': (context) => new Light(),
      'manual': (context) => new Manual(),
      'auto': (context) => new Auto(),
      'web': (context) => new Auto(),
      },
    );
  }

class WebViewContainer extends StatefulWidget {
  final url;  WebViewContainer(this.url);  @override
  createState() => _WebViewContainerState(this.url);
}class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();  _WebViewContainerState(this._url);  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _url), )
          ],
        ));
  }
}



class Manual extends StatefulWidget {
  @override   
  _ManualState createState() => _ManualState();
  }
class _ManualState extends State<Manual> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ManualDrive"),
      ),
      body: Center
      (
        child: new Column
        (
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: <Widget>
          [
            new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>
              [
                new RaisedButton
                (
                  padding: const EdgeInsets.all(0.0),
                  onPressed:(){},
                      child: GestureDetector(
                        onTapDown:(_)
                        {
                          commandForward("forward");
                        },
                        onTapUp:(_)
                        {
                          commandStop("stop");
                        },
                      child: Container (
                      padding: const EdgeInsets.all(40),
                      color: Colors.red,
                      child: new Text("Forward", style: TextStyle(color: Colors.white),), 
                      ),
                    ), 
                ),
              ],
            ),
              new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>
                [
                  new RaisedButton
                  (
                    padding: const EdgeInsets.all(0.0),
                    onPressed:(){},
                      child: GestureDetector(
                        onTapDown:(_)
                        {
                          commandTurnLeft("turnLeft");
                        },
                        onTapUp:(_)
                        {
                          commandStop("stop");
                        },
                      child: Container (
                      padding: const EdgeInsets.all(40),
                      color: Colors.red,
                      child: new Text("Left", style: TextStyle(color: Colors.white),), 
                      ),
                    ), 
                  ),
                  new RaisedButton
                  (
                    padding: const EdgeInsets.all(0.0),
                    onPressed:(){},
                      child: GestureDetector(
                        onTapDown:(_)
                        {
                          commandTurnRight("turnRight");
                        },
                        onTapUp:(_)
                        {
                          commandStop("stop");
                        },
                      child: Container (
                      padding: const EdgeInsets.all(40),
                      color: Colors.red,
                      child: new Text("Right", style: TextStyle(color: Colors.white),), 
                      ),
                    ), 
                  ),
                ],
              ),
              new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>
              [
                new RaisedButton
                (
                   padding: const EdgeInsets.all(0.0),
                   onPressed:(){},
                      child: GestureDetector(
                        onTapDown:(_)
                        {
                          commandBackward("backward");
                        },
                        onTapUp:(_)
                        {
                          commandStop("stop");
                        },
                      child: Container (
                      padding: const EdgeInsets.all(40),
                      color: Colors.red,
                      child: new Text("Backward", style: TextStyle(color: Colors.white),), 
                      ),
                    ), 
                ),
              ],
            ),
          ],
          ),
          
      ),
    );
  }
}

class Auto extends StatefulWidget {
  @override   
  _AutoState createState() => _AutoState();
  }
  class _AutoState extends State<Auto>  {
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

class Music extends StatefulWidget {
  @override   
  _MusicState createState() => _MusicState();
  }
  
  class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/dashboard');
          },
          child: Text('Music'),
        ),
      ),
    );
  }
}


class Light extends StatefulWidget {
  @override   
  _LightState createState() => _LightState();
    }
  
  class _LightState extends State<Light> {
      @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Light"),
      ),
              body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.red,
                    child: new Text("Left"),
                    onPressed: () {
                      commandLeftLight("leftLight");
                      //print('Left Light');
                    } 
                  ),
                  new RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text('Right'),
                     onPressed: () {
                       commandRightLight("rightLight");
                      //print('Right Light');
                    } 
                  ),
                ],
              )
            ],
          ),
        ));
  }

}
commandLeftLight(String command)
{
  if(leftLight % 2 ==0)
  {
    String url = 'http://192.168.0.190/'+'$command'+'On.php';
    print(url);
    launch(url, forceWebView: true);
    sleep(const Duration(seconds: 1));
    closeWebView();
  }
  else
  {
    String url = 'http://192.168.0.190/'+'$command'+'Of.php';
    print(url);
    launch(url, forceWebView: true);
    sleep(const Duration(seconds: 1));
    closeWebView();
    //flutterWeb
  }
  print('fuckdreck LICHTLINKS: ' + '$leftLight');
  leftLight =  leftLight + 1 ;

}
commandRightLight(String command)
{
  
  if(rightLight % 2 ==0)
  {
    String url = 'http://192.168.0.190/'+'$command'+'On.php';
    print(url);
    launch(url, forceWebView: true);
    sleep(const Duration(seconds: 1));
    closeWebView();
  }
  else
  {
    String url = 'http://192.168.0.190/'+'$command'+'Of.php';
    print(url);
    launch(url, forceWebView: true);
    sleep(const Duration(seconds: 1));
    closeWebView();
  }
  print('fuckdreck LICHTRECHTS: ' + '$rightLight');
  rightLight = rightLight +1;
}

commandTurnLeft(String command)
{
    String url = 'http://192.168.0.190/'+'$command'+ '.php';
    print(url);
    launch(url, forceWebView: true);
    sleep(const Duration(seconds: 1));
    closeWebView();
   // Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewContainer(url)));
    print('fuckdreck: turnLeft ');

}

commandTurnRight(String command)
{
    String url = 'http://192.168.0.190/'+'$command'+'.php';
    print(url);
    launch(url, forceWebView: true);
    sleep(const Duration(seconds: 1));
    closeWebView();
    print('fuckdreck: turnRight ');
}

commandForward(String command)
{
    String url = 'http://192.168.0.190/'+'$command'+'.php';
    print(url);
    launch(url, forceWebView: true);
    sleep(const Duration(seconds: 1));
    closeWebView();
    print('fuckdreck: grade aus ' );
}

commandBackward(String command)
{
    String url = 'http://192.168.0.190/'+'$command'+'.php';
    print(url);
    launch(url, forceWebView: true);
    sleep(const Duration(seconds: 1));
    closeWebView();
  
  print('fuckdreck: baaacakk');
}

commandStop(String command)
{
    String url = 'http://192.168.0.190/'+'$command'+'.php';
    print(url);
    launch(url, forceWebView: true);
    sleep(const Duration(seconds: 1));
    closeWebView();
  
  print('fuckdreck: STTTOOPOOPOPOPPOPOOOOOP');
}


class Dashboard extends StatefulWidget {
  @override   
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  
  @override 
  Widget build(BuildContext context) {
  //todo
  return Scaffold(
    appBar: AppBar(
      title: Text('PiPossible',
      style: TextStyle(
        color: Colors.white, 
      ),
    ),
  ),
    body:StaggeredGridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    children: <Widget>[
      myMusic(Icons.music_note, "Music", 0xffed622b),
      myLight(Icons.lightbulb_outline, "Light", 0xffed622b),
      myManual(Icons.settings, "Controlls", 0xffed622b),
      myAuto(Icons.graphic_eq, "Auto", 0xffed622b),
    ],
    staggeredTiles:[
      StaggeredTile.extent(2, 130.0),
      StaggeredTile.extent(1, 150.0),
      StaggeredTile.extent(1, 150.0),      
      StaggeredTile.extent(2, 130.0),
    ] ,
  )
);

}
Material myMusic(IconData icon, String heading, int color)
  {
    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: new InkWell(
      onTap: ()
        {
          //Navigator.of(context).pop();
          //Navigator.of(context).pushNamed('music');
          Navigator.push(context, new MaterialPageRoute(builder: (context) => new Light()));
        },   
        child: Center(
         child:Padding(
           padding:const EdgeInsets.all(8.0),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[

                    //Text In Kachel
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(heading,
                        style: TextStyle(color: Colors.black, fontSize:20.0, )),
                      ),
                    ),

                    //Icon in der Kachel
                    Material(
                      color: new Color(color),
                      borderRadius: BorderRadius.circular(24.0),
                      child:Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(icon, color: Colors.white, size: 30.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }
  
 

  Material myLight(IconData icon, String heading, int color)
  {
    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: new InkWell(
      onTap: ()
        {
          
         //Navigator.of(context).pop();
         //Navigator.of(context).pushNamed('light');
         Navigator.push(context, new MaterialPageRoute(builder: (context) => new Light()));
        },
      
      child: Center(
        child:Padding(
          padding:const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  //Text In Kachel
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(heading,
                      style: TextStyle(color: Colors.black, fontSize:20.0, )),
                    ),
                  ),

                  //Icon
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child:Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(icon, color: Colors.white, size: 30.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }
  
  Material myManual(IconData icon, String heading, int color){
    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: new InkWell(
      onTap: ()
        {
         // Navigator.of(context).pop();
         // Navigator.of(context).pushNamed('manual');
         Navigator.push(context, new MaterialPageRoute(builder: (context) => new Manual()));
        },
      child: Center(
        child:Padding(
          padding:const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  //Text In Kachel
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(heading,
                      style: TextStyle(color: Colors.black, fontSize:20.0, )),
                    ),
                  ),

                  //Icon
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child:Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(icon, color: Colors.white, size: 30.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }

    Material myAuto(IconData icon, String heading, int color){
    return Material(
      color:Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: new InkWell(
      onTap: ()
        {
         // Navigator.of(context).pop();
         // Navigator.of(context).pushNamed('auto');
         Navigator.push(context, new MaterialPageRoute(builder: (context) => new Auto()));
        },
      child: Center(
        child:Padding(
          padding:const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  //Text In Kachel
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(heading,
                      style: TextStyle(color: Colors.black, fontSize:20.0, )),
                    ),
                  ),

                  //Icon
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child:Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(icon, color: Colors.white, size: 30.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }

}








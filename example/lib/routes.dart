import 'package:flutter/material.dart';

import 'music.dart';
import 'light.dart';
import 'manual.dart';
import 'auto.dart';
import 'home.dart';


const String homeRoute = '/';

const String staggeredCountCountRoute = '/music';
const String staggeredExtentCountRoute = '/manual';
const String staggeredCountExtentRoute = '/auto';
const String staggeredExtentExtentRoute = '/light';

const String music = '/music';
const String light = '/light';
const String manual = '/manual';
const String auto = '/auto';


Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  homeRoute: (BuildContext context) => new Home(),
  staggeredCountCountRoute: (BuildContext context) =>
      new Music(),
  staggeredExtentCountRoute: (BuildContext context) =>
      new Light(),
  staggeredCountExtentRoute: (BuildContext context) =>
      new Manual(),
  staggeredExtentExtentRoute: (BuildContext context) =>
      new Auto(),

  music: (BuildContext context) => new Music(),
  light: (BuildContext context) => new Light(),
  manual: (BuildContext context) => new Manual(),
  auto: (BuildContext context) => new Auto(),
};

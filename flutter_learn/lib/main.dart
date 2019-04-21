import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learn/pages/home.dart';
import './cat_manager.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme:
      ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.lightBlue),
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
        theme: ThemeData(
            primarySwatch: Colors.cyan, accentColor: Colors.lightBlue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('LovingCat'),
          ),
          body: CatManager(), //'折耳猫'
        ));
  }
}

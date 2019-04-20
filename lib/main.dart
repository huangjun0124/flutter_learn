import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './cat_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.lightBlue
      ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('LovingCat'),
      ),
        body: CatManager(),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './cat_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('LovingCat'),
      ),
        body: CatManager('折耳猫'),
    ));
  }
}

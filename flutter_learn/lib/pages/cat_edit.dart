import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditCatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text('Edit cat''s info'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text('Nothing here yet')
          ],
        ),
      ),
    );
  }

}
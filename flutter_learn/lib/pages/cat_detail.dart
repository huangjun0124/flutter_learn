import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatDetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat Detail'),
      ),
      body: Column(
        children: <Widget>[
          Text('this is a virtual info, not really linked to the cat specified'),
          Center(
            child: FlatButton(
              textColor: Colors.deepPurpleAccent,
              child: Text('Go Back'),
              onPressed: ()=>{
                Navigator.pop(context)
              },
            ),
          )
        ],
      ),
    );
  }

}
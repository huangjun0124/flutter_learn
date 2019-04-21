import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(MyApp2());

class MyApp2 extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _MyApp2State();
  }
}

class _MyApp2State extends State<MyApp2>{
  String titleText='this is the initial value';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(titleText),
          ),
          body: Column(
           children: <Widget>[
             RaisedButton(
               onPressed: (){
                 setState(() {
                   titleText = 'you have changed title' ;
                 });
               },
               child: Text('click to change title'),
             ),
             Text(titleText),
           ],
          ),
        ),
    );
  }

}

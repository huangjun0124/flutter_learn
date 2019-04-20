import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('LovingCat'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0), // 按钮周围留10像素空白
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Click Test'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/cat001.jpg'),
                    Text('Kittys are kawaii')
                  ],
                ),
              ),
            ],
          )),
    );
  }

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _cats = ['田园猫'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('LovingCat'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0), // 按钮周围留10像素空白
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      _cats.add('加菲猫');
                    });
                  },
                  child: Text('Click Test'),
                ),
              ),
              Column(
                children: _cats
                    .map((e) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/cat001.jpg'),
                              Text(e)
                            ],
                          ),
                        ))
                    .toList(),
              )
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learn/cat_control.dart';

import './cats.dart';

class CatManager extends StatefulWidget {
  final String startingCat;
  CatManager({this.startingCat}){
    print('[CatManager widget] Constructer') ;
  }

  @override
  State<StatefulWidget> createState() {
    print('[CatManager widget] createState') ;
    return _CatManagerState();
  }
}

class _CatManagerState extends State<CatManager> {
  List<String> _cats = [];

  @override
  void initState() {
    print('[CatManager widget] initState') ;
    if(widget.startingCat != null){
      _cats.add(widget.startingCat);// widget refres to State property, current father widget
    }
    super.initState();
  }

  @override
  void didUpdateWidget(CatManager oldWidget) {
    print('[CatManager widget] didUpdateWidget') ;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[CatManager widget] build') ;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0), // 按钮周围留10像素空白
          child: CatControl(_addCat)
        ),
       Expanded(child: Cats(_cats))
      ],
    );
  }

  void _addCat(String cat){
    setState(() {
      _cats.add(cat);
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './cats.dart';

class CatManager extends StatefulWidget {
  final String startingCat;
  CatManager({this.startingCat='折耳猫'}){
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
    _cats.add(widget.startingCat);// widget refres to State property, current father widget
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
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _cats.add('加菲猫');
              });
            },
            child: Text('Click To Add Cat'),
          ),
        ),
        Cats(_cats)
      ],
    );
  }
}

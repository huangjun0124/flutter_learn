import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './cats.dart';

class CatManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CatManagerState();
  }
}

class _CatManagerState extends State<CatManager> {
  List<String> _cats = ['田园猫'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0), // 按钮周围留10像素空白
          child: RaisedButton(
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

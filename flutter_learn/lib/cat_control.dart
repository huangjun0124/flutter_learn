import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatControl extends StatelessWidget{
  final Function addCat;
  CatControl(this.addCat);
  
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
           addCat('田园猫');
      },
      child: Text('Click To Add Cat'),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './cats_main_page.dart';

class AuthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('PLEASE LOGIN FIRST'),
          onPressed: () {
            Navigator.pushReplacement(     // 替换当前页，这将没有返回按钮
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => CatsMainPage()),
            );
          },
        ),
      ),
    );
  }

}
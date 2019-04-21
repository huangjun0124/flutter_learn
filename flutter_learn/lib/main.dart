import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learn/pages/auth.dart';
import 'package:flutter_learn/pages/cats_admin.dart';
import './pages/cats_main_page.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme:
      ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.lightBlue),
      //home: AuthPage(), 下面 route 配置了 “/”  这里就不能在配置 home 了
      routes: {
        "/" : (BuildContext context) => CatsMainPage(),
        "/admin" : (BuildContext context) => CatsAdminPage()
      },
    );
  }
}

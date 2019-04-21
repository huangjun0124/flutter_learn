import 'package:flutter/material.dart';

import './pages/products_admin.dart';
import './pages/products.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
          //brightness: Brightness.light,
          primarySwatch: Colors.cyan,
          accentColor: Colors.lightBlue),
      //home: AuthPage(), 下面 route 配置了 “/”  这里就不能在配置 home 了
      routes: {
        '/': (BuildContext context) => ProductsPage(),
        '/admin': (BuildContext context) => ProductsAdminPage(),
      },
    );
  }
}

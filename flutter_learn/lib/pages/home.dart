import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../cat_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LovingCat'),
      ),
      body: CatManager(),
    );
  }
}

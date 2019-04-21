import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../cat_manager.dart';
import './cats_admin.dart';

class CatsMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Cats'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('LovingCat'),
      ),
      body: CatManager(),
    );
  }
}

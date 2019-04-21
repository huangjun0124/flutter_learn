import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learn/pages/cat_creat.dart';
import 'package:flutter_learn/pages/cat_list.dart';
import 'package:flutter_learn/pages/cats_page.dart';

class CatsAdminPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('All Cats'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => CatsPage()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Manage Cats'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Cat',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Cats',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[CatCreatePage(), CatListPage()],
        ),
      ),
    );
  }

}
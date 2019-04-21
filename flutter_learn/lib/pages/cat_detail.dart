import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatDetailPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  CatDetailPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        
        child: Scaffold(
        appBar: AppBar(
          title: Text('Cat Detail'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Text(
                'this is a virtual info, not really linked to the cat specified'),
            Center(
              child: FlatButton(
                textColor: Colors.deepPurpleAccent,
                child: Text('DELETE'),
                onPressed: () => {Navigator.pop(context, true)},
              ),
            )
          ],
        ))), onWillPop: () {
          print('Back button pressed');
          Navigator.pop(context, false);   // 用来返回自定义的数据
          return Future.value(false); // 返回pop本身的数据 , 指示返回后是否继续执行系统自己的 pop
    },);
  }
}

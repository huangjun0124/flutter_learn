import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './pages/cat_detail.dart';

class Cats extends StatelessWidget {
  final List<String> _cats;
  final Function deleteCat;

  Cats(this._cats, {this.deleteCat}) {
    print('[Cats widget] Constructer');
  }

  @override
  Widget build(BuildContext context) {
    print('[Cats widget] build');
    return _buildCatList();
  }

  Widget _buildCatList() {
    Widget catCards;
    if (_cats.length > 0) {
      catCards = ListView.builder(
        // 这种用法更加效率，会自动对不可见的 item 进行回收
        itemBuilder: _buildCatItem,
        itemCount: _cats.length,
      );
    } else {
      catCards = Card(
        child: Text('Nothing yet'),
      );
    }
    return catCards;
  }

  Widget _buildCatItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/cat001.jpg'),
          Text(_cats[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                textColor: Colors.indigoAccent,
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            CatDetailPage(_cats[index], 'assets/cat001.jpg'),
                      ),
                    ).then((bool value) {
                      if (value) {
                        deleteCat(index);
                        print('deleted index:' + index.toString());
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}

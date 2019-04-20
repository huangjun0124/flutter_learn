import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cats extends StatelessWidget {
  final List<String> _cats;
  Cats(this._cats){
    print('[Cats widget] Constructer') ;
  }

  @override
  Widget build(BuildContext context) {
    print('[Cats widget] build') ;
    return Column(
      children: _cats
          .map((e) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/cat001.jpg'),
                    Text(e)],
                ),
              ))
          .toList(),
    );
  }
}

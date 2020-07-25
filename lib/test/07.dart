import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/test/mock.dart';

class State1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.green[100],
      child: Stack(children: <Widget>[
        Align(
            alignment: Alignment.bottomCenter,
            child: Icon(Icons.send, size: 40, color: Colors.white)),
        Align(
            alignment: Alignment.center,
            child: Icon(Icons.save, size: 40, color: Colors.white)),
        Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.settings, size: 40, color: Colors.white)),
        Positioned(
            left: 20,
            height: 150,
            child: Icon(Icons.print, size: 40, color: Colors.lightBlue[200]))
      ]),
    );
  }
}

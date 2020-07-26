import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoSinglePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
            child: Text("点击跳转到一个单页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/newPage');
            }));
  }
}

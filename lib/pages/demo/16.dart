import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoSinglePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
            child: Text("点击跳转到一个单页面"),
            onPressed: () {
              // 带值跳转
              Navigator.pushNamed(context, '/newPage', arguments: {"id": 123});
            }));
  }
}

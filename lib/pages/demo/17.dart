import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoSinglePage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
            child: Text("不带值跳转到一个单页面"),
            onPressed: () {
              // 不带值跳转
              Navigator.pushNamed(context, '/toNewPageWithoutData');
            }));
  }
}

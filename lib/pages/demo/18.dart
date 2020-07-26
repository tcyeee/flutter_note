import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TagDemoSinglePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("不带值跳转的目标页面")),
        body: Center(
          child: Text("这是不带值跳转的目标页面"),
        ));
  }
}

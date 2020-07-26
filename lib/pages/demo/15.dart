import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 带值跳转的目标页面
class TagDemoSinglePage2 extends StatelessWidget {
  final arguments;

  TagDemoSinglePage2({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("测试的跳转单页面")),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("带值跳转的目标页面"),
              Text('->这是带的参数: ${arguments == null ? '0' : arguments['id']}'),
            ]));
  }
}

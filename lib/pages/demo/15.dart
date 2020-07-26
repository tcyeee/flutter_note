import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoSinglePage2 extends StatelessWidget {
  final arguments;

  DemoSinglePage2({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("测试的跳转单页面")),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("一个测试单元面的内容啊"),
              Text('->${arguments == null ? '0' : arguments['id']}'),
            ]));
  }
}

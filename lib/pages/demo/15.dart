import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoSinglePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("测试的跳转单页面")),
        body: Container(child: Text('一个测试单元面的内容啊')));
  }
}

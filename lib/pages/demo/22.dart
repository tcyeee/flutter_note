import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwiftTabDemo extends StatelessWidget {
  const SwiftTabDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                title: Text("tab切换"),
                bottom: TabBar(tabs: <Widget>[
                  Tab(child: Text("第一个")),
                  Tab(child: Text("第二个")),
                  Tab(child: Text("第三个")),
                ])),
            body: TabBarView(children: <Widget>[
              Center(child: Text("tab切换目标页面1")),
              Center(child: Text("tab切换目标页面2")),
              Center(child: Text("tab切换目标页面3")),
            ])));
  }
}

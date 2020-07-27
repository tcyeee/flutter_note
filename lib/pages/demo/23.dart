import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                title: Row(
                    //
                    children: <Widget>[
                  Expanded(
                      child: TabBar(
//                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: <Widget>[
                        Tab(child: Text("第一个")),
                        Tab(child: Text("第二个")),
                        Tab(child: Text("第三个")),
                      ]))
                ])),
            body: TabBarView(children: <Widget>[
              Center(child: Text("tab切换目标页面1")),
              Center(child: Text("tab切换目标页面2")),
              Center(child: Text("tab切换目标页面3")),
            ])));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
            appBar: AppBar(
                title: Row(
                    //
                    children: <Widget>[
                  Expanded(
                      child: TabBar(
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: <Widget>[
                        Tab(child: Text("第一个")),
                        Tab(child: Text("第二个")),
                        Tab(child: Text("第三个")),
                        Tab(child: Text("第四个")),
                        Tab(child: Text("第五个")),
                        Tab(child: Text("第六个")),
                        Tab(child: Text("第七个")),
                        Tab(child: Text("第八个")),
                      ]))
                ])),
            body: TabBarView(children: <Widget>[
              Center(child: Text("tab切换目标页面1")),
              Center(child: Text("tab切换目标页面2")),
              Center(child: Text("tab切换目标页面3")),
              Center(child: Text("tab切换目标页面4")),
              Center(child: Text("tab切换目标页面5")),
              Center(child: Text("tab切换目标页面6")),
              Center(child: Text("tab切换目标页面7")),
              Center(child: Text("tab切换目标页面8")),
            ])));
  }
}

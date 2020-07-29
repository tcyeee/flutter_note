import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabDemo2 extends StatefulWidget {
  @override
  _TabDemo2State createState() => _TabDemo2State();
}

class _TabDemo2State extends State<TabDemo2>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("tmp"),
          bottom: TabBar(
            controller: this._tabController,
            tabs: <Widget>[
              Tab(text: "第一"),
              Tab(text: "第二"),
              Tab(text: "第三"),
            ],
          ),
        ),
        body: TabBarView(controller: this._tabController, children: <Widget>[
          Center(child: Text("1")),
          Center(child: Text("2")),
          Center(child: Text("3")),
        ]));
  }
}

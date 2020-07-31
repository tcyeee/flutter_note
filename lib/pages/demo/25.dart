import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/common/mock/mock.dart';

class DrawerDemo1 extends StatelessWidget {
  List data = mock().listData['data'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
            drawer: Drawer(child: Column(children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(data[1]['img']),
                          fit: BoxFit.cover),
                      color: Colors.red[100]),
                  child: Center(child: Text(""))),
              ListTile(
                  leading: CircleAvatar(child: Icon(Icons.save)),
                  title: Text("保存信息")),
              Divider(indent: 20, endIndent: 20),
              ListTile(
                  leading: CircleAvatar(child: Icon(Icons.people)),
                  title: Text("个人信息"))
            ])),
            endDrawer: Drawer(child: Text("这是一个右边抽屉")),
            appBar: AppBar(title: Text("测试抽屉")),
            body: Center(child: Text("x"))));
  }
}

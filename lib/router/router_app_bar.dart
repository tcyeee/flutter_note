import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/pages/demo/05.dart';
import 'package:fun_flutter_demo/pages/demo/demo_home.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 1;
  List _pageList = [
    DemoHomePage(),
    ListSyn(),
    Text("kjkj"),
    Text("kjkj"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('导航栏上的东西')),
        body: _pageList[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.cyan,
            fixedColor: Colors.red,
            iconSize: 23,
            unselectedFontSize: 10,
            selectedFontSize: 12,
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                this.currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance), title: Text("demo")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_photo_alternate), title: Text("list")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("hme")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("hoe")),
            ]));
  }
}

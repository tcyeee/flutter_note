import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/test/01.dart';
import 'package:fun_flutter_demo/test/02.dart';
import 'package:fun_flutter_demo/test/03.dart';
import 'package:fun_flutter_demo/test/04.dart';
import 'package:fun_flutter_demo/test/06.dart';
import 'package:fun_flutter_demo/test/07.dart';
import 'package:fun_flutter_demo/test/08.dart';
import 'package:fun_flutter_demo/test/09.dart';

main() => runApp(MyApp());

// 页面信息
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 这个参数用来去除右上角的'debug'横幅
        debugShowCheckedModeBanner: false,
        home:
            Scaffold(appBar: AppBar(title: Text('导航栏上的东西')), body: _getList()),
        theme: ThemeData(primarySwatch: Colors.cyan));
  }
}

Widget _getList() {
  return ListView(children: <Widget>[
    _addOne(CardDemo(), Colors.white, "08:卡片布局"),
    SizedBox(height: 300),
    _addOne(AspectDemo(), Colors.red[100], "07:固定比例"),
    _addOne(State1(), Colors.red[100], "06:绝对定位"),
    _addOne(ListSyn2(), Colors.yellow[100], "05:横纵混合布局"),
// 瀑布流布局(两个listView不可叠加)
// _addOne(GridView(), Colors.green[100], "04:list1"),
    _addOne(list1(), Colors.green[100], "04:list布局"),
    _addOne(test3(), Colors.red[100], "03:头像2"),
    _addOne(test2(), Colors.green[100], "02:头像"),
    _addOne(test1(), Colors.red[100], "01:文字属性"),
  ]);
}

// 添加画布
Widget _addOne(Widget content, Color color, String title) {
  return Column(
    children: <Widget>[
      // 标题
      Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.fromLTRB(0, 10, 0, 14),
          child: Text(title,
              style: TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.w300))),
      // 背景
      Container(width: double.maxFinite, color: color, child: content)
    ],
  );
}

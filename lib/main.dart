import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/test/4-list.dart';

main() => runApp(MyApp());

// 页面信息
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 这个参数用来去除右上角的'debug'横幅
        debugShowCheckedModeBanner: false,
        home: Scaffold(appBar: AppBar(title: Text('导航栏上的东西')), body: Mylist()),
        theme: ThemeData(primarySwatch: Colors.cyan));
  }
}

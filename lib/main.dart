import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/pages/demo/15.dart';
import 'package:fun_flutter_demo/router/router_app_bar.dart';

main() => runApp(MyApp());

// 页面信息
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // 去除右上角的'debug'横幅
        home: MyHomePage(),
        routes: {'/newPage': (context) => DemoSinglePage2()},
        theme: ThemeData(primarySwatch: Colors.cyan));
  }
}

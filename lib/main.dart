import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/router/router.dart';
import 'package:fun_flutter_demo/router/router_app_bar.dart';

main() => runApp(MyApp());

// 页面信息
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 去除右上角的'debug'横幅
        debugShowCheckedModeBanner: false,
        // 路由初始化时候的页面
        initialRoute: '/',
        onGenerateRoute: onGenerateRoute,
        theme: ThemeData(primarySwatch: Colors.cyan),
        // 这里可以删除,但是会报错(和老师的不一样)
        home: MyHomePage());
  }
}

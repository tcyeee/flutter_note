import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/pages/demo/15.dart';
import 'package:fun_flutter_demo/pages/demo/18.dart';
import 'package:fun_flutter_demo/router/router_app_bar.dart';

// 配置路由
final router = {
  '/': (context, {arguments}) => MyHomePage(),
  // 不带数据跳转
  '/toNewPageWithoutData': (context) => TagDemoSinglePage(),
  // 带数据跳转
  '/newPage': (context, {arguments}) => TagDemoSinglePage2(arguments: arguments),
};

// ignore: missing_return, top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = router[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
